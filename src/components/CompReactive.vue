<template>
    <div>
      <h1>Hello from REactive {{ state.name1 }}</h1>
  
      <!-- Form to add new person -->
      <form @submit.prevent="addPerson">
        <input v-model="state.newPerson.fname" placeholder="First Name" required />
        <input v-model="state.newPerson.lname" placeholder="Last Name" required />
        <input v-model="state.newPerson.role.name" placeholder="Role Name" required />
        <input v-model="state.newPerson.role.description" placeholder="Role Description" required />
        <button type="submit">Add Person</button>
      </form>
  
      <!-- Display total count of people -->
      <h2>Total People: {{ totalPeople }}</h2>
  
      <!-- List of people -->
      <ul>
        <li v-for="(person, index) in state.people" :key="index">
          {{ formattedPerson(person) }}
          <button @click="removePerson(index)">Remove</button>
        </li>
      </ul>
    </div>
  </template>
  
  <script>
  import { reactive, computed, watch } from 'vue';
  
  export default {
    name: 'CompReactive',
    setup() {
      // Reactive state properties
      const state = reactive({
        name1: 'shivapabbu',
        newPerson: {
          fname: '',
          lname: '',
          role: {
            name: '',
            description: ''
          }
        },
        people: []
      });
  
      // Computed property for total people count
      const totalPeople = computed(() => state.people.length);
  
      // Method to add a new person
      const addPerson = () => {
        state.people.push({
          ...state.newPerson,
          details: { joined: new Date().toISOString() }
        });
        resetNewPerson();
      };
  
      // Method to remove a person by index
      const removePerson = (index) => {
        state.people.splice(index, 1);
      };
  
      // Method to format person's details
      const formattedPerson = (person) => {
        return `${person.fname} ${person.lname} - ${person.role.name}: ${person.role.description} (Joined: ${person.details.joined})`;
      };
  
      // Method to reset new person form
      const resetNewPerson = () => {
        state.newPerson = {
          fname: '',
          lname: '',
          role: {
            name: '',
            description: ''
          }
        };
      };
  
      // Deep copy function using JSON methods
      const deepCopy = (obj) => {
        return JSON.parse(JSON.stringify(obj));
      };
  
      // Watchers for individual properties with deep copy for comparison
      watch(() => state.newPerson.fname, (newVal, oldVal) => {
        console.log(`New person's first name changed from "${oldVal}" to "${newVal}"`);
      });
  
      watch(() => state.newPerson.lname, (newVal, oldVal) => {
        console.log(`New person's last name changed from "${oldVal}" to "${newVal}"`);
      });
  
      watch(() => deepCopy(state.newPerson.role), (newVal, oldVal) => {
        console.log(`Role object changed:`, { old: oldVal, new: newVal });
      }, { deep: true });
  
      return {
        state,
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
  