<template>
  <q-layout view="hHh lpR lFf">
    <q-header elevated>
      <q-toolbar>
        <q-btn flat dense round icon="menu" aria-label="Menu" @click="toggleLeftDrawer" />

        <ToolbarTitle />
        <q-btn
          v-if="$route.fullPath === '/'"
          @click="entriesStore.options.sort = !entriesStore.options.sort"
          :label="!entriesStore.options.sort ? 'Sort' : 'Done'"
          flat
          no-caps
          dense
        />
      </q-toolbar>
    </q-header>

    <q-drawer
      :width="250"
      :breakpoint="767"
      class="bg-primary"
      v-model="leftDrawerOpen"
      show-if-above
      bordered
    >
      <q-list>
        <q-item-label class="text-white" header> Navigation </q-item-label>

        <NavLink v-for="link in navLinks" :key="link.title" v-bind="link" />
        <q-separator spaced />

        <q-item to="/auth" @click="authStore.logout()" clickable class="text-white" tag="a">
          <q-item-section avatar>
            <q-icon name="logout" />
          </q-item-section>
          <q-item-section>
            <q-item-label>Log out</q-item-label>
            <q-item-label v-if="authStore.userDetails.email" class="text-white" caption>{{
              authStore.userDetails.email
            }}</q-item-label>
          </q-item-section>
        </q-item>
      </q-list>
    </q-drawer>

    <q-page-container>
      <router-view />
    </q-page-container>
  </q-layout>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import NavLink, { type NavLinkProps } from 'components/Nav/NavLink.vue';
import ToolbarTitle from 'components/Layout/ToolbarTitle.vue';
import { useAuthStore } from 'stores/auth-store';
import { useEntriesStore} from 'stores/entries-store';

const authStore = useAuthStore();
const entriesStore = useEntriesStore();

const navLinks: NavLinkProps[] = [
  {
    title: 'Entries',
    icon: 'savings',
    link: '/',
  },
  {
    title: 'Settings',
    icon: 'settings',
    link: '/settings',
  },
];

const leftDrawerOpen = ref(false);

function toggleLeftDrawer() {
  leftDrawerOpen.value = !leftDrawerOpen.value;
}
</script>
