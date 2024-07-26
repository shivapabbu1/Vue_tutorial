<template>
    <div>
<button @click="increment">CLick {{ count }} times</button>
    </div>
</template>

<script>
import CounerMixin from "./MIxins/Counter"
    export default {
        name: 'CounterComp',
        mixins: [CounerMixin],
        
        data(){
        return{
            count: 0
        }
    },
    methods: {
        increment(){
             this.count +=1;
        },
        
    },

    }
</script>

<style lang="scss" scoped>

</style>