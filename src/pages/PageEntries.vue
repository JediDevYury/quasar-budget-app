<template>
  <q-page>
    <div class="q-pa-md">
      <q-list bordered separator>
        <q-slide-item
          right-color="negative"
          left-color="positive"
          @left="onLeft"
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
import { ref, computed, reactive, toRefs } from 'vue';
import { useCurrencify } from 'src/use/useCurrencify';
import { useAmountColorClass } from 'src/use/useAmountColorClass';
import { uid, useQuasar } from 'quasar';
const $q = useQuasar();

type Entry = {
  id?: string;
  name: string;
  amount: number | null;
};

const entries = ref<{ id: string; name: string; amount: number }[]>([
  { id: 'id1', name: 'Salary', amount: 4999.99 },
  { id: 'id2', name: 'Rent', amount: -999 },
  { id: 'id3', name: 'Phone', amount: -14.99 },
  { id: 'id4', name: 'Unknown', amount: 0 },
]);

const balance = computed(() => {
  return entries.value.reduce((acc, { amount }) => acc + amount, 0);
});

//add entry

const nameRef = ref<HTMLInputElement | null>(null);

const defaultAddEntryForm = {
  name: '',
  amount: null,
};

const addEntryForm = reactive<Entry>({ ...defaultAddEntryForm });

// lesson 4: remember to use toRefs to avoid reactivity issues when destructuring the object
const { name, amount } = toRefs(addEntryForm);

const clearAddEntryForm = () => {
  Object.assign(addEntryForm, defaultAddEntryForm);
  nameRef.value?.focus();
};

const addEntry = () => {
  const newEntry = Object.assign({}, addEntryForm, { id: uid(), amount: amount.value ?? 0 });

  entries.value.push(newEntry);
  clearAddEntryForm();
};

const deleteEntry = ({id, name}: Entry) => {
  const itemIndex = entries.value.findIndex((entry) => entry.id === id);

  entries.value.splice(itemIndex, 1);
  $q.notify({
    message: `Item ${name} was successfully deleted`,
    color: 'positive',
    icon: 'delete',
    position: 'top',
  });
};

function onLeft() {
  console.log('onLeft');
}

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
      deleteEntry(entry);
    })
    .onCancel(() => {
      reset();
    });
}
</script>
