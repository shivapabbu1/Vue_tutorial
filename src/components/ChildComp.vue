<template>
    <div>
      <h2>Child Component</h2>
      
      <!-- Display props passed from Parent -->
      <p>First Name (Options API): {{ name1 }}</p>
      <p>Second Name (Options API): {{ name2 }}</p>
  
      <p>First Name (Composition API): {{ compositionFname }}</p>
      <p>Second Name (Composition API): {{ compositionLname }}</p>
    </div>
  </template>
  
  <script>
  import { toRefs } from 'vue';
  
  export default {
    name: 'ChildComp',
    props: {
      name1: {
        type: String,
        default: ''
      },
      name2: {
        type: String,
        default: ''
      },
      fname: {
        type: String,
        default: ''
      },
      lname: {
        type: String,
        default: ''
      }
    },
    setup(props) {
      // Destructure the props for Composition API
      const { fname: compositionFname, lname: compositionLname } = toRefs(props);
      return {
        compositionFname,
        compositionLname
      };
    }
  };
  </script>
  
  <style scoped>
  /* Add some basic styling */
  p {
    margin: 5px 0;
  }
  </style>
  