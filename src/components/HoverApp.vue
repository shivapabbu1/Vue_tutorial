<!-- src/components/HoverApp.vue -->
<template>
    <div>
      <h2>Counter: {{ count }}</h2>
      <button @click="incrementCounter">Increment Counter</button>
      
      <div
        @mouseover="incrementHoverCount"
        class="hover-area"
      >
        Hover over me!
      </div>
      <p>Hover Count: {{ hoverCount }}</p>
    </div>
  </template>
  
  <script>
  import { useCounter } from './composable/useCounter'; // Adjust path as necessary
  
  export default {
    name: 'HoverApp',
    setup() {
      const { count, hoverCount, incrementCounter, incrementHoverCount } = useCounter(0,2);
  
      return {
        count,
        hoverCount,
        incrementCounter,
        incrementHoverCount
      };
    }
  };
  </script>
  
  <style scoped>
  .hover-area {
    width: 200px;
    height: 100px;
    border: 1px solid #ddd;
    text-align: center;
    line-height: 100px;
    margin-top: 20px;
  }
  </style>
  