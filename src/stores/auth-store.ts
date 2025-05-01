import { defineStore } from 'pinia';
import { reactive } from 'vue'; // Import ref for reactive state
import supabase from 'src/config/supabase';
import { useShowErrorMessage } from 'src/use/useShowErrorMessage';
import { useRouter } from 'vue-router';
import {useEntriesStore} from 'stores/entries-store';

// Interfaces remain the same
export interface User {
  email: string;
  password: string;
}
export interface UserDetails {
  id: string | null;
  email: string | null;
}

export enum AuthEvent {
  INITIAL_SESSION = 'INITIAL_SESSION',
  SIGNED_IN = 'SIGNED_IN',
  SIGNED_OUT = 'SIGNED_OUT',
}

// Keep the composable usage (can be inside or outside the defineStore scope)
const showErrorMessage = useShowErrorMessage();

// Define the default state structure clearly
const defaultUserDetails: UserDetails = {
  id: null,
  email: null,
};

export const useAuthStore = defineStore('auth', () => {
  // --- State ---
  // Use ref() for reactive state properties in setup stores
  const userDetails = reactive<UserDetails>({ ...defaultUserDetails }); // Use spread for a clean copy
  // --- Actions ---
  const router = useRouter();
  const { loadEntries, clearEntries, unsubscribeFromEntries } = useEntriesStore();
  // Define actions as regular functions within the setup scope
  function init() {
    supabase.auth.onAuthStateChange((event, session) => {
      switch (event) {
        case AuthEvent.INITIAL_SESSION:
        case AuthEvent.SIGNED_IN:
          if (session) {
            userDetails.id = session.user.id;
            userDetails.email = session.user.email ?? null;
            void router.push('/');
            // eslint-disable-next-line @typescript-eslint/no-floating-promises
            loadEntries();
          }
          break;

        case AuthEvent.SIGNED_OUT:
          Object.assign(userDetails, defaultUserDetails);
          void router.replace('/auth');
          // eslint-disable-next-line @typescript-eslint/no-floating-promises
          unsubscribeFromEntries()
          break;
      }
    });
  }

  async function register({ email, password }: User) {
    // No need to modify userDetails here; onAuthStateChange will handle it
    const { data, error } = await supabase.auth.signUp({
      email,
      password,
    });

    if (error) {
      showErrorMessage(error.message, 'register');
      throw error; // Re-throw the error so the caller can handle it if needed
    }

    // The 'SIGNED_IN' event from onAuthStateChange should update the state
    return data;
  }

  async function logout() {
    // No need to modify userDetails here; onAuthStateChange will handle it
    const { error } = await supabase.auth.signOut();

    if (error) {
      showErrorMessage(error.message, 'logout');
      throw error;
    } else {
      clearEntries()
    }
    // The 'SIGNED_OUT' event from onAuthStateChange should update the state
  }

  async function login(credentials: User) {
    // No need to modify userDetails here; onAuthStateChange will handle it
    const { data, error } = await supabase.auth.signInWithPassword({
      email: credentials.email,
      password: credentials.password,
    });

    if (error) {
      showErrorMessage(error.message, 'login');
      throw error;
    }

    // The 'SIGNED_IN' event from onAuthStateChange should update the state
    return data;
  }

  //getters
  const getUserId = () => {
    console.log(
      'userDetails.id', userDetails.id, 'userDetails.email', userDetails.email);
    return userDetails.id ?? '';
  }

  // --- Return Exposed State and Actions ---
  // Return the state refs and action functions you want to use outside the store
  return {
    // State
    userDetails,

    // Actions
    init,
    register,
    logout,
    login,
    // Getters
    getUserId,
  };
});
