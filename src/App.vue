<template>
  <div>
    <OptComponent/>
<CompComponent/>
<CompReactive></CompReactive>
  </div>
</template>

<script>
import OptComponent from './components/OptComponent.vue';
import CompComponent from './components/CompComponent.vue';
import CompReactive from './components/CompReactive.vue';
  export default {
    name :'App',
    components:{
      OptComponent,
      CompComponent,
      CompReactive
    }

  }
</script>

<style lang="scss" scoped>

</style>