<template>
  <div id="app">
    <h2>hello.{{name}}</h2>
    <div v-text="name"></div>

    <!-- v-bind: Dynamically binding an attribute -->
  <p 
      v-bind:title="tooltipText"
      v-bind:id="elementId"
      v-bind:class="dynamicClass"
      v-bind:style="customStyle"
    >
      Hover over me to see the tooltip!
    </p>

    <!-- v-model: Two-way binding for input elements -->
    <input v-model="inputText" placeholder="Type something here" />
    <p>You typed: {{ inputText }}</p>

    <!-- v-if: Conditionally rendering an element -->
    <p v-if="isVisible">This paragraph is visible only if 'isVisible' is true.</p>

    <!-- v-show: Toggling visibility of an element -->
    <p v-show="isShow">This paragraph is always in the DOM but hidden if 'isShow' is false.</p>

    <!-- v-for: Rendering a list of items -->
    <ul>
      <li v-for="item in items" :key="item.id">{{ item.name }}</li>
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
        fontSize: '20px'
      },
      inputText: '',
      isVisible: false,
      isShow: true,
      color: 'red',
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
</style>
