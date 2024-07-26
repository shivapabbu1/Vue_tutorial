<template>
    <div>
      <h1>{{ fname }}</h1>
      <h2>{{ lname }}</h2>
    </div>
</template>

<script>
import { ref } from 'vue';

    export default {
        name: 'DemoONe',
        
        setup(){
            const fname=ref('shiva')
            const lname=ref('pabbu')


            setTimeout(() => {
                fname.value="kiran",
                lname.value="kommu"
            }, 3000);

            return {
                fname,
                lname
            }
        }
    }
</script>

<style lang="scss" scoped>

</style>