<template>
  <div id="app">
    <div class="tabs">
      <button @click="activeTab = 'DynamicA'">Tab A</button>
      <button @click="activeTab = 'DynamicB'">Tab B</button>
      <button @click="activeTab = 'DynamicC'">Tab C</button>
    </div>
    
    <keep-alive>
      <component :is="activeTab" />
    </keep-alive>

    <!-- <component :is="activeTab" /> -->
   
  </div>
</template>

<script>
import DynamicA from './components/Dynamic/DynamicA.vue';
import DynamicB from './components/Dynamic/DynamicB.vue';
import DynamicC from './components/Dynamic/DynamicC.vue';

export default {
  name: 'App',
  components: {
    DynamicA,
    DynamicB,
    DynamicC
  },
  data() {
    return {
      activeTab: 'DynamicA'  // Default tab
    };
  }
};
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
