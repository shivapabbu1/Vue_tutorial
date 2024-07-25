<template>
  <div id="app">
    <h1>AppComponent</h1>
    <button @click="showParentComponent = !showParentComponent">
      Toggle Parent Component
    </button>
    <ParentComponent v-if="showParentComponent"/>

    <div>
      <ProfileList/>
    </div>
  </div>
</template>

<script>
import ParentComponent from './components/ParentComponent.vue';
import ProfileList from './components/ProfileList.vue';
export default {
  name: 'App',
  components: {
    ParentComponent,
    ProfileList
  },
  data() {
    return {
      showParentComponent: true
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
button {
  margin: 10px;
  padding: 10px;
  background-color: #42b983;
  color: white;
  border: none;
  cursor: pointer;
  border-radius: 5px;
}
button:hover {
  background-color: #2c9e6a;
}
</style>
