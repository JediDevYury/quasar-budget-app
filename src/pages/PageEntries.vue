<template>
  <q-page>
    <div class="q-pa-md">
      <q-list bordered separator>
        <q-item v-for="entry in entries" :key="entry.id">
          <q-item-section class="text-weight-bold" :class="useAmountColorClass(entry.amount)">
            {{ entry.name }}
          </q-item-section>

          <q-item-section class="text-weight-bold" :class="useAmountColorClass(entry.amount)" side>
            {{ useCurrencify(entry.amount) }}
          </q-item-section>
        </q-item>
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
      <div class="row q-px-sm q-pb-sm q-col-gutter-sm">
        <div class="col">
          <q-input v-model="name" bg-color="white" placeholder="Name" outlined dense />
        </div>
        <div class="col">
          <q-input
            v-model="amount"
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
          <q-btn icon="add" color="primary" round />
        </div>
      </div>
    </q-footer>
  </q-page>
</template>

<script setup lang="ts">
import { ref, computed } from 'vue';
import { useCurrencify } from 'src/use/useCurrencify';
import { useAmountColorClass } from 'src/use/useAmountColorClass';

const name = ref('');
const amount = ref(0);

const entries = ref([
  { id: 'id1', name: 'Salary', amount: 4999.99 },
  { id: 'id2', name: 'Rent', amount: -999 },
  { id: 'id3', name: 'Phone', amount: -14.99 },
  { id: 'id4', name: 'Unknown', amount: 0 },
]);

const balance = computed(() => {
  return entries.value.reduce((acc, { amount }) => acc + amount, 0);
});
</script>
