import Vue from 'vue'
import Router from 'vue-router'
import Index from './views/Index.vue'
import Login from './views/Login.vue'
import Regist from './views/Regist.vue'
import Products from './views/Products.vue'

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/', redirect: "/Index"},
    { path: '/Index', component: Index},
    { path: '/Login', component: Login},
    { path: '/Regist', component: Regist},
    { path: '/Products/:kwords', component: Products},
  ]
})
