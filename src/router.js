import Vue from 'vue'
import Router from 'vue-router'
import HelloContainer from "./components/HelloWorld.vue"
//引入自定义组件
import HomeContainer from "./components/HomeContainer.vue"
import proListContainer from "./components/proListContainer.vue"
import DetailListContainer from "./components/shopList/DetailListContainer.vue"
import smallList from "./components/shopList/smallList.vue"
import shopCart from "./components/shopCar/ShopCart.vue"
import goodFood from "./components/GoodFood.vue"
Vue.use(Router)
//配置访问自定义组件路径
export default new Router({
  routes: [
    {path:'/',component:HelloContainer},
    {path:'/home',component:HomeContainer},
    {path:'/home/prolist',component:proListContainer},
    {path:'/home/prolist/list',component:DetailListContainer},
    {path:'/home/prolist/small',component:smallList},
    {path:'/home/cart',component:shopCart},
    {path:'/home/food',component:goodFood}
  ]
})
