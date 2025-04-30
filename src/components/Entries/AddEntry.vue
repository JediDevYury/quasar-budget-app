<template>
  <q-form
    @submit="addEntryFormSubmit"
    class="add-entry-form row q-px-sm q-pb-sm q-col-gutter-sm bg-primary"
  >
    <div class="col">
      <q-input
        v-model="addEntryForm.name"
        ref="nameRef"
        placeholder="Name"
        :bg-color="useLightOrDark('white', 'black')"
        v-select-all
        outlined
        dense
      />
    </div>
    <div class="col">
      <q-input
        v-model.number="addEntryForm.amount"
        :rules="[(val) => typeof val === 'number' || val === null || 'Enter a valid number']"
        input-class="text-right"
        placeholder="Amount"
        :bg-color="useLightOrDark('white', 'black')"
        type="number"
        step="0.01"
        v-select-all
        outlined
        dense
      />
    </div>
    <div class="col col-auto">
      <q-btn color="primary" icon="add" type="submit" round />
    </div>
  </q-form>
</template>

<script setup lang="ts">
/*
    imports
  */

import { ref, reactive } from 'vue';
import { useQuasar } from 'quasar';
import { useEntriesStore } from 'stores/entries-store';
import { useLightOrDark } from 'src/use/useLightOrDark';
import vSelectAll from 'src/directives/selectAll';

/*
    quasar
  */

const $q = useQuasar();

/*
    stores
  */

const entriesStore = useEntriesStore();

/*
    add entry
  */

const nameRef = ref<HTMLInputElement | null>(null);

const addEntryFormDefault = {
  name: '',
  amount: null,
  paid: false,
};

const addEntryForm = reactive({
  ...addEntryFormDefault,
});

const addEntryFormReset = () => {
  Object.assign(addEntryForm, addEntryFormDefault);
  if (!$q.platform.is.capacitor) {
    nameRef.value?.focus();
  }
};

const addEntryFormSubmit = () => {

  entriesStore.addEntry(addEntryForm);
  addEntryFormReset();
};
</script>
