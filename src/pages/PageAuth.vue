<template>
  <q-page class="flex flex-center">
    <q-card class="bg-primary text-white q-pa-md card">
      <q-card-section>
        <ToolbarTitle />
      </q-card-section>
      <q-card-section class="q-pb-none">
        <q-banner :class="{ 'fade-in': entriesCount }" class="banner bg-primary text-white text-center text-italic ">
          <div>Over {{entriesCount}} Entries have been</div>
          <div>created with Budget App</div>
        </q-banner>
      </q-card-section>
      <q-card-section>
        <q-tabs v-model="tab" no-caps>
          <q-tab name="login" label="Login" />
          <q-tab name="register" label="Register" />
        </q-tabs>
      </q-card-section>
      <q-card-section>
        <q-form @submit="handleSubmit">
          <q-input
            class="q-mb-md"
            bg-color="white"
            label="Email"
            type="email"
            filled
            v-model="credentials.email"
            autocomplete="email"
          />
          <q-input
            class="q-mb-md"
            bg-color="white"
            label="Password"
            type="password"
            filled
            v-model="credentials.password"
            autocomplete="current-password"
          />
          <q-btn
            type="submit"
            class="full-width"
            :label="submitButtonTitle"
            color="white"
            outline
            no-caps
          />
        </q-form>
      </q-card-section>
    </q-card>
  </q-page>
</template>

<script setup lang="ts">
import ToolbarTitle from 'components/Layout/ToolbarTitle.vue';
import { ref, computed, reactive, onMounted } from 'vue';
import { useQuasar } from 'quasar';
import { useAuthStore } from 'stores/auth-store';
import supabase from 'src/config/supabase';
import {useShowErrorMessage} from 'src/use/useShowErrorMessage';

// Stores
const authStore = useAuthStore();
const showErrorMessage = useShowErrorMessage();
// refs
const entriesCount = ref(0);

// life cycle

onMounted(async () => {
  const { data, error } = await supabase
    .from('stats')
    .select("*")

    // Filters
    .eq('name', 'entries_count')

  if (error) {
    showErrorMessage(error.message, "getStats")
    return
  }
  if(data) {
    entriesCount.value = data[0]!.value
  }
})

// UI
const tab = ref('login');
const $q = useQuasar();
const submitButtonTitle = computed(() => {
  return tab.value === 'login' ? 'Login' : 'Register';
});

const credentials = reactive({
  email: '',
  password: '',
});

const formSubmitSuccess = async () => {
  try {
    if (tab.value === 'login') {
      await authStore.login(credentials);
    } else {
      await authStore.register(credentials);
    }
  } catch (error) {
    console.log(error);
  }
};

const handleSubmit = async () => {
  if (!credentials.email || !credentials.password) {
    $q.dialog({
      title: 'Error',
      message: 'Please enter an email and password',
    });
  } else {
    await formSubmitSuccess();
  }
};
</script>

<style scoped>
.card {
  min-width: 300px;
}
.banner {
  border: 1px solid #fff;
  border-radius: 60px;
  opacity: 0;
}
.fade-in {
  animation: fadeIn 2s;
  animation-fill-mode: forwards;
  opacity: 1;
}
</style>
