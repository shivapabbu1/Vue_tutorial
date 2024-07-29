<template>
  <div>
    <h1>Parent Component</h1>
    
    <!-- Input fields to enter names for Options API -->
    <input v-model="name1" placeholder="Enter first name (Options API)" />
    <input v-model="name2" placeholder="Enter second name (Options API)" />
    


    <!-- Input fields to enter names for Composition API -->
    <input v-model="fname" placeholder="Enter first name (Composition API)" />
    <input v-model="lname" placeholder="Enter second name (Composition API)" />
    

        <!-- Pass names as props to the ChildComp component -->
        <ChildComp :name1="name1" :name2="name2"   :fname="fname" :lname="lname" />
  
  </div>
</template>

<script>
import { ref } from 'vue';
import ChildComp from './ChildComp.vue';

export default {
  name: 'ParentComp',
  components: {
    ChildComp
  },
  data() {
    return {
      name1: '', // First name for Options API
      name2: ''  // Second name for Options API
    };
  },
  setup() {
    // Reactive references for the names using Composition API
    const fname = ref('');
    const lname = ref('');

    return {
      fname,
      lname
    };
  }
};
</script>

<style scoped>
/* Add some basic styling */
input {
  margin: 5px;
}
</style>
