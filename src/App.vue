<template>
  <div id="app">
    <FormHandle />
  </div>
</template>

<script>
import FormHandle from "../../vue_tutorial/src/components/FormHandle.vue";

export default {
  name: "App",
  components: {
    FormHandle
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
