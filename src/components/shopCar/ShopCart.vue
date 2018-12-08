<template>
    <div>
       <div class="carList">
            <ul>
                <span class="clearbox" v-show="hid">你的购物车空啦·······</span>
                <li v-for="item in shopList">
                    <div class="shopImg"><img :src="item.md" /></div>
                    <div class="shhopData">
                        <div class="shopName">
                            <span>{{item.name}}</span>
                            <div class="butt">
                                <i @click="minus(item.lid)">-</i>
                                <span>{{item.num}}</span>
                                <i @click="add(item.lid)">+</i>
                            </div>
                        </div>
                        <div class="size">{{item.size}}</div>
                        <div class="delete" @click="showBox(item.lid)">删除</div>
                        <span class="price">{{item.price}} / 件</span>
                        <span class="count">￥{{(item.price*item.num).toFixed(2)}}</span>
                    </div>
                </li>
            </ul>
       </div>
       <div class="pay">
            <span>实付:{{getSubTotal}}</span>
            <div class="paybtn">下单</div>
       </div>
       <!--删除数据部分-->
      <delete-box :show="show" @transData="hidBox" @delete="deleteData"></delete-box>
    </div>   
</template>
<script>
//引入子组件
import deleteShop from "./DeleteShop.vue"
   export default {
       data(){
           return {
            shopList:[],
            show:false,
            lid:[],
            hid:true
           }
       },
       methods:{
           
           deleteData(){
               this.show=false;
               this.$http.get("http://localhost:4000/deleteData?lid="+this.lid).then(result=>{ 

               });
                this.getShopList();     
           },
           showBox(lid){
                this.lid=lid;
                this.show=true;
           },
           hidBox(){
               this.show=false;
           },
           getShopList(){
               this.$http.get("http://localhost:4000/shopList").then(result=>{
                   if(result.body.length!=0){
                      this.hid=false;
                   }else{
                       this.hid=true;
                   }
                  this.shopList=result.body;
               })
           },
           minus(lid){
               for(var item of this.shopList){
                   if(item.lid==lid){
                       if(item.num==1){
                           return;
                       }else{
                       item.num--;
                       this.$store.commit("substract");
                       break;
                       }
                   }
               }
           },
           add(lid){  
              for(var item of this.shopList){
                  if(lid==item.lid){
                     item.num++;
                      this.$store.commit("increment");
                     break;
                  }   
              }   
           }
       },
       computed:{
          getSubTotal:function(){
              var total=0;
              for( var item of this.shopList){
                 total+=item.price*item.num;
              }
              return total.toFixed(2);
          }
       },
       created(){
          this.getShopList();
       },
       mounted(){
           this.getShopList(); 
       },components:{
           //注册子组件
        "delete-box":deleteShop
       }
   }
</script>
<style>
  .clearbox{
      text-align:center;
      line-height:300px;
  }
  .carList{
      background:#fff;
      border-top:1px solid #e7e7e7;
      padding-left:20px;
      height:478px;
  }
  .carList>ul>li{
      width:100%;
      height:130px;
      border-bottom:1px solid #e7e7e7;
      padding:15px 0;
      display:flex;
      justify-content:space-between;
  }
  .shopImg{
      width:80px;
      height:80px;
      border:1px solid #e7e7e7;
  }
  .shopImg>img{
      width:100%;
      height:100%;
  }
  .shhopData{
     width:260px;
     height:100px;
  }
  .shopName{
      height:24px;
  }
   .shopName>span{
     float:left;
     font-size:14px;
     color:#3c2312;
   }
   .butt{
       float:right;
       width:80px;
       display:flex;
       justify-content:space-between;
       line-height:24px;
       text-align:center;
       margin-right:20px;
   }
   .butt>i{
       display:block;
       width:24px;
       height:24px;
       border:1px solid #e7e7e7;
       font-weight:bold;
   }
  .size{
      font-size:12px;
      color:#AA8764;
  }
  .delete{
      margin-top:5px;
      height:20px;
      border-bottom:1px solid #e7e7e7;
      text-align:right;
      font-size:13px;
      padding-right:20px;
      color:#aaa;
  }
  .count{
      color:#AA8764;
      text-align:right;
      margin-right:20px;
      margin-top:10px;
      float:right;
  }
  .price{
      color:#3c2314;
      margin-top:10px;
      float:left;
      font-size:13px;
  }
  .pay{
      width:100%;
      height:50px;
      border-top:1px solid #e7e7e7;
      display:flex;
      justify-content:flex-end;
      text-align:center;
      line-height:50px;
      position:fixed;
      left:0;
      bottom:0;
      background:#fff;
  }
  .paybtn{
      width:100px;
      background:#3c2314;
      color:#FBF5DD;
  }
</style>