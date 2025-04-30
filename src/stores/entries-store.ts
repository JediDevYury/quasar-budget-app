import { defineStore } from 'pinia'
import { ref, computed, reactive, nextTick } from 'vue'
import { uid, Notify } from 'quasar'
import supabase from 'src/config/supabase';
import { useShowErrorMessage } from 'src/use/useShowErrorMessage';
import { REALTIME_POSTGRES_CHANGES_LISTEN_EVENT } from '@supabase/supabase-js'

interface Entry {
  id: string;
  name: string;
  amount: number;
  paid: boolean;
}

export interface AddEntryForm {
  name: string;
  amount: number | null;
  paid: boolean;
}

export const useEntriesStore = defineStore('entries', () => {
  /*
    state
  */
  const showErrorMessage = useShowErrorMessage()
  const entries = ref<Entry[]>([]);
  const entriesLoaded = ref(false);
  const options = reactive({
    sort: false
  })

  /*
    getters
  */

  const balance = computed(() => {
    return entries.value.reduce((accumulator, { amount }) => {
      return accumulator + amount
    }, 0)
  })

  const balancePaid = computed(() => {
    return entries.value.reduce((accumulator, { amount, paid }) => {
      return paid ? accumulator + amount : accumulator
    }, 0)
  })

  const runningBalances = computed(() => {
    const runningBalances: number[] = []
    let currentRunningBalance = 0

    if (entries.value.length) {
      entries.value.forEach(entry => {
        const entryAmount = entry.amount ? entry.amount : 0
        currentRunningBalance = currentRunningBalance + entryAmount
        runningBalances.push(currentRunningBalance)
      })
    }

    return runningBalances
  })

  /*
    actions
  */

  const addEntry = (addEntryForm: AddEntryForm) => {
    const newEntry = Object.assign({}, addEntryForm, { id: uid(), paid: false })
    if (newEntry.amount === null) newEntry.amount = 0
    entries.value.push(newEntry as Entry)
  }

  const deleteEntry = (entryId: string) => {
    const index = getEntryIndexById(entryId)
    entries.value.splice(index, 1)
    removeSlideItemIfExists(entryId)
    Notify.create({
      message: 'Entry deleted',
      position: 'top'
    })
  }

  const updateEntry = (entryId: string, updates: Partial<Entry>) => {
    const index = getEntryIndexById(entryId)
    const entry = entries.value[index] ?? {};
    Object.assign(entry, updates);
  }

  const sortEnd = ({ oldIndex, newIndex }: {
    oldIndex: number;
    newIndex: number;
  }) => {
    const movedEntry = entries.value[oldIndex]
    entries.value.splice(oldIndex, 1)

    if(movedEntry) {
      entries.value.splice(newIndex, 0, movedEntry)
    }
  }

  const saveEntries = () => {
    console.log("save entries");
  }

  const subscribeToEntries = () => {
    supabase.channel('entries-channel')
      .on(
        'postgres_changes',
        { event: '*', schema: 'public', table: 'entries' },
        (payload) => {
          switch (payload.eventType) {
            case REALTIME_POSTGRES_CHANGES_LISTEN_EVENT.INSERT: {
              entries.value.push(payload.new as Entry)
              break;
            }
            case REALTIME_POSTGRES_CHANGES_LISTEN_EVENT.DELETE: {
              const index = getEntryIndexById(payload.old.id)

              entries.value.splice(index, 1)
              break;
            }

            case REALTIME_POSTGRES_CHANGES_LISTEN_EVENT.UPDATE: {
              const index = getEntryIndexById(payload.new.id)

              if(entries.value[index]) {
                Object.assign(entries.value[index], payload.new)
              }
              break
            }

            default: return
          }
        }
      )
      .subscribe()
  }

  const loadEntries = async () => {
    const {data, error} = await supabase
      .from('entries')
      .select('*')
    if(data) {
      await new Promise(resolve => setTimeout(resolve, 2000))
      entriesLoaded.value = true
      entries.value = data
      subscribeToEntries()
    }
    if(error) showErrorMessage(error.message, "entities")
    return data;
  }

  /*
    helpers
  */

  const getEntryIndexById = (entryId: string): number => {
    return entries.value.findIndex((entry) => entry.id === entryId);
  };

  const removeSlideItemIfExists = (entryId: string) => {
    void nextTick(() => {
      const slideItem = document.querySelector(`#id-${entryId}`);
      if (slideItem) slideItem.remove();
    });
  };

  /*
    return
  */

  return {
    // state
    entries,
    options,
    entriesLoaded,

    // getters
    balance,
    balancePaid,
    runningBalances,

    // actions
    addEntry,
    deleteEntry,
    updateEntry,
    loadEntries,
    sortEnd,
    saveEntries,
  };
});

export type { Entry };
