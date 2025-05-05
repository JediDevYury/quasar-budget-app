import { defineStore } from 'pinia'
import { ref, computed, reactive, nextTick, toValue } from 'vue';
import { Notify } from 'quasar'
import supabase from 'src/config/supabase';
import { useShowErrorMessage } from 'src/use/useShowErrorMessage';
import { REALTIME_POSTGRES_CHANGES_LISTEN_EVENT, type RealtimeChannel } from '@supabase/supabase-js'
import type {Database} from 'app/database.types';
import { useAuthStore } from 'stores/auth-store';

const USER_MUST_LOG_IN_MESSAGE = "You must be logged in to add entries"
let realtimeEntriesChannel: RealtimeChannel;

export interface Entry {
  id: string;
  name: string;
  amount: number;
  paid: boolean;
  order: number;
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
  const authStore = useAuthStore()
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

  // const updateEntriesCount = async () => {
  //   const { error } = await supabase.rpc('increment_entries')
  //
  //   if(error) {
  //     showErrorMessage(error.message, "updateEntriesCount")
  //     return
  //   }
  //
  //   Notify.create({
  //     message: 'Entries count successfully updated',
  //     position: 'top',
  //     color: 'positive'
  //   })
  // }

  const addEntry = async (addEntryForm: AddEntryForm) => {
    if(!authStore.getUserId()) {
      showErrorMessage(USER_MUST_LOG_IN_MESSAGE, "addEntry")
      return
    }

    const newEntry = Object.assign({}, addEntryForm,
      { paid: false, order: generateOrderNumber(), user_id: authStore.getUserId() }
    )
    if (newEntry.amount === null) newEntry.amount = 0

    const { error } = await supabase
      .from('entries')
      .insert([
        newEntry as Database['public']['Tables']['entries']['Row']
      ])
      .select()

    if(error) {
      showErrorMessage(error.message, "addEntry")
      return
    }

    Notify.create({
      message: 'Entries successfully added',
      position: 'top',
      color: 'positive'
    })
  }

  const deleteEntry = async (entryId: string) => {
    const { error } = await supabase
      .from('entries')
      .delete()
      .eq('id', entryId)

    if(error) {
      showErrorMessage(error.message, "deleteEntry")
      return
    }
    removeSlideItemIfExists(entryId)
    Notify.create({
      message: 'Entries successfully deleted',
      position: 'top',
      color: 'positive'
    })
  }

  const updateEntry = async (entryId: string, updates: Partial<Entry>) => {
    const index = getEntryIndexById(entryId)
    const oldEntry = toValue(entries.value[index])
    Object.assign(entries.value[index] as Entry, updates)

    const { error } = await supabase
      .from('entries')
      .update(updates)
      .eq('id', entryId)
      .select()

    if(error) {
      showErrorMessage(error.message, "updateEntry")
      Object.assign(entries.value[index] as Entry, oldEntry)
      return
    }

    Notify.create({
      message: 'Entries successfully updated',
      position: 'top',
      color: 'positive'
    })
  }

  const getUpsertEntries = () => entries.value.map(({id, order, name}) => {
    return {
      name,
      id,
      order,
      user_id: authStore.getUserId(),
    }
  })

  const updateEntryOrderNumbers = async () => {
    let currentOrder: number = 1
    for (const entry of entries.value) {
      entry.order = currentOrder
      currentOrder++
    }

    const entriesUpsert = getUpsertEntries()

    const {error} = await supabase.from('entries').upsert(entriesUpsert).select()

    if(error) {
      showErrorMessage(error.message, "entriesUpsert")
    }
  }

  const sortEnd = async ({ oldIndex, newIndex }: {
    oldIndex: number;
    newIndex: number;
  }) => {
    const movedEntry = entries.value[oldIndex]
    entries.value.splice(oldIndex, 1)

    if(movedEntry) {
      entries.value.splice(newIndex, 0, movedEntry)
    }

    await updateEntryOrderNumbers()
  }

  const unsubscribeFromEntries = async () => {
    await supabase.removeChannel(realtimeEntriesChannel)
  }

  const subscribeToEntries = () => {
    realtimeEntriesChannel = supabase.channel('entries-channel')
      .on(
        'postgres_changes',
        {
          event: '*',
          schema: 'public',
          table: 'entries',
          filter: `user_id=eq.${authStore.getUserId()}`
        },
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
    if(!authStore.getUserId()) {
      showErrorMessage(USER_MUST_LOG_IN_MESSAGE, "loadEntries")
      return
    }

    const {data, error} = await supabase
      .from('entries')
      .select('*')
      .eq('user_id', authStore.getUserId())
      .order('order', {
        ascending: true,
      })

    if(data) {
      await new Promise(resolve => setTimeout(resolve, 2000))
      entriesLoaded.value = true
      entries.value = data
      subscribeToEntries()
    }
    if(error) showErrorMessage(error.message, "entities")
    return data;
  }

  const clearEntries = () => {
    entries.value = []
    entriesLoaded.value = false
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

  const generateOrderNumber = () => {
    return entries.value.reduce((max, entry) => (Math.max(entry.order, max)), 0) + 1
  }

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
    clearEntries,
    unsubscribeFromEntries
  };
});
