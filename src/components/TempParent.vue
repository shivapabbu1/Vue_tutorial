<template>
  <div>
    <!-- DOM element manipulation -->
    <div ref="myDiv">
      <h1 ref="text">This is a div element</h1>
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
  </div>
</template>

<script>
import { ref, onMounted, onBeforeMount, onBeforeUnmount, onUnmounted, onActivated, onDeactivated, } from 'vue';
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


    // Lifecycle hook for before mount
    onBeforeMount(() => {
      console.log('Before Parent component is mounted');
    });

    // Lifecycle hook for mounted
    onMounted(() => {
      console.log('Parent component mounted');
      if (nameinput.value) {
        nameinput.value.focus();
      }
    });

    // Lifecycle hook for before unmount
    onBeforeUnmount(() => {
      console.log('Before Parent component is unmounted');
    });

    // Lifecycle hook for unmounted
    onUnmounted(() => {
      console.log('Parent component unmounted');
    });

    // Lifecycle hook for activated (used in keep-alive)
    onActivated(() => {
      console.log('Parent component activated');
    });

    // Lifecycle hook for deactivated (used in keep-alive)
    onDeactivated(() => {
      console.log('Parent component deactivated');
    });

    return {
      myDiv,
      text,  // Returning ref for h1
      nameinput,
      childComp,
      items,
      manipulateDomElement,
      callChildMethod,
     
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
