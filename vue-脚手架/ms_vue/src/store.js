import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    islogin:false
  },
  mutations: {
    signin(){this.islogin=true},
    signout(){this.islogin=false},
    // isLogin(){}
  },
  actions: {

  }
})
