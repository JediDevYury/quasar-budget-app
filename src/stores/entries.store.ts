import { defineStore } from 'pinia';
import { ref, computed, nextTick } from 'vue';
import { uid, Notify, LocalStorage } from 'quasar';

interface Entry {
  id: string;
  name: string;
  amount: number;
}

interface AddEntryForm {
  name: string;
  amount: number | null;
}

export const useEntriesStore = defineStore('entries', () => {
  /*
    state
  */

  const entries = ref<Entry[]>([]);

  /*
    getters
  */

  const balance = computed(() => {
    return entries.value.reduce((accumulator, { amount }) => {
      return accumulator + amount;
    }, 0);
  });

  /*
    actions
  */

  const addEntry = (addEntryForm: AddEntryForm) => {
    const newEntry: Entry = {
      ...addEntryForm,
      id: uid(),
      name: addEntryForm.name ?? '',
      amount: addEntryForm.amount ?? 0,
    };
    entries.value.push(newEntry);
    saveEntries()
  };

  const deleteEntry = (entryId: string, name: string) => {
    const index = getEntryIndexById(entryId);
    entries.value.splice(index, 1);
    removeSlideItemIfExists(entryId);
    Notify.create({
      message: `Item ${name} was successfully deleted`,
      color: 'positive',
      icon: 'delete',
      position: 'top',
    });
    saveEntries()
  };

  const updateEntry = (entryId: string, updates: Partial<Entry>) => {
    const index = getEntryIndexById(entryId);
    if (index !== -1 && entries.value[index]) {
      Object.assign(entries.value[index], updates);
    }
  };

  const saveEntries = () => {
    LocalStorage.set('entries', entries.value);
  };

  const loadEntries = () => {
    const savedEntries = LocalStorage.getItem<Entry[]>('entries');
    if (savedEntries) {
      entries.value = [...savedEntries];
    }
  };

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

    // getters
    balance,

    // actions
    addEntry,
    deleteEntry,
    updateEntry,
    loadEntries,
  };
});

export type { Entry };
