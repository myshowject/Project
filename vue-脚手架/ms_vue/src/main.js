import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import Header from './components/Header.vue'
import Footer from './components/Footer.vue'
import Search from './components/Search.vue'
// 引入axios库(VueResource)
import axios from 'axios'

//跨域保存session值
axios.defaults.withCredentials = true
//注册组件为全局对象
Vue.prototype.axios = axios

Vue.config.productionTip = false
Vue.component("ms-header",Header);
Vue.component("ms-footer",Footer);
Vue.component("ms-search",Search);

//引入vue-resource库
import VueResource from 'vue-resource';
// 注册vue-resource库
Vue.use(VueResource);
//设置请求的根路径
Vue.http.options.root = "http://127.0.0.1:8000";
//全局设置post 时候表单application/x-www-form-urlencoded将提交数据进行转码操作
Vue.http.options.emulateJSON = true;
//跨域访问保存session值选项
Vue.http.options.withCredentials = true
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
