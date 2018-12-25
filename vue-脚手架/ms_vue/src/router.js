import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Login from './views/Login.vue'

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/', redirect: "/Index"},
    { path: '/Index', component: Index},
    { path: '/Login', component: Login},
  ]
})
