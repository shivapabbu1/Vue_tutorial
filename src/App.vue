<template>
  <div>
    <h1>Deep Watcher Example</h1>
    
    <!-- Input fields for nested properties -->
    <input v-model="user.name" type="text" placeholder="Enter name" />
    <input v-model.number="user.age" type="number" placeholder="Enter age" />
    
    <!-- Display messages -->
    <p>Name: {{ user.name }}</p>
    <p>Age: {{ user.age }}</p>
    <p v-if="message">{{ message }}</p> <!-- Display message if not empty -->
  </div>
</template>

<script>
export default {
  name: 'DeepWatcherExample',
  data() {
    return {
      user: {
        name: 'John Doe',
        age: 30
      },
      previousUser: null, // Track the previous user state
      message: '' // Data property for the change message
    };
  },
  watch: {
    // Deep watcher for the user object
    user: {
      handler(newUser) {
        // Check if previousUser is set
        if (this.previousUser) {
          // Check if any nested property has changed
          if (newUser.name !== this.previousUser.name) {
            this.message = `Name changed from ${this.previousUser.name} to ${newUser.name}.`;
          } else if (newUser.age !== this.previousUser.age) {
            this.message = `Age changed from ${this.previousUser.age} to ${newUser.age}.`;
          } else {
            this.message = 'No changes detected.';
          }
        } else {
          this.message = 'Initial load: No previous data to compare.';
        }

        // Update previousUser to the current state
        this.previousUser = { ...newUser };
      },
      deep: true,  // Enable deep watching
      immediate: true  // Run the watcher immediately upon component creation
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
  font-weight: bold;
}
</style>
