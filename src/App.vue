<template>
  <div>
<DemoONe/>
<DemoTwo/>
  </div>
</template>

<script>
import DemoONe from './components/DemoONe.vue';
import DemoTwo from './components/DemoTwo.vue';
  export default {
    name :'App',
    components:{
      DemoONe,
      DemoTwo
    }
  }
</script>

<style lang="scss" scoped>

</style>