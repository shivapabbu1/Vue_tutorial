<template>
  <div id="app">
    <EventHandling />
  </div>
</template>

<script>
import EventHandling from "../../vue_tutorial/src/components/EventHandling.vue";

export default {
  name: "App",
  components: {
    EventHandling
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
