<template>
  <div>
    <button @click="emitCustomEvent">Click Me to Emit Custom Event</button>
  </div>
</template>

<script>
export default {
  name: "ChildComponent",
  methods: {
    emitCustomEvent() {
      this.$emit('custom-event', 'Hello from the child component!'); // Emit custom event with a message
    }
  }
};
</script>

<style>
/* Add any desired styling here */
</style>
