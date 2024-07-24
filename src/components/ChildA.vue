<template>
    <div>
      <h2>Component A</h2>
      <ChildB />
    </div>
  </template>
  
  <script>
import ChildB from '../components/ChildB.vue';
  
  export default {
    name: 'ChildA',
    components: {
      ChildB
    }
  };
  </script>
  
  <style scoped>
  /* Your styles here */
  </style>
  