<template>
  <q-btn
    data-cy="button"
    :label="count"
    rounded
    :color="color"
    icon="edit"
    @click="() => {
      count++
      $emit('test', count)
    }"
  />
</template>

<script setup lang="ts">
import {ref, defineEmits, defineProps, withDefaults} from 'vue';

defineEmits([
  'test',
])

withDefaults(defineProps<{
  color: string
}>(), {
  color: 'positive',
})
const count = ref(0)
</script>
