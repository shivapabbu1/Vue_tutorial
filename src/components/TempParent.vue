<template>
    <div>
      <!-- DOM element manipulation -->
      <div ref="myDiv">
        
       This is a div element
      
       <input type="text" id="name" ref="nameinput"/>
        </div>
  
      <!-- Accessing child component methods and properties -->
      <TempChild ref="childComp" />
  
      <!-- Dynamic ref names -->
      <div v-for="(item, index) in items" :ref="'item' + index" :key="index">
        {{ item }}
      </div>
  
      <!-- Button to trigger methods -->
      <button @click="manipulateDomElement">Manipulate DOM Element</button>
      <button @click="callChildMethod">Call Child Method</button>
      <button @click="logDynamicRefs">Log Dynamic Refs</button>
    </div>
  </template>
  
  <script>
  import TempChild from './TempChild.vue';
  
  export default {
    name: 'TempParent',
    components: {
        TempChild
    },
    data() {
      return {
        items: ['item1', 'item2', 'item3']
      };
    },
    mounted() {
      console.log(this.$refs.myDiv); // Access the div element
      this.$refs.nameinput.focus();
    },
    methods: {
      manipulateDomElement() {
        this.$refs.myDiv.style.color = 'red';
      },
      callChildMethod() {
        this.$refs.childComp.childMethod();
      },
      logDynamicRefs() {
        this.items.forEach((item, index) => {
          console.log(this.$refs['item' + index]);
        });
      }
    }
  };
  </script>
  
  <style scoped>
  /* Add some basic styling */
  div {
    margin: 10px 0;
  }
  button {
    margin: 5px;
  }
  </style>
  