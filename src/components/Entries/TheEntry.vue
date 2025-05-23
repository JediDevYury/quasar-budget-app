<template>
  <q-slide-item
    @left="onEntrySlideLeft"
    @right="onEntrySlideRight"
    left-color="positive"
    right-color="negative"
    :id="`id-${entry.id}`"
    :class="
      !entry.paid
        ? useLightOrDark('bg-white', 'bg-black')
        : useLightOrDark('bg-grey-2', 'bg-grey-10')
    "
  >
    <template v-slot:left>
      <q-icon name="done" />
    </template>
    <template v-slot:right>
      <q-icon name="delete" />
    </template>

    <q-item class="row">
      <q-item-section
        class="text-weight-bold col"
        :class="[useAmountColorClass(entry.amount), { 'text-strike': entry.paid }]"
      >
        {{ entry.name }}
        <q-popup-edit
          @save="onNameUpdate"
          :model-value="entry.name"
          v-slot="scope"
          :cover="false"
          :offset="[16, 12]"
          anchor="top left"
          label-set="Ok"
          auto-save
          buttons
        >
          <q-input
            v-model="scope.value"
            @keyup.enter="scope.set"
            input-class="text-weight-bold letter-spacing-none"
            v-select-all
            v-autofocus
            dense
          />
        </q-popup-edit>
      </q-item-section>

      <q-item-section
        class="text-weight-bold relative-position col"
        :class="[useAmountColorClass(entry.amount)]"
        side
      >
        <span :class="{ 'text-strike': entry.paid }">
          {{ useCurrencify(entry.amount) }}
        </span>
        <q-popup-edit
          @save="onAmountUpdate"
          :model-value="entry.amount"
          :validate="(val) => typeof val === 'number'"
          v-slot="scope"
          :cover="false"
          :offset="[16, 12]"
          anchor="top right"
          self="top right"
          label-set="Ok"
          auto-save
          buttons
        >
          <q-input
            v-model.number="scope.value"
            @keyup.enter="scope.set"
            :rules="[(val) => typeof val === 'number' || 'Enter a valid number']"
            input-class="text-weight-bold letter-spacing-none text-right"
            type="number"
            step="0.01"
            v-select-all
            v-autofocus
            dense
          />
        </q-popup-edit>
        <q-chip
          v-if="storeSettings.settings.showRunningBalance"
          :class="useAmountColorClass(entriesStore.runningBalances[index] ?? 0)"
          class="running-balance absolute-bottom-right"
          size="9px"
          outline
          dense
        >
          {{ useCurrencify(entriesStore.runningBalances[index] ?? 0) }}
        </q-chip>
      </q-item-section>

      <q-item-section v-if="entriesStore.options.sort" side>
        <q-icon class="handle" name="reorder" color="primary" />
      </q-item-section>
    </q-item>
  </q-slide-item>
</template>

<script setup lang="ts">
/*
    imports
  */

import { Dialog } from '@capacitor/dialog';
import { useQuasar } from 'quasar';
import { useEntriesStore } from 'stores/entries-store';
import { useSettingsStore } from 'src/stores/settings-store';
import { useCurrencify } from 'src/use/useCurrencify';
import { useAmountColorClass } from 'src/use/useAmountColorClass';
import { useLightOrDark } from 'src/use/useLightOrDark';
import vSelectAll from 'src/directives/selectAll';
import vAutofocus from 'src/directives/autofocus';
import type {Entry} from 'stores/entries-store';

/*
    stores
  */

const entriesStore = useEntriesStore();
const storeSettings = useSettingsStore();

/*
    props
  */

const props = defineProps<{
  entry: Entry,
  index: number;
}>();

/*
    quasar
  */

const $q = useQuasar();

/*
    slide items
  */

const onEntrySlideLeft = async ({ reset }: {
  reset: () => void;
}) => {
  await entriesStore.updateEntry(props.entry.id, { paid: !props.entry.paid });
  reset();
};

const onEntrySlideRight = async ({ reset }: {
  reset: () => void;
}) => {
  if (storeSettings.settings.promptToDelete) {
    await promptToDelete(reset);
  }
  else {
    await entriesStore.deleteEntry(props.entry.id);
  }
};

// Delete Entry
const promptToDelete = async (reset: () => void) => {
  const entryDetails = `${props.entry.name} : ${useCurrencify(props.entry.amount)}`;
  const title = 'Delete Entry';
  const messageStart = 'Delete this Entry?';
  const message = $q.platform.is.capacitor
    ? `${messageStart}\n\n${entryDetails}`
    : `${messageStart}<div class="q-mt-md text-weight-bold ${useAmountColorClass(props.entry.amount)}">${entryDetails}</div>`;
  const okButtonTitle = 'Delete';

  if ($q.platform.is.capacitor) {
    const { value } = await Dialog.confirm({
      title,
      message,
      okButtonTitle,
    });
    if (value) {
      await entriesStore.deleteEntry(props.entry.id);
    }
    else reset();
  } else {
    $q.dialog({
      title,
      message,
      persistent: true,
      html: true,
      ok: {
        label: okButtonTitle,
        color: 'negative',
        noCaps: true,
      },
      cancel: {
        color: 'primary',
        noCaps: true,
      },
    })
      .onOk( () => {
        // eslint-disable-next-line @typescript-eslint/no-floating-promises
        entriesStore.deleteEntry(props.entry.id);
      })
      .onCancel(() => {
        reset();
      });
  }
};

/*
    name & amount update
  */

const onNameUpdate = async (value: string) => {
  await entriesStore.updateEntry(props.entry.id, { name: value });
};

const onAmountUpdate = async (value: number) => {
  await entriesStore.updateEntry(props.entry.id, { amount: value });
};
</script>
