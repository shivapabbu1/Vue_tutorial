<template>
    <div>
      <h2>{{ msg }}</h2>
      <button @click="closePopup">Close Popup</button>
    </div>
  </template>
  
  <script>
  import { ref } from 'vue';
  
  export default {
    name: 'AnotherPopUp',
    emits: {
      close: (name) => {
        if (!name) {
          console.warn('Name is not passed');
          return false;
        }
        return true;
      }
    },
    setup(_, { emit }) {
      const msg = ref("Hello composition API devdolphin...");
      const name = ref('sp');
  
      const closePopup = () => {
        if (name.value) {
          emit('close', name.value);
        } else {
          console.warn('Name is not passed');
        }
      };
  
      return {
        msg,
        closePopup
      };
    }
  };
  </script>
  
  <style scoped>
  /* Add any desired styling here */
  </style>
  