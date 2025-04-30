<template>
  <router-view />
</template>

<script setup lang="ts">
import { useAuthStore } from 'stores/auth-store';
import { useEntriesStore } from 'stores/entries-store';
import { useSettingsStore} from 'stores/settings-store';

import { onMounted } from 'vue';

const authStore = useAuthStore();
const entriesStore = useEntriesStore();
const storeSettings = useSettingsStore();

onMounted(() => {
  authStore.init();
  entriesStore.loadEntries();
  storeSettings.loadSettings()
});

</script>
