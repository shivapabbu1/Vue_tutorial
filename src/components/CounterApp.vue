<template>
    <div>
      <h2>Counter: {{ count }}</h2>
      <button @click="increment">Increment Counter</button>
      
      <div
        @mouseover="hoverincremnet"
       
        class="hover-area"
      >
        Hover over me!
      </div>
      <p>Hover Count: {{ hoverCount }}</p>
    </div>
  </template>
  
  <script>
import CounterApp from './Mixins/CounterApp';

  export default {
    name: 'CounterComponent',
    mixins: [CounterApp]
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
  