import Vue from 'vue'
import Router from 'vue-router'
import Home from './components/tabbar/Home.vue'
import Videorecipes from './components/Videorecipes/Videorecipes.vue'

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/', component: Home },
    { path: '/home', component: Home },
    { path: '/recipes', component: Videorecipes },
  ]
})
