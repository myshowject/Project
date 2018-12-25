import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    islogin:false,
    uname:''
  },
  mutations: {
    signin(state,uname){
      this.state.islogin=true;
      this.state.uname=uname;
    },
    signout(){
      this.state.islogin=false;
      this.state.uname="";
    },
    // isLogin(){}
  },
  actions: {

  }
})
