<template>
  <div id="app">

    <PostIndia id="myid" headLine="Attack On navy"  subject="we are WOn"  :isAdult="true" />

    <h1>{{ name }}</h1>
    <ChildC></ChildC>
  </div>
 
</template>
/* when non-prop attributes are passed like class,id.if child element is single root elemennt that non-prop attrs are applied on root element,if 
want to appply on certain element we use "v-bind:$attrs" and to stop default behavuoir of root element access attrs in data please make flase to inheritattrs proprty
*/
<script>
import PostIndia from "./components/PostIndia.vue";
import ChildC from "./components/ChildC.vue";
export default {
  name: "App",
  
  components: {
    PostIndia,
    ChildC
  },
  data(){
return{
name:'shivaprasad'
}
  },
  provide(){
    return{
     username :this.name
    }
  }

  // provide: {
  // //  username: this.name  //not work
  // username:'shivaprasad'  
  // }
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

/* 
if prop value is used in root compnent the  provide should provide as function ,
if it used in down to parent like in child component then we should provide as object */