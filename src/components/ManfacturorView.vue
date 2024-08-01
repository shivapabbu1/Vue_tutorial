<script setup>
import { useRoute } from 'vue-router';
import { ref, onMounted } from 'vue';
import Cars from '../../src/data.json';

const route = useRoute();
const car = ref(null);

onMounted(() => {
  const carId = parseInt(route.params.id);
  car.value = Cars.find(c => c.id === carId);
});
</script>

<template>
  <main v-if="car">
    <h1>I am your Manfacuror for your car</h1>
    
    <div class="dealer-details">
      <h2>Dealer Details:</h2>
      <p>Name: {{ car.dealer.name }}</p>
      <p>Address: {{ car.dealer.address }}</p>
      <p>Contact: {{ car.dealer.contact }}</p>
    </div>
  </main>
  <div v-else>
    <h1>Car not found</h1>
  </div>
</template>

<style scoped>
.car-details, .dealer-details {
  margin-bottom: 20px;
}
</style>
