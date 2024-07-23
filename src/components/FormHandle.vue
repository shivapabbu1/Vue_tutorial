<template>
  <div>
    <h1>Hello,{{ formvalue.name }}</h1>
    <p>{{formvalue.summary}}</p>
    <p>{{formvalue.country}}</p>
     <p>{{formvalue.locations}}</p>
     <p>{{formvalue.remote}}</p>
     <p>{{formvalue.skills}}</p>
    <form @submit="submitform">
      <label for="name">Name</label>
      
      
      <input type="text" id="name" v-model.trim="formvalue.name" />
    
    <hr>
    
     <label for="summary">Summary</label>
     <textarea id="summary" v-model="formvalue.summary"> </textarea>
    
    <hr>
  <label for="coun">COuntyr</label>
<select id="=coun" v-model="formvalue.country">
<option value=''>select country</option>
    <option value='IND'>IND</option>
    <option Value='USA'>USA</option>
</select>
<hr>
 <label for="loc">LOcations</label>
<select id="=loc"  multiple v-model="formvalue.locations">

    <option value='IND'>IND</option>
    <option Value='USA'>USA</option>
</select>
    
    <hr>
    <input type="checkbox" v-model="formvalue.remote" true-value="Yeahh" false-value="ohh no"
    />
    <label>OPen to work HYbri?</label>
    <hr>
     <input type="checkbox" 
     v-model="formvalue.skills"   id='html' value="html"
    />
    <label for='html' >HTML</label>
    <input type="checkbox" 
     v-model="formvalue.skills"  id='css' value="css"
    />
    <label for='css' >css</label>
    <input type="checkbox" 
     v-model="formvalue.skills"  id='js' value="js"
    />
    <label for='js' >js</label>
    
    <hr>
     <label>Experience:</label>
      <input type="radio" v-model="formvalue.exp" value="0-2" id="0-2" />
      <label for="0-2">0-2 years</label>
      <input type="radio" v-model="formvalue.exp" value="3-5" id="3-5" />
      <label for="3-5">3-5 years</label>
    <div>
        <button>submit</button>
    </div>
    </form>
 
  </div>
</template>

<script>
export default {
  name: "FormHandle",
  data() {
    return {
      formvalue: {
        name: '',
        summary: '',
        country: '',
        locations: [],

        remote:'',
        skills:[],
        exp:"",
      }
    };
  },
  methods: {
    submitform(event){
        event.preventDefault();
        console.log("formvalues:",this.formvalue);

    }
  },
};
</script>

<style>
/* Add any desired styling here */
</style>
