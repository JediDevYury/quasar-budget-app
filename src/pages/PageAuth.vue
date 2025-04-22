<template>
  <q-page class="flex justify-center items-center">
    <q-card class="auth bg-primary text-white q-pa-lg">
      <q-card-section>
        <ToolbarTitle />
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
import { ref, computed, reactive } from 'vue';
import { useQuasar } from 'quasar';
import { useAuthStore } from 'stores/auth-store';

// Stores
const authStore = useAuthStore();

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
