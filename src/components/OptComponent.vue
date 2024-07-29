<template>
  <div>
    <h1>Hello from Options {{ name1 }}</h1>

    <!-- Form to add new person -->
    <form @submit.prevent="addPerson">
      <input v-model="newPerson.fname" placeholder="First Name" required />
      <input v-model="newPerson.lname" placeholder="Last Name" required />
      <input v-model="newPerson.role.name" placeholder="Role Name" required />
      <input v-model="newPerson.role.description" placeholder="Role Description" required />
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
        role: {
          name: '', // Role name
          description: '' // New role property
        }
      },
      people: [] // Array of people with nested properties
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
      this.people.push({
        ...this.newPerson,
        details: { joined: new Date().toISOString() } // Adding a nested property
      });
      // Reset the newPerson data
      this.resetNewPerson();
    },
    removePerson(index) {
      this.people.splice(index, 1);
    },
    formattedPerson(person) {
      return `${person.fname} ${person.lname} - ${person.role.name}: ${person.role.description} (Joined: ${person.details.joined})`;
    },
    resetNewPerson() {
      this.newPerson = {
        fname: '',
        lname: '',
        role: {
          name: '', // Reset role name
          description: '' // Reset role description
        }
      };
    }
  },
  watch: {
    // Watch for changes in the 'newPerson' properties
    'newPerson.fname': function(newVal, oldVal) {
      console.log(`New person's first name changed from "${oldVal}" to "${newVal}"`);
    },
    'newPerson.lname': function(newVal, oldVal) {
      console.log(`New person's last name changed from "${oldVal}" to "${newVal}"`);
    },
    // Deep watcher for the 'newPerson.role' object
    'newPerson.role': {
      handler(newVal, oldVal) {
        console.log(`Role object changed:`, { old: oldVal, new: newVal });
      },
      deep: true // Watches changes at any level within the 'role' object
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
