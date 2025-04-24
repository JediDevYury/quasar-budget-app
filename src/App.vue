<template>
  <router-view />
</template>

<script setup lang="ts">
import { useAuthStore } from 'src/stores/auth-store';
import { useEntriesStore } from 'src/stores/entries.store';
import { onMounted } from 'vue';
const authStore = useAuthStore();
const entriesStore = useEntriesStore();

onMounted(() => {
  authStore.init();
  entriesStore.loadEntries();
});
</script>
