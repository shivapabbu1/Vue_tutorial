<template>
    <div>
      <h2>ChildC optins APi : {{ username }}</h2>
      <h2>ChildC Composition ref: {{ usernameRef }}</h2>
      <h2>ChildC Composition reactive: {{ usernameReactive.r_name}}</h2>

    </div>
  </template>
  
  <script>
  import { inject } from 'vue';
  
  export default {
    name: 'ChildC',
   
    inject: ['username'],

    setup() {
        const usernameRef = inject('usernameRef');
       const usernameReactive = inject('usernameReactive');

    return {
        usernameRef,
        usernameReactive  
    };
  }
   


  };
  </script>
  
  <style scoped>
  /* Add component-specific styles here */
  </style>
  