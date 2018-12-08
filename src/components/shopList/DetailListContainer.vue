<template>
   <div class="list-container">
    <!--轮播图-->
       <mt-swipe :auto="2000">
         <mt-swipe-item v-for="item in scro"><img :src="item.pic" /></mt-swipe-item>
       </mt-swipe>
    <!--详细数据-->
        <div class="detailInfo">
           <div class="name-size">
              <div class="name"> {{name}}</div>
              <div class="size" @click="showList">{{data.size}}| 更多规格</div>
           </div>
           <div class="selSize">{{data.size}} | {{data.peo}} ｜{{data.tab}}</div>
           <div class="sizePrice">￥{{data.price}}</div>
        </div>
    <!--介绍图片-->
        <div class="imgBox">
            <ul>
               <li v-for="item in picture">
                  <img :src="item.pic">
               </li>
            </ul>
        </div>
    <!--商品评论-->
        <div class="commentInfo">
           <div class="commentTitle">
              <p>商品评价</p>
              <span>好评度%95</span>
           </div>
           <div class="commentBox">
               <ul>
                  <li v-for="item in newList">
                     <div class="user-timer">
                        <div class="user">{{item.tel}}</div>
                        <div class="timer">{{item.data}}</div>
                     </div>
                     <div class="proBox">
                        <div class="pro">
                            <span>口感</span>
                            <span>
                                <img src="../../assets/icon/yellow_oval_1.png" />
                                <img src="../../assets/icon/yellow_oval_1.png" />
                                <img src="../../assets/icon/yellow_oval_1.png" />
                                <img src="../../assets/icon/yellow_oval_1.png" />
                                <img src="../../assets/icon/yellow_oval_1.png" />
                            </span>
                        </div>
                        <div class="pro">
                            <span>包装</span>
                            <span>
                                <img src="../../assets/icon/yellow_oval_1.png" />
                                <img src="../../assets/icon/yellow_oval_1.png" />
                                <img src="../../assets/icon/yellow_oval_1.png" />
                                <img src="../../assets/icon/yellow_oval_1.png" />
                                <img src="../../assets/icon/yellow_oval_1.png" />
                            </span>
                        </div>
                     </div>
                     <div class="text">{{item.text}}</div>
                  </li>
               </ul>
           </div>
           <div class="btn" @click="getMore">查看更多</div>
        </div>
    <!--尺寸选择-->
        <comment-box :show="show" @hid="hidList" :name="name" @trans="transData"></comment-box>
   </div>
</template>
<script>
//引入子组件
   import proSize from "./proSize.vue"
   export default {
       data(){
           return{
             scro:[],
             name:[],
             price:[],
             picture:[],
             newList:[],
             pno:0,
             show:false,
             data:[]
           }
       },
       methods:{
          getList(){
              this.name=this.$route.query.name;
              this.price=this.$route.query.price;
              var url="http://localhost:4000/proDetail?name="+this.name;
              this.$http.get(url).then(result=>{
                  this.scro=result.body.scro;
                  this.picture=result.body.picture;
              })
          },
          getNewList(){
              var url="http://localhost:4000/newList?pno="+this.pno;
              this.$http.get(url).then(result=>{
                   var rows=this.newList.concat(result.body);
                   this.newList=rows;
              })
          },
          getMore(){
             this.pno++;
             this.getNewList();
          },
          showList(){
              this.show=true;
          },
          hidList(){
              this.show=false;
          },
          transData(data){
              this.data=data;
          }
       },
       created(){
          this.getList() ;
          this.getNewList();
       },components:{
           //注册子组件
        "comment-box":proSize 
       }
   }
</script>
<style>
   .list-container{
       background:#fff;
   }
   .list-container .mint-swipe{
       height:268px ;
   }
   .list-container .mint-swipe img{
       width:100%;
       height:100%;
   } 
   .detailInfo{
       width:100%;
       height:160px;
       padding:30px 15px 0 15px;
       background:#fff;
   } 
   .name-size{
       height:36px;
       line-height:36px;
   }
  .name-size .name{
       float:left;
       font-size:18px; 
       color:#3c2312;  
   }
  .name-size .size{
    float:right;
    width:127px;
    height:34px;
    font-size:14px;
    border:1px solid #e7e7e7;
    text-align:center;
  }
   .selSize{
       font-size:13px;
       margin-top:10px;
       color:#3c2312; 
   }
   .sizePrice{
       margin-top:10px;
       font-size:25px;
       color:#AA8764;
   }
   .commentInfo{
       width:100%;
       margin-top:30px;
       padding:15px;
   }
   .commentTitle>p{
       font-size:15px;
       color:#3c2312;
      margin-bottom:0;
   }
   .commentTitle>span{
       font-size:8px;
       color:#AA8764;
   }
   .imgBox>ul>li{
       width:100%;
       height:240px;
       margin:0;
   }
   .imgBox>ul>li>img{
       width:100%;
       height:100%;
   }
   .commentBox{
       margin-top:15px;
       border-top:1px solid #e7e7e7;
   }
   .user-timer{
       display:flex;
       justify-content:space-between;
   }
   .user-timer .user{
       color:#3c2312;
       font-size:14px;
   }
   .user-timer .timer{
       font-size:12px;
       color:#aaa;
   }
   .commentBox>ul>li{
       padding:10px 10px 10px 0;
       border-bottom:1px solid #e7e7e7;
   }
   .pro{
     height:23px;  
   }
   .pro>span{
       font-size:13px;
       color:#aaa;
       margin-right:10px;
   }
   .pro>span>img{
       width:9px;
       height:9px;
       margin-right:3px;
   }
   .text{
       margin-top:7px;
      color:#3c2312;
      font-size:13px;
   }
   .btn{
       width:113px;
       height:30px;
       border:1px solid #e7e7e7;
       color:#3c2312;
       text-align:center;
       line-height:30px;
       font-size:15px;
       margin:15px auto;
   }
</style>
