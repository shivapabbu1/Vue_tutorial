<template>
    <div>
      <h1>Hello from Options {{ name1 }}</h1>
  
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
  export default {
    name: 'OptComponent',
    data() {
      return {
        name1: 'shivapabbu',
        newPerson: {
          fname: '',
          lname: '',
          role: ''
        },
        people: []
      };
    },
    computed: {
      // Computed property to get the total count of people
      totalPeople() {
        return this.people.length;
      }
    },
    methods: {
      addPerson() {
        this.people.push({ ...this.newPerson });
        this.newPerson.fname = '';
        this.newPerson.lname = '';
        this.newPerson.role = '';
      },
      removePerson(index) {
        this.people.splice(index, 1);
      },
      // Method to format person's details
      formattedPerson(person) {
        return `${person.fname} ${person.lname} - ${person.role}`;
      }
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
  