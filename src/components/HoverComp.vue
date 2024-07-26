<template>
    <div>
<button @mouseover="increment">HOver {{ count }} times</button>
    </div>
</template>

<script>
import CounerMixin from "./MIxins/Counter"
    export default {
        name: 'HoverComp',
        mixins: [CounerMixin],
        data(){
            return{
                count :20
            }
        },
        methods:{
            increment(){
             this.count +=2;
            }
        }
        
    }
</script>

<style lang="scss" scoped>

</style>