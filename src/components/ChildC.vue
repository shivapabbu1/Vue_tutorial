<template>
    <div>
   <h2>ChildC :{{ username }}</h2>

    </div>
</template>

<script>
    export default {
        name:'ChildC',

        inject: ['username']
    }
</script>

<style scoped>

</style>