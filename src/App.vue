<template>
  <router-view />
</template>

<script setup lang="ts">
import { useAuthStore } from 'stores/auth-store';
import { useSettingsStore} from 'stores/settings-store';

import { onMounted } from 'vue';

const authStore = useAuthStore();
const storeSettings = useSettingsStore();

onMounted(() => {
  authStore.init();
  storeSettings.loadSettings()
});

</script>
