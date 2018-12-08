import Vue from 'vue'
import App from './App.vue'
import router from './router'
import'mint-ui/lib/style.css'
Vue.config.productionTip = false
import './lib/mui/css/mui.css'
import './lib/mui/css/icons-extra.css'
//引入vue-resource
import VueResource from "vue-resource"
//引入组件mintui库
import {Swipe,SwipeItem} from "mint-ui";
//注册指定组件
Vue.component(Swipe.name,Swipe);
Vue.component(SwipeItem.name,SwipeItem);
//注册所有组件
Vue.use(VueResource );


//创建vuex实例对象
import Vuex from "vuex"
Vue.use(Vuex);
var store=new Vuex.Store({
  state:{num:0},//购物车中商品数量
  mutations:{
    increment(state){state.num++},
    substract(state){state.num--}
  },
  getters:{
    optCount:function(state){
       return state.num;//返回共享数据
    }
  }
});
//注册

new Vue({
  router,
  render: h => h(App),store
}).$mount('#app')
