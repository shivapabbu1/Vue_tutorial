<template>
  <div>
    <h1>Shopping Cart</h1>
    
    <!-- List of items in the cart -->
    <ul>
      <li v-for="item in formattedCartItems" :key="item.id">
        {{ item.name }} - ${{ item.price }}
      </li>
    </ul>
    <button @click="updateApplePrice()">updateApplePrice</button>
    
    <!-- Display the total price -->
    <p>Total Price from computed: ${{ totalPrice }}</p>
    <p>Total price from method: ${{total()}}</p>
    
    <!-- Display the number of items -->
    <p>Number of Items: {{ numberOfItems }}</p>
    
    <!-- Display the average price per item -->
    <p>Average Price: ${{ averagePricePerItem.toFixed(2) }}</p>
    
    <!-- Check if eligible for free shipping -->
    <p v-if="isEligibleForFreeShipping">You are eligible for free shipping!</p>
    <p v-else>Spend $50 or more for free shipping.</p>

  

    <h2 v-for="item in expesive" :key="item.name">{{item.name}}</h2>
    <div v-for="item in cartItems" :key="item.id">
      <h2  v-if="item.price > 10">{{item.name}}</h2>


    </div>

       <!-- Input fields to demonstrate getter and setter -->
    <p>First Name: <input type="text" v-model="firstName" /></p>
    <p>Last Name: <input type="text" v-model="lastName" /></p>
    <p>Full Name: <input type="text" v-model="fullName" /></p>
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
      ],
       firstName: '',
      lastName: '',
      fullname: ''
    };
  },
  methods: {
    total(){
      console.log("total method");
            return this.cartItems.reduce((sum, item) => sum + item.price, 0);

    },
    updateApplePrice() {
    // Iterate over cartItems to find and update the item
    this.cartItems.forEach(item => {
      if (item.name === 'Apple') {
        item.price =item.price+1; // Update the price
      }
    });
  }
  },
  computed: {
    // Compute the total price of all items in the cart
    totalPrice() {
      console.log("total method from computed proprerties");
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
    expesive(){
return this.cartItems.filter( item =>item.price >10);
    },
    // Format cart items with price formatting
    formattedCartItems() {
      return this.cartItems.map(item => ({
        ...item,
        price: item.price.toFixed(2) // Format price to two decimal places
      }));
    },
    fullName: {
      get() {
        return `${this.firstName} ${this.lastName}`;
      },
      set(value) {
        const names = value.split(' ');
        this.firstName = names[0] || '';
        this.lastName = names[1] || '';
      }
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