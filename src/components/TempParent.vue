


<template>
  <div>
    <!-- DOM element manipulation -->
    <div ref="myDiv">
     <h1  ref="text"> This is a div element</h1>
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
import { ref, onMounted } from 'vue';
import TempChild from './TempChild.vue';

export default {
  name: 'TempParent',
  components: {
    TempChild
  },
  setup() {
    // Define refs for DOM elements and child component
    const myDiv = ref(null);
    const text = ref(null);  // ref for h1 element
    const nameinput = ref(null);
    const childComp = ref(null);
    const items = ref(['item1', 'item2', 'item3']);

    // Function to manipulate the DOM element
    const manipulateDomElement = () => {
      if (myDiv.value) {
        myDiv.value.style.color = 'red';
      }
      if (text.value) {
        text.value.style.fontSize = '24px';  // Example manipulation for h1 element
      }
    };

    // Function to call a method on the child component
    const callChildMethod = () => {
      if (childComp.value) {
        childComp.value.childMethod();
      }
    };

    // Function to log dynamic refs
    const logDynamicRefs = () => {
      items.value.forEach((item, index) => {
        console.log((childComp.value.$refs['item' + index] || null)); // Access dynamic refs from child component
      });
    };

    // Lifecycle hook for mounted
    onMounted(() => {
      if (nameinput.value) {
        nameinput.value.focus();
      }
    });

    return {
      myDiv,
      text,  // Returning ref for h1
      nameinput,
      childComp,
      items,
      manipulateDomElement,
      callChildMethod,
      logDynamicRefs
    };
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

