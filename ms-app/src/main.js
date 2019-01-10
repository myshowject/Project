import Vue from 'vue'
import App from './App.vue'
import vuex from 'vuex'
import router from './router'
import store from './store'
import axios from 'axios'
import 'mint-ui/lib/style.css'

Vue.use(vuex);
Vue.config.productionTip = false
// 修改配置信息 保存session值
axios.defaults.withCredentials = true
// 注册为全局组件
Vue.prototype.axios = axios;
// 导入 MUI 的样式表
import './lib/mui/css/mui.css'
// 还需要加载图标字体文件
import './lib/mui/css/icons-extra.css'
// 1：引入mint-ui组件库
import {Header,Swipe,SwipeItem,Button} from 'mint-ui'
Vue.component(Header.name,Header);
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
Vue.component(Button.name,Button);

Vue.filter("datatimeFilter",function(val){
  var data = new Date(val);
  var y = data.getFullYear();
  var m = data.getMonth()+1;
  var d = data.getDate();
  m <10 && (m = "0" + m);
  d <10 && (d = "0" + d);
  return `${y}-${m}-${d}`;
})
Vue.filter("dtimeFilter",function(val){
  var time = val;
  var m = Math.floor(time/60%60);
  var s = Math.floor(time%60);
  m < 10 && (m = '0' + m);
  s < 10 && (s = '0' + s);
  return `${m}:${s}`;
})

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
