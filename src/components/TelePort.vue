<template>
    <teleport to="#tele-port">
      <div class="modal">
        <p>This is a modal!</p>
        <button @click="$emit('close')">Close Modal</button>
      </div>
    </teleport>
  </template>
  
  <script>
export default {
  name: 'Teleport',
  emits: ['close'],
  mounted() {
    console.log('Teleport component mounted');
  }
};
</script>

  
  <style>
  .modal {
    position: fixed;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    background-color: white;
    padding: 1rem;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  }
  </style>
  