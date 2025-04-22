<template>
  <q-layout view="hHh lpR lFf">
    <q-header elevated>
      <q-toolbar>
        <q-btn flat dense round icon="menu" aria-label="Menu" @click="toggleLeftDrawer" />

        <q-toolbar-title class="absolute-center">
          <q-icon name="account_balance" />
          Money App
        </q-toolbar-title>

        <div>Quasar v{{ $q.version }}</div>
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
