<template>
    <div>
      <h1>D-C</h1>
      <input type=text id="name" v-model="name"/>
      <p>typed name: {{ name }}</p>
    </div>
  </template>
  
  <script>
  export default {
    name: 'DynamicC',
    data(){
        return{
            name:''
        }
    }

  };
  </script>
  
  <style scoped>
  /* Add scoped styles if needed */
  </style>
  