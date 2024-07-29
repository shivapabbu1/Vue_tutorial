<template>
  <div>
    <h1>Hello from Composition ref {{ name1 }}</h1>

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
import { ref, computed, watch } from 'vue';

// Utility function for deep copying objects
// const deepCopy = (obj) => JSON.parse(JSON.stringify(obj));

export default {
  name: 'CompComponent',
  setup() {
    // Reactive data properties
    const name1 = ref('shivapabbu');
    const newPerson = ref({
      fname: '',
      lname: '',
      role: {
        name: '',
        description: ''
      }
    });
    const people = ref([]);

    // Computed property for total people count
    const totalPeople = computed(() => people.value.length);

    // Method to add a new person
    const addPerson = () => {
      people.value.push({
        ...newPerson.value,
        details: { joined: new Date().toISOString() }
      });
      resetNewPerson();
    };

    // Method to remove a person by index
    const removePerson = (index) => {
      people.value.splice(index, 1);
    };

    // Method to format person's details
    const formattedPerson = (person) => {
      return `${person.fname} ${person.lname} - ${person.role.name}: ${person.role.description} (Joined: ${person.details.joined})`;
    };

    // Method to reset new person form
    const resetNewPerson = () => {
      newPerson.value = {
        fname: '',
        lname: '',
        role: {
          name: '',
          description: ''
        }
      };
    };

    // Watchers for individual properties
    watch(() => newPerson.value.fname, (newVal, oldVal) => {
      console.log(`New person's first name changed from "${oldVal}" to "${newVal}"`);
    });

    watch(() => newPerson.value.lname, (newVal, oldVal) => {
      console.log(`New person's last name changed from "${oldVal}" to "${newVal}"`);
    });

    // Watcher for the deep change in role object
    watch(newPerson.value.role, (newVal, oldVal) => {
      console.log(`Role object changed:`, { old: oldVal, new: newVal });
    }, { deep: true });

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
