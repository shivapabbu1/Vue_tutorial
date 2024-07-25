<template>
    <div>
      <h1>Parent Component</h1>
      <button @click="showChild = !showChild">Toggle Child</button>
      <ChildComponent v-if="showChild"/>
    </div>
  </template>
  
  <script>
  import ChildComponent from './ChildComponent.vue';
  
  export default {
    name: 'ParentComponent',
    data() {
      return {
        showChild: true
      
      };
    },
    components: {
      ChildComponent
    },
    created() {
      console.log('Parent component created');
    },
    mounted() {
      console.log('Parent component mounted');
    },
    updated() {
      console.log('Parent component updated');
    },
    beforeUnmount() {
      console.log('Parent component beforeUnmount');
    },
    unmounted() {
      console.log('Parent component destroyed');
    }
  };
  </script>
  
  <style scoped>
  /* Add component-specific styles here */
  </style>
  