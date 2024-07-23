<template>
  <div>
    <h2>{{ name }}</h2>
    <button @click="changeName();increment()">Change Name</button>
   
<div>
    <h2>{{count}}</h2>
    <button @click="increment()">INc</button>
    <button @click="decrement()">Dec</button>
  </div>
  
  </div>
 
</template>

<script>
export default {
  name: "EventHandling",
  data() {
    return {
      name: 'shivapabbu',
      count: 0,

    };
  },
  methods: {
    changeName() {
      this.name = 'shivaprasad';
    },
    increment(){
        this.count+=1;
    },
    decrement(){
        this.count-=1;
    },
  }
};
</script>

<style>
/* Add any desired styling here */
</style>
