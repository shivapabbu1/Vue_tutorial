<template>
  <div id="app">
    <!-- Displaying name with text interpolation -->
    <h2 class="greeting" :style="headerStyle">Hello, {{ name }}</h2>
    
    <!-- Using v-text to set the text content of the div -->
    <div class="name-container" v-text="name"></div>

    <!-- v-bind: Dynamically binding multiple attributes -->
    <p 
      v-bind:title="tooltipText"
      v-bind:id="elementId"
      v-bind:class="dynamicClass"
      v-bind:style="customStyle"
      class="tooltip"
    >
      Hover over me to see the tooltip!
    </p>

    <!-- v-model: Two-way binding for input elements -->
    <input v-model="inputText" placeholder="Type something here" class="input-field" />
    <p class="typed-text">You typed: {{ inputText }}</p>

    <!-- v-if: Conditionally rendering an element -->
    <p v-if="isVisible" class="conditional-paragraph">
      This paragraph is visible only if 'isVisible' is true.
    </p>

    <!-- v-show: Toggling visibility of an element -->
    <p v-show="isShow" class="visibility-paragraph">
      This paragraph is always in the DOM but hidden if 'isShow' is false.
    </p>

    <!-- v-for: Rendering a list of items -->
    <ul class="item-list">
      <li v-for="item in items" :key="item.id" :style="itemStyle">{{ item.name }}</li>
    </ul>

    <!-- v-html: Rendering raw HTML content -->
    <p>Using v-html directive: <span v-html="rawHtml"></span></p>
  </div>
</template>

<script>
export default {
  name: 'App',
  data() {
    return {
      name: 'shivaprasad',
      tooltipText: 'This is a tooltip',
      elementId: 'tooltip',
      dynamicClass: 'highlighted',
      customStyle: {
        color: 'blue',
        fontSize: '20px',
        backgroundColor: 'lightgray'
      },
      inputText: '',
      isVisible: false,
      isShow: true,
      headerStyle: {
        color: 'green',
        fontSize: '28px'
      },
      itemStyle: {
        color: 'purple',
        fontWeight: 'bold'
      },
      items: [
        { id: 1, name: 'Item 1' },
        { id: 2, name: 'Item 2' },
        { id: 3, name: 'Item 3' }
      ],
      rawHtml: '<b>This text is bold</b> and <i>this is italic</i>'
    };
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}

/* Styling for greeting text */
.greeting {
  margin: 20px 0;
}

/* Styling for the name container */
.name-container {
  font-weight: bold;
  margin: 20px 0;
}

/* Styling for tooltip paragraph */
.tooltip {
  border: 1px solid #ddd;
  padding: 10px;
  margin: 20px 0;
}

/* Styling for highlighted class */
.highlighted {
  background-color: yellow;
  padding: 10px;
}

/* Styling for input field */
.input-field {
  padding: 10px;
  font-size: 16px;
  margin: 10px 0;
}

/* Styling for typed text */
.typed-text {
  font-size: 18px;
  color: #333;
}

/* Styling for conditional paragraph */
.conditional-paragraph {
  color: green;
  font-weight: bold;
}

/* Styling for visibility paragraph */
.visibility-paragraph {
  color: #666;
  font-style: italic;
}

/* Styling for item list */
.item-list {
  list-style-type: none;
  padding: 0;
  margin: 20px 0;
}

.item-list li {
  padding: 5px 0;
}
</style>
