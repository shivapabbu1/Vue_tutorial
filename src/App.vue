<template>
  <div>
    <h1>Price Tracker</h1>

    <!-- Input field for price -->
    <input v-model.number="price" type="number" placeholder="Enter product price" />

    <!-- Display the discount message -->
    <p>{{ discountMessage }}</p>
  </div>
</template>

<script>
export default {
  name: 'PriceTracker',
  data() {
    return {
      price: 0,             // Current price of the product
      previousPrice: 0      // Store the previous price
    };
  },
  watch: {
    // Watcher for price with old and new values
    price(newPrice, oldPrice) {
      console.log(`Price changed from $${oldPrice} to $${newPrice}`);

      // Update previousPrice
      this.previousPrice = oldPrice;

      // Update discount message
      this.updateDiscountMessage(newPrice, oldPrice);
    }
  },
  computed: {
    // Computed property for discount message
    discountMessage() {
      return this.price >= 100 ? 'You get a 10% discount!' : 'No discount available.';
    }
  },
  methods: {
    // Method to update the discount message based on price change
    updateDiscountMessage(newPrice, oldPrice) {
      // Logic to determine discount message
      if (newPrice >= 100 && oldPrice < 100) {
        console.log('Discount applied due to price increase.');
      } else if (newPrice < 100 && oldPrice >= 100) {
        console.log('Discount removed due to price decrease.');
      }
    }
  }
};
</script>

<style>
/* Add any desired styling here */
input {
  margin-bottom: 10px;
  width: 100%;
}
p {
  margin-top: 20px;
}
</style>
