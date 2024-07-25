<template>
    <div>
<h3>SubCHild</h3>
    </div>
</template>

<script>
    export default {
        name: 'SubChild',

    created() {
      console.log('SubChild component created');
    },
    mounted() {
      console.log('SubChild component mounted');
    },
    updated() {
      console.log('SubChild component updated');
    },
    beforeUnmount() {
      console.log('SubChild component beforeDestroy');
    },
    unmounted() {
      console.log('SubChild component destroyed');
    }
    }
</script>

<style >

</style>