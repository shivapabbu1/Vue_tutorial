<template>
    <div class="card">
      <header class="card-header">
        <slot name="header"></slot>
      </header>
      <main class="card-body">
        <slot></slot>
      </main>
      <footer class="card-footer">
        <slot name="footer"></slot>
      </footer>
    </div>
  </template>
  
  <script>
  export default {
    name: 'CardWithSlot',
    data() {
      return {};
    }
  };
  </script>
  
  <style scoped>
  .card {
    border: 1px solid #ddd;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    max-width: 300px;
    margin: 20px auto;
  }
  
  .card-header {
    background-color: #f5f5f5;
    padding: 10px;
    border-bottom: 1px solid #ddd;
    font-size: 1.2em;
  }
  
  .card-body {
    padding: 20px;
  }
  
  .card-footer {
    background-color: #f5f5f5;
    padding: 10px;
    border-top: 1px solid #ddd;
    text-align: right;
  }
  </style>
  