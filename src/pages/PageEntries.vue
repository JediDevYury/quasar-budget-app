<template>
  <q-page>
    <div class="q-pa-md">
      <q-list bordered separator>
        <q-slide-item
          right-color="negative"
          @right="onSlideRight($event, entry)"
          v-for="entry in entries"
          :key="entry.id"
        >
          <template v-slot:left>
            <q-icon name="done" />
          </template>
          <template v-slot:right>
            <q-icon name="delete" />
          </template>
          <q-item>
            <q-item-section class="text-weight-bold" :class="useAmountColorClass(entry.amount)">
              {{ entry.name }}
            </q-item-section>

            <q-item-section
              class="text-weight-bold"
              :class="useAmountColorClass(entry.amount)"
              side
            >
              {{ useCurrencify(entry.amount) }}
            </q-item-section>
          </q-item>
        </q-slide-item>
      </q-list>
    </div>
    <q-footer class="bg-transparent">
      <div class="row q-mb-sm q-px-md q-py-sm text-primary shadow-up-3">
        <div class="col text-h6">
          <span>Balance</span>
        </div>
        <div class="col text-h6 text-right" :class="useAmountColorClass(balance)">
          {{ useCurrencify(balance) }}
        </div>
      </div>
      <q-form @submit="addEntry" class="row q-px-sm q-pb-sm q-col-gutter-sm">
        <div class="col">
          <q-input
            ref="nameRef"
            v-model="name"
            bg-color="white"
            placeholder="Name"
            outlined
            dense
          />
        </div>
        <div class="col">
          <q-input
            v-model.number="amount"
            input-class="text-right"
            bg-color="white"
            placeholder="Amount"
            outlined
            dense
            step="0.01"
            type="number"
          />
        </div>
        <div class="col col-auto">
          <q-btn type="submit" icon="add" color="primary" round />
        </div>
      </q-form>
    </q-footer>
  </q-page>
</template>

<script setup lang="ts">
import { useEntriesStore } from 'src/stores/entries.store';
import { storeToRefs } from 'pinia';
import { useCurrencify } from 'src/use/useCurrencify';
import { useAmountColorClass } from 'src/use/useAmountColorClass';
import { uid, useQuasar } from 'quasar';
import type { Entry } from 'src/stores/entries.store';
import { ref, reactive, toRefs } from 'vue';
const storeEntries = useEntriesStore();
const $q = useQuasar();

const { entries, balance } = storeToRefs(storeEntries);

//add entry

const nameRef = ref<HTMLInputElement | null>(null);

const defaultAddEntryForm: Omit<Entry, "id"> = {
  name: '',
  amount: 0,
};

const addEntryForm = reactive<Omit<Entry, "id">>({ ...defaultAddEntryForm });

// lesson 4: remember to use toRefs to avoid reactivity issues when destructuring the object
const { name, amount } = toRefs(addEntryForm);

const clearAddEntryForm = () => {
  Object.assign(addEntryForm, defaultAddEntryForm);
  nameRef.value?.focus();
};

const addEntry = () => {
  const newEntry = Object.assign({}, addEntryForm, { id: uid(), amount: amount.value ?? 0 });

  storeEntries.addEntry(newEntry);
  clearAddEntryForm();
};

function onSlideRight({ reset }: { reset: () => void }, entry: Entry) {
  $q.dialog({
    title: 'Delete Entry',
    message: `
      Are you sure you want to delete this entry?
      <div class="q-mt-md text-weight-bold ${useAmountColorClass(entry.amount ?? 0)}">
        ${entry.name} ${useCurrencify(entry?.amount ?? 0)}
      <div>
    `,
    persistent: true,
    html: true,
    ok: {
      label: 'Delete',
      color: 'positive',
      noCaps: true,
    },
    cancel: {
      label: 'Cancel',
      color: 'negative',
      noCaps: true,
    },
  })
    .onOk(() => {
      if (!entry) return;
      storeEntries.deleteEntry(entry.id, entry.name);
    })
    .onCancel(() => {
      reset();
    });
}
</script>
