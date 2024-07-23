<template>
  <div>
    <h1>Shopping Cart</h1>
    
    <!-- List of items in the cart -->
    <ul>
      <li v-for="item in formattedCartItems" :key="item.id">
        {{ item.name }} - ${{ item.price }}
      </li>
    </ul>
    
    <!-- Display the total price -->
    <p>Total Price: ${{ totalPrice }}</p>
    
    <!-- Display the number of items -->
    <p>Number of Items: {{ numberOfItems }}</p>
    
    <!-- Display the average price per item -->
    <p>Average Price: ${{ averagePricePerItem.toFixed(2) }}</p>
    
    <!-- Check if eligible for free shipping -->
    <p v-if="isEligibleForFreeShipping">You are eligible for free shipping!</p>
    <p v-else>Spend $50 or more for free shipping.</p>
  </div>
</template>

<script>
export default {
  name: 'ShoppingCart',
  data() {
    return {
      // List of items in the cart
      cartItems: [
        { id: 1, name: 'Apple', price: 10 },
        { id: 2, name: 'Banana', price: 5 },
        { id: 3, name: 'Cherry', price: 15 }
      ]
    };
  },
  computed: {
    // Compute the total price of all items in the cart
    totalPrice() {
      return this.cartItems.reduce((sum, item) => sum + item.price, 0);
    },
    
    // Check if the total price is greater than or equal to $50 for free shipping
    isEligibleForFreeShipping() {
      return this.totalPrice >= 50;
    },
    
    // Compute the number of items in the cart
    numberOfItems() {
      return this.cartItems.length;
    },
    
    // Compute the average price per item
    averagePricePerItem() {
      return this.numberOfItems > 0 ? this.totalPrice / this.numberOfItems : 0;
    },
    
    // Format cart items with price formatting
    formattedCartItems() {
      return this.cartItems.map(item => ({
        ...item,
        price: item.price.toFixed(2) // Format price to two decimal places
      }));
    }
  }
};
</script>

<style>
/* Add any desired styling here */
ul {
  list-style-type: none;
  padding: 0;
}
li {
  padding: 8px 0;
}
p {
  margin: 4px 0;
}
</style>



/*
Reactive:

    totalPrice and isEligibleForFreeShipping are reactive because they depend on cartItems. Any change in cartItems automatically updates these computed properties.

Cached:

    When cartItems is updated, totalPrice is recalculated. If cartItems remains the same, the cached value of totalPrice is used, making totalPrice efficient.

Declarative:

    Computed properties such as numberOfItems, averagePricePerItem, and formattedCartItems are used in the template to present data clearly. This approach avoids placing complex logic directly in the template, enhancing readability.

Getter and Setter:

    For simplicity, only getters are used in this example. If there were a need to set values directly on formvalue or other properties, setters could be defined to handle such updates.


 */