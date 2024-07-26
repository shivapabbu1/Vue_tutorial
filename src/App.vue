<template>
  <div>
    <OptComponent/>
<CompComponent/>
  </div>
</template>

<script>
import OptComponent from './components/OptComponent.vue';
import CompComponent from './components/CompComponent.vue';
  export default {
    name :'App',
    components:{
      OptComponent,
      CompComponent
    }

  }
</script>

<style lang="scss" scoped>

</style>