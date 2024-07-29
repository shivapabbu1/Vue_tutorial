<template>
  <div id="app">
    <PostIndia id="myid" headLine="Attack On navy" subject="we are WOn" :isAdult="true" />
    <h1>{{ name }}</h1>

    <ChildA />

    <div>
      <!-- <CounterApp/> -->
      <HoverApp/>
    </div>
  </div>
</template>

<script>
import PostIndia from "./components/PostIndia.vue";
import ChildA from "./components/ChildA.vue";
import { provide ,reactive,ref} from "vue";
// import CounterApp from "./components/CounterApp.vue";
import HoverApp from "./components/HoverApp.vue";
export default {
  name: "App",
  components: {
    PostIndia,
    ChildA,
    // CounterApp,
    HoverApp
  },
  data() {
    return {
      name: 'shivaprasad'
    };
  },
  provide() {
  
    return {
      username: this.name
    };
  },

  setup() {
    // Define a ref
    const nameRef = ref('c_shivaprasad');

    // Define a reactive state object
    const state = reactive({
      r_name: 'shivaprasad_reactive'
    });

    // Provide both ref and reactive state
    provide('usernameRef', nameRef);
    provide('usernameReactive', state);

    // Return reactive state to be used in template
    return {
      r_name: state.r_name
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
