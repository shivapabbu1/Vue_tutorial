<template>
    <div>
      <p>Child Component</p>
      <button @click="childMethod">Click me</button>
    </div>
  </template>
  
  <script>
  export default {
    name: 'TempChild',
    methods: {
      childMethod() {
        alert('Child component method called!');
      }
    }
  }
  </script>
  