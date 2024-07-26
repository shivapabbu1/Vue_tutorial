<template>
  <div id="app">
  
    <h1>hello form options {{ name1 }}</h1>
    <h2>hello from compostions with name {{ fname }} {{ lname }} as {{ role }}</h2>
    <div>
<h1>{{ qusn }}</h1>
    <p>{{ ans }}</p>
    </div>

    <div>
      <h2>{{ greetfromreactive }}</h2>
      <p>{{ ansformreactive }}</p>
    </div>

    </div>
</template>

<script>

import { reactive, ref } from 'vue';

export default {
  name: 'App',
  setup() {


    const state=reactive({
    fname:'kiran',
    lname:'kommu',
    role:'Fullstack developer'
   })
      
    // Create a reactive reference for the count
    const fname = ref("shivaprasad");
    const lname=ref("pabbu")
    const role=ref("developer")
   
    const qusn= `Hello ${fname.value}  ${lname.value}.What are you?`
    const ans=`hey.. i am ${role.value}`

    const greetfromreactive=`Hello ${state.fname}  ${state.lname}.What are you?`
    const ansformreactive=`hey.. i am ${state.role}`
 
  
    // Return the refs and methods to the template
    return {
      fname,
      lname,
      role,qusn,ans
      ,
      greetfromreactive,
      ansformreactive
      
    
    };
  },
  data(){
    return {
      name1: 'shivapabbu'
    }
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
``
