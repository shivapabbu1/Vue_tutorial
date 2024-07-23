<template>
  <div>
    <h1>Nested Object Tracker</h1>

    <!-- Input fields for nested properties -->
    <input v-model.number="product.price" type="number" placeholder="Enter product price" />
    <input v-model="product.details.name" type="text" placeholder="Enter product name" />

    <!-- Display the messages -->
    <p>Price: {{ product.price }}</p>
    <p>Product Name: {{ product.details.name }}</p>
    <p>{{ changeMessage }}</p>
  </div>
</template>

<script>
export default {
  name: 'NestedObjectTracker',
  data() {
    return {
      product: {
        price: 29,
        details: {
          name: 'Example Product'
        }
      },
      previousProduct: {} // Store the previous product state
    };
  },
  watch: {
    // Deep watcher for the product object
    product: {
      handler(newProduct, oldProduct) {
        // Ensure oldProduct is not undefined by initializing it properly
        if (!oldProduct) {
          this.previousProduct = { ...newProduct };
          return;
        }

        // Store the old product state
        this.previousProduct = { ...oldProduct };

        // Update the change message
        this.updateChangeMessage(newProduct, oldProduct);
      },
      deep: true,  // Enable deep watching
      immediate: true  // Run the watcher immediately upon component creation
    }
  },
  computed: {
    // Computed property for change message
    changeMessage() {
      // Check if any part of the product object has changed
      const hasChanged = JSON.stringify(this.previousProduct) !== JSON.stringify(this.product);
      return hasChanged ? 'The product has been updated.' : 'No changes detected.';
    }
  },
  methods: {
    // Method to update the change message based on product changes
    updateChangeMessage(newProduct, oldProduct) {
      let message = '';

      // Compare prices
      if (newProduct.price !== oldProduct.price) {
        message += 'Price has changed. ';
      }

      // Compare product names
      if (newProduct.details.name !== oldProduct.details.name) {
        message += 'Product name has changed. ';
      }

      // If there are changes, update changeMessage computed property
      if (message) {
        this.previousProduct = { ...newProduct }; // Update previousProduct
        this.$nextTick(() => {
          this.changeMessage = message.trim(); // Update changeMessage
        });
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
