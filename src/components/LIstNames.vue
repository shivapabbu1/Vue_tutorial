<template>
    <div>
      <h2 v-for="name in names" :key="name.firstName">
         <slot :firstName="name.firstName"  :lastName="name.lastName"></slot>
      </h2>
    </div>
</template>

<script>
    export default {
        name:'LIstNames',
        data(){
            return{
names: [
  { firstName: 'John', lastName: 'Doe' },
  { firstName: 'Jane', lastName: 'Smith' },
  { firstName: 'Emily', lastName: 'Johnson' },
  { firstName: 'Michael', lastName: 'Williams' },
  { firstName: 'Sarah', lastName: 'Brown' }
]
            }
        }
    }
</script>

<style scoped>

</style>