<template>
  <main>
    <h1>Hello Home</h1>
    <label for="make-select">Make:</label>
    <select id="make-select" v-model="make" @change="handleChange" >
      <option selected="All">All</option>
      <option value="Chevrolet">Chevy</option>
      <option value="Porsche">Porsche</option>
      <option value="Audi">Audi</option>
    </select>
    <div class="cards">
      <div class="card" v-for="car in cars" :key="car.id" @click="router.push(`/car/${car.id}`)">
        <h1>{{ car.make }}</h1>
        <p>${{ car.price }}</p>
      </div>
    </div>
  </main>
</template>

<script setup>
import { ref, onMounted, watch } from 'vue';
import { useRouter, useRoute } from 'vue-router';
import CarsData from '../../src/data.json';

const cars = ref(CarsData);
const router = useRouter();
const route = useRoute();
const make = ref('');

// Handle selection change
const handleChange = () => {
  router.push({ query: { make: make.value  }}); 
};


watch(make,()=>{
  if(make.value) return cars.value=CarsData
  else{
    cars.value =CarsData.filter(c => c.make ===make.value)
  }
});

onMounted(() => {

  make.value = route.query.make ;

});
</script>

<style scoped>
.cards {
  display: flex;
  width: 1000px;
  flex-wrap: wrap;
  margin-top: 50px;
  justify-content: center;
}

.card {
  box-shadow: 1px 1px 10px rgba(0, 0, 0, 0.207);
  padding: 15px;
  width: 150px;
  margin-right: 15px;
  cursor: pointer;
  margin-bottom: 20px;
}

.links {
  padding: 20px;
}

.links a {
  margin: 0 5px;
}
</style>
