<template>
  <div id="app">
    <keep-alive>
    <TempParent />
  </keep-alive>
   
  </div>
</template>

<script>
import TempParent from './components/TempParent.vue';

export default {
  name: 'App',
  components: {
    TempParent,
  
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
