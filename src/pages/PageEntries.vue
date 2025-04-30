<template>
  <q-page>
    <div class="q-pa-md">
        <transition
          appear
          enter-active-class="animated jackInTheBox slower"
        >
          <NothingHere
            v-if="entriesStore.entriesLoaded && !entriesStore.entries.length"
          />
        </transition>

        <template v-if="entriesStore.entriesLoaded">
          <q-list
            v-if="entriesStore.entries.length"
            class="entries"
          >

            <Sortable
              @end="entriesStore.sortEnd"
              :list="entriesStore.entries"
              :options="{ handle: '.handle' }"
              item-key="id"
              tag="div"
            >
              <template #item="{element, index}">
                <TheEntry
                  :key="element.id"
                  :entry="element"
                  :index="index"
                />
              </template>
            </Sortable>

          </q-list>
        </template>
        <template v-else>
          <div class="window-height flex flex-center">
            <q-spinner-gears size="50px" color="primary" />
          </div>
        </template>
    </div>

    <q-footer
      class="bg-transparent"
    >
      <transition
        appear
        enter-active-class="animated fadeInUp"
        leave-active-class="animated fadeOutDown"
      >
        <Balance v-if="entriesStore.entries.length" />
      </transition>
      <AddEntry />
    </q-footer>
  </q-page>
</template>

<script setup lang="ts">

/*
  imports
*/

import { useEntriesStore } from 'stores/entries-store.js'
import Balance from 'components/Entries/TheBalance.vue'
import AddEntry from 'components/Entries/AddEntry.vue'
import TheEntry from 'components/Entries/TheEntry.vue'
import NothingHere from 'src/components/Entries/NothingHere.vue'
import { Sortable } from 'sortablejs-vue3'


/*
  stores
*/

const entriesStore = useEntriesStore()

</script>
