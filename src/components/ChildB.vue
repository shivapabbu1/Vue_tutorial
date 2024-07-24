<template>
    <div>
      <h2>Component B</h2>
      <ChildC />
    </div>
  </template>
  
  <script>
  import ChildC from '../components/ChildC.vue';
  
  export default {
    name: 'ChildB',
    components: {
      ChildC
    }
  };
  </script>
  
  <style scoped>
  /* Your styles here */
  </style>
  