<template>
  <div id="app">
    <h1>AppComponent</h1>
    <button @click="showModal = true">Open Modal</button>
    <TelePort v-if="showModal" @close="closemodel()"/>
  
  <button></button>
    <teleport to="#tele-port" >
      <PortalComp/>
    

  </teleport>
  </div>
</template>

<script>
import PortalComp from './components/PortalComp.vue';
import TelePort from './components/TelePort.vue';
export default {
  name: 'App',
  components: {
    PortalComp,
    TelePort
  },
  data() {
    return {
      showModal: false
    };
  },methods:{
    closemodel(){
      this.showModal=false
    }
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
