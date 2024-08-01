// src/router/index.js
import { createRouter, createWebHistory } from 'vue-router';
import Home from '../components/HomeApp.vue';
import About from '../components/AboutApp.vue';
import Contact from '../components/ContactApp.vue';
import CarView from '@/components/CarView.vue';
import DealerView from '@/components/DealerView.vue';
import ManfacturorView from '@/components/ManfacturorView.vue';

const routes = [
  { path: '/', 
    component: Home 
  },
  { path: '/about', 
    component: About 
  },
  { path: '/contact', 
    component: Contact 
  },
  { path: '/car/:id' ,
    component: CarView,
    children:[
      {
        path:'dealer',
        component:DealerView,
      },
      {
        path:'manufacturer',
        component:ManfacturorView,
      },
    ]
  
  }
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
