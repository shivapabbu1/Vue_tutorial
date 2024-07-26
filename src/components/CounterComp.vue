<template>
    <div>
<button @click="increment">CLick {{ count }} times</button>
    </div>
</template>

<script>
import CounerMixin from "./MIxins/Counter"
    export default {
        name: 'CounterComp',
        mixins: [CounerMixin]

    }
</script>

<style lang="scss" scoped>

</style>