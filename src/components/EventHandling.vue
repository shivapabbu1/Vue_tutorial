<template>
  <div>
    <!-- Display and change name -->
    <h2>{{ name }}</h2>
    <button @click="changeName()">Change Name</button>
    <button @click="changeName(); increment()">Change Name and Increment</button>

    <!-- Display and manipulate count -->
    <div>
      <h2>{{ count }}</h2>
      <button @click="increment">Increment</button>
      <button @click="decrement">Decrement</button>
    </div>

    <!-- Event Modifiers -->
    <form @submit.prevent="handleSubmit">
      <input v-model="inputText" placeholder="Type something here" />
      <button type="submit">Submit</button>
    </form>

    <!-- Event Modifiers: .stop -->
    <button @click.stop="handleButtonClick">Click Me (with stop)</button>

    <!-- Passing Arguments to Event Handlers -->
    <button @click="handleClick('Hello', $event)">Click Me with Arguments</button>

    <!-- Inline Event Handlers -->
    <button @click="count += 1">Increase Count</button>

    <!-- Custom Events Example -->
    <div>
      <h2>Custom Events Example</h2>

      <!-- Button to trigger a custom event from child component -->
      <ChildComponent @custom-event="handleCustomEvent" />

      <!-- Display the received message from the custom event -->
      <p>Message from Child: {{ messageFromChild }}</p>
    </div>
  </div>
</template>

<script>
import ChildComponent from '../components/ChildComponent.vue'; // Ensure the correct path to ChildComponent

export default {
  name: 'EventHandling',
  
  data() {
    return {
      name: 'shivapabbu',
      count: 0,
      inputText: '',
      messageFromChild: ''
    };
  },
  
  methods: {
    changeName() {
      this.name = 'shivaprasad';
    },
    increment() {
      this.count += 1;
    },
    decrement() {
      this.count -= 1;
    },
    handleSubmit() {
      console.log('Form submitted with input: ' + this.inputText);
    },
    handleButtonClick() {
      console.log('Button clicked with stop modifier!');
    },
    handleClick(message, event) {
      console.log(message + ' - Event type: ' + event.type);
    },
    handleCustomEvent(message) {
      this.messageFromChild = message;
      console.log('Received message: ' + message);
    }
  },

  components: {
    ChildComponent
  }
};
</script>

<style>
/* Add any desired styling here */

/* Styling for name and count display */
h2 {
  margin: 20px 0;
}

/* Styling for buttons */
button {
  padding: 10px 15px;
  font-size: 16px;
  margin: 5px;
}

/* Styling for input field */
input {
  padding: 10px;
  font-size: 16px;
  margin: 5px;
}
</style>
