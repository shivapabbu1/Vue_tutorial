<template>
    <div>
<h1>{{ fname }}</h1>
<h1>{{ lname }}</h1>
    </div>
</template>

<script>
import { reactive, toRefs } from 'vue';

    export default {
        name:'DemoTwo',
        setup(){
            const state=reactive({
                fname:"Vamshi",
                lname:'Pabbu'
            })

            setTimeout(() => {
                state.fname="vamshiKrishna",
                state.lname="PABBU"
                console.log(state);
            }, 3000);

            // return{
            //    fname: state.fname,
            //    lname:state.lname
            // }
            return toRefs(state)
        }
    }
</script>

<style lang="scss" scoped>

</style>