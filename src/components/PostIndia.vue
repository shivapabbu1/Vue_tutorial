<template>
    <div>
      <h2>{{headLine }}</h2>
      <b>{{subject }}</b>
      <p v-bind="$attrs">{{ Likes }}</p>
      <p>isAdult: {{ isAdult ? "yes" :"no"}}</p>
    </div>
</template>

<script>
    export default {
        name:'PostIndia',
        props: {
            headLine:{
              type: String,
              required:true,
              default:"defalut value"
            },
            subject:{
                type: String,
              required:true,
              default:"defalut value" 
            },
            Likes:{
                type: Number,
              required:true,
              default:0
            },
            isAdult:{
                type: Boolean,
                required:true
            }

        },
        inheritAttrs:false
    }
</script>

<style scoped>

</style>