// src/router/index.js
import { createRouter, createWebHistory } from 'vue-router';
import Home from '../components/HomeApp.vue';
import About from '../components/AboutApp.vue';
import Contact from '../components/ContactApp.vue';

const routes = [
  { path: '/', component: Home },
  { path: '/about', component: About },
  { path: '/contact', component: Contact }
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
