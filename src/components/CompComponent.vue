<template>
    <div>
      <h1>Hello from Composition {{ name1 }}</h1>
    
      <!-- Form to add new person -->
      <form @submit.prevent="addPerson">
        <input v-model="newPerson.fname" placeholder="First Name" required />
        <input v-model="newPerson.lname" placeholder="Last Name" required />
        <input v-model="newPerson.role" placeholder="Role" required />
        <button type="submit">Add Person</button>
      </form>
    
      <!-- Display total count of people -->
      <h2>Total People: {{ totalPeople }}</h2>
    
      <!-- List of people -->
      <ul>
        <li v-for="(person, index) in people" :key="index">
          {{ formattedPerson(person) }}
          <button @click="removePerson(index)">Remove</button>
        </li>
      </ul>
    </div>
  </template>
  
  <script>
  import { ref, reactive, computed } from 'vue';
  
  export default {
    name: 'CompComponent',
    setup() {
      const name1 = ref('shivapabbu');
  
      // Reactive object for new person input
      const newPerson = reactive({
        fname: '',
        lname: '',
        role: ''
      });
  
      // Reactive array to store people
      const people = ref([]);
  
      // Computed property to get the total count of people
      const totalPeople = computed(() => people.value.length);
  
      // Methods
      const addPerson = () => {
        if (newPerson.fname && newPerson.lname && newPerson.role) {
          people.value.push({ ...newPerson });
          newPerson.fname = '';
          newPerson.lname = '';
          newPerson.role = '';
        }
      };
  
      const removePerson = (index) => {
        people.value.splice(index, 1);
      };
  
      // Method to format person's details
      const formattedPerson = (person) => {
        return `${person.fname} ${person.lname} - ${person.role}`;
      };
  
      return {
        name1,
        newPerson,
        people,
        totalPeople,
        addPerson,
        removePerson,
        formattedPerson
      };
    }
  };
  </script>
  
  <style>
  /* Add component-specific styles here */
  input {
    margin: 10px 0;
    padding: 5px;
    font-size: 16px;
  }
  
  button {
    padding: 5px 10px;
    font-size: 16px;
    cursor: pointer;
  }
  </style>
  