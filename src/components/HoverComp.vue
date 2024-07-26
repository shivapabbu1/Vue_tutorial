<template>
    <div>
<button @mouseover="increment">HOver {{ count }} times</button>
    </div>
</template>

<script>
import CounerMixin from "./MIxins/Counter"
    export default {
        name: 'HoverComp',
        mixins: [CounerMixin]
    }
</script>

<style lang="scss" scoped>

</style>