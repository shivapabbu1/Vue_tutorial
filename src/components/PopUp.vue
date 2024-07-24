<template>
    <div>
      <h2>{{ msg }}</h2>
      <button @click="$emit('close', name)">Close Popup</button>
    </div>
  </template>
  
  <script>
  export default {
    name: 'PopUp',

   emits :{     
    close :(name) => {     //if name is not pass warning in console
        if(!name){
            return false
        }else{
            return true
        }
    }

   },
    
    data() {
      return {
        msg: "Hello devdolphin...",
        name: 'sp'
      };
    }
  };
  </script>
  
  <style scoped>
  /* Add any desired styling here */
  </style>
  