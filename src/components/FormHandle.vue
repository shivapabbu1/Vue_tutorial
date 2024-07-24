<template>
  <div>
    <h1>Hello, {{ formvalue.name }}</h1>
    <p>{{ formvalue.summary }}</p>
    <p>{{ formvalue.country }}</p>
    <p>{{ formvalue.locations }}</p>
    <p>{{ formvalue.remote }}</p>
    <p>{{ formvalue.skills.join(', ') }}</p>
    <p>{{ formvalue.exp }}</p>

    <form @submit.prevent="submitform">
      <!-- Name Input with .trim modifier -->
      <label for="name">Name</label>
      <input type="text" id="name" v-model.trim="formvalue.name" />


      <hr>

      <!-- Summary Textarea -->
      <label for="summary">Summary</label>
      <textarea id="summary" v-model="formvalue.summary"></textarea>

      <hr>

      <!-- Country Select -->
      <label for="coun">Country</label>
      <select id="coun" v-model="formvalue.country">
        <option value="">Select country</option>
        <option value="IND">India</option>
        <option value="USA">USA</option>
      </select>

      <hr>

      <!-- Locations Multi-Select -->
      <label for="loc">Locations</label>
      <select id="loc" multiple v-model="formvalue.locations">
        <option value="IND">India</option>
        <option value="USA">USA</option>
      </select>

      <hr>

      <!-- Remote Checkbox with .true-value and .false-value modifiers -->
      <input type="checkbox" v-model="formvalue.remote" true-value="Yes" false-value="No" />
      <label>Open to work Hybrid?</label>

      <hr>

      <!-- Skills Checkboxes -->
      <input type="checkbox" v-model="formvalue.skills" id="html" value="html" />
      <label for="html">HTML</label>
      <input type="checkbox" v-model="formvalue.skills" id="css" value="css" />
      <label for="css">CSS</label>
      <input type="checkbox" v-model="formvalue.skills" id="js" value="js" />
      <label for="js">JavaScript</label>

      <hr>

      <!-- Experience Radio Buttons -->
      <label>Experience:</label>
      <input type="radio" v-model="formvalue.exp" value="0-2" id="0-2" />
      <label for="0-2">0-2 years</label>
      <input type="radio" v-model="formvalue.exp" value="3-5" id="3-5" />
      <label for="3-5">3-5 years</label>

      <div>
        <button type="submit">Submit</button>
      </div>
    </form>
  </div>
</template>

<script>
import '../Styles.scss'

export default {
  

  name: "FormHandle",
  data() {
    return {
      formvalue: {
        name: '',
        summary: '',
        country: '',
        locations: [],
        remote: '',
        skills: [],
        exp: "",
      }
    };
  },
  methods: {
    submitform() {
      console.log("Form Values:", this.formvalue);
      // Optionally handle form submission here
    }
  },
};
</script>

