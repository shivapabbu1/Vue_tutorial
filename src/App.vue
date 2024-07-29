<template>
  <div id="app">
    <!-- Button to trigger the popup -->
    <button @click="showpop=true">Show Popup</button>

    <!-- PopUp component with v-show directive and close event -->
    <PopUp v-show="showpop" @close="closepop" />

<!-- Button to trigger the popup -->
<button @click="showpopc=true">Show c Popup</button>
    <AnotherPopUP v-show="showpopc" @close="closeAnotherPopUp"  />
  </div>
</template>

<script>
import PopUp from './components/PopUp.vue';
import AnotherPopUP from './components/AnotherPopUP.vue';
import {ref} from 'vue'
export default {
  name: "App",
  data() {
    return {
      showpop: false // State to control the visibility of the popup
    };
  },
  components: {
    PopUp,
    AnotherPopUP
  },
  methods: {
    // Method to handle the close event from PopUp component
    closepop(username) {
      this.showpop = false;
      console.log(username);
    }
  },

  setup() {
    const showpopc = ref(false);

  

    const closeAnotherPopUp = (name) => {
      showpopc.value = false;
      console.log('AnotherPopUP closed by:', name);
    };

    return {
      showpopc,
    
      closeAnotherPopUp
    };
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


/* for custom component v-model confuse to store value in root level when we use custom component 
please use props in that compoennet as modelValue:stirng and use as :value in element where v-model used*/