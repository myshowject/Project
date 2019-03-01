import Vue from 'vue'
import Router from 'vue-router'
import Home from './components/tabbar/Home.vue'
import Videorecipes from './components/Videorecipes/Videorecipes.vue'
import Videoinfo from './components/Videorecipes/Videoinfo.vue'
import Practice from './components/Practice/Practice.vue'

Vue.use(Router)

export default new Router({
  routes: [
    { path: '/', component: Home },
    { path: '/home', component: Home },
    { path: '/Videorecipes', component: Videorecipes },
    { path: '/Videoinfo', component: Videoinfo },
    { path: '/Practice', component: Practice },
  ]
})
