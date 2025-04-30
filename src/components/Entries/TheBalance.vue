<template>
  <div
    class="row q-mb-sm q-px-md q-py-sm items-center"
    :class="useLightOrDark('bg-white shadow-up-3', 'bg-black')"
  >
    <div class="col text-grey-7 text-h6">Balance:</div>
    <div :class="useAmountColorClass(entriesStore.balance)" class="col text-h6 text-right">
      <div class="row">
        <div class="col">
          {{ useCurrencify(entriesStore.balance) }}
        </div>
      </div>

      <div v-if="entriesStore.balancePaid" class="row">
        <div class="col text-caption text-grey-6">
          Paid:
          <span class="text-weight-bold" :class="useAmountColorClass(entriesStore.balancePaid)">
            {{ useCurrencify(entriesStore.balancePaid) }}
          </span>
        </div>
      </div>
    </div>
  </div>
</template>

<script setup lang="ts">
/*
    imports
  */

import { useEntriesStore } from 'stores/entries-store';
import { useCurrencify } from 'src/use/useCurrencify';
import { useAmountColorClass } from 'src/use/useAmountColorClass';
import { useLightOrDark } from 'src/use/useLightOrDark';

/*
    stores
  */

const entriesStore = useEntriesStore();
</script>
