import Vue from 'vue';
import App from './App';
import router from './router';
import store from './store';
import './mock/index.js';  //
import './login.js' 
import './ui.js'

import axios from 'axios'  //引入axios
Vue.prototype.axios = axios  //全局注册,任何组件都能直接使用
//Vue.prototype.axios 这里的axios命名，是在组件里使用变量名 例 this.axios this.$https

Vue.config.productionTip = false;
var vm=new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})


