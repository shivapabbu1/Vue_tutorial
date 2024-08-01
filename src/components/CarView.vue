<script setup>
import {RouterLink, RouterView, useRoute} from "vue-router"
import {onMounted,ref} from "vue"
import Cars from "../../src/data.json";
import router from "@/router";

const route = useRoute()

const car = ref(null)
const {id} = route.params

onMounted(() => {
   const c = Cars.find(c => c.id === parseInt(id));
   car.value = c
})

</script>

<template>
    <div class="container">
        <div v-if="car">
            <h1>The Car</h1>
            <p>Make: {{car.make}}</p>
            <p>Body: {{car.body}}</p>
            <p>Price: {{car.price}}</p>
            <p>Year: {{car.year}}</p>
            <button @click="router.back()">Go back</button>
      <div>
        <router-link :to="`${route.path}/dealer`">Dealer</router-link>
        <router-link :to="`${route.path}/manufacturer`">Manufacturer</router-link>
      </div>
      <router-view></router-view>
        </div>
        <div v-else>
            <h1>Car not found</h1>
         
        </div>
    </div>
</template>