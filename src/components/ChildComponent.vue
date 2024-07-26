<template>
  <div>
    <h2>Child</h2>
    <button @click="showsubChild = !showsubChild">Toggle SubChild</button>
    <SubChild v-if="showsubChild" />
  </div>
</template>

<script>
import SubChild from './SubChild.vue';

export default {
  name: 'ChildComponent',
  data() {
    return {
      showsubChild: true
    };
  },
  components: {
    SubChild
  },
  created() {
    console.log('Child component created');
  },
  mounted() {
    console.log('Child component mounted');
  },
  updated() {
    console.log('Child component updated');
  },
  beforeUnmount() {
    console.log('Child component beforeUnmount');
  },
  unmounted() {
    console.log('Child component destroyed');
  }
};
</script>

<style scoped>
/* Add component-specific styles here */
</style>
