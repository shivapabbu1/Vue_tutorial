<template>
    <div>
      <h1>Profiles</h1>
      <ul v-if="profiles && profiles.length">
        <li v-for="profile in profiles" :key="profile.id">
          {{ profile.name }} - {{ profile.email }}
        </li>
      </ul>
      <p v-else>No profiles found.</p>
    </div>
  </template>
  
  <script>
  export default {
    name: 'ProfileList',
    data() {
      return {
        profiles: []
      };
    },
    created() {
      this.fetchProfiles();
    },
    methods: {
      async fetchProfiles() {
        try {
          const response = await fetch('https://jsonplaceholder.typicode.com/users');
          if (response.ok) {
            this.profiles = await response.json();
          } else {
            console.error('Error fetching profiles:', response.statusText);
          }
        } catch (error) {
          console.error('Error fetching profiles:', error);
        }
      }
    }
  };
  </script>
  
  <style scoped>
  h1 {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    color: #2c3e50;
    margin-bottom: 20px;
  }
  ul {
    list-style-type: none;
    padding: 0;
  }
  li {
    margin: 10px 0;
    padding: 10px;
    background-color: #f9f9f9;
    border: 1px solid #ddd;
    border-radius: 5px;
  }
  </style>
  