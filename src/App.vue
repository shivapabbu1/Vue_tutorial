<template>
  <div id="app">
    <PostIndia id="myid" headLine="Attack On navy" subject="we are WOn" :isAdult="true" />
    <h1>{{ name }}</h1>
    <ChildA />
  </div>
</template>

<script>
import PostIndia from "./components/PostIndia.vue";
import ChildA from "./components/ChildA.vue";

export default {
  name: "App",
  components: {
    PostIndia,
    ChildA
  },
  data() {
    return {
      name: 'shivaprasad'
    };
  },
  provide() {
    // Provide 'username' as a reactive property to descendants
    return {
      username: this.name
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
