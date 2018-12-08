<template>
   <div class="homeContainer">   
      <!--轮播图-->
      <mt-swipe :auto="2000">
         <mt-swipe-item ><img src="../assets/rotate/mb.jpg" /></mt-swipe-item>
         <mt-swipe-item ><img src="../assets/rotate/mb (2).jpg" /></mt-swipe-item>
         <mt-swipe-item><img src="../assets/rotate/mb (1).jpg" /></mt-swipe-item>
          <mt-swipe-item><img src="../assets/rotate/mb（3）.jpg" /></mt-swipe-item>
      </mt-swipe>
      <!--中间部分-->
        <div class="conter">
            <div class="conter-box1">
                <div class="conter-title">
                    <img src="../assets/icon/ico_1.png" />
                    <span>人气推荐</span>
                </div>
                <ul>
                    <li v-for="item in list1">
                        <img :src="item.pic" @click="jumpList(item.name,item.price)"/>
                        <div class="name">{{item.name}}</div>
                        <span>￥{{item.price}}起</span>
                    </li>
                </ul>
            </div> 
            <div class="conter-box2">
                <div class="conter-title">
                    <img src="../assets/icon/ico_3.png" />
                    <span>咖啡下午茶</span>
                </div>
                <ul>
                    <li v-for="item in list2">
                        <img :src="item.pic" @click="jumpSmall(item.name,item.price,item.kg)"/>
                        <div class="name">{{item.name}}</div>
                        <span>￥{{item.price}}/{{item.kg}}</span>
                    </li>
                </ul>
            </div> 
             <div class="conter-box2">
                <div class="conter-title">
                    <img src="../assets/icon/ico_2.png" />
                    <span>精选材料</span>
                </div>
                <ul>
                    <li v-for="item in list3">
                        <router-link to="/home/food"><img :src="item.pic" /></router-link>
                        <div class="name">{{item.name}}</div>
                        <span>{{item.price}}</span>
                    </li>
                </ul>
            </div> 
        </div>   
   </div>
</template>
<script>
export default {
    data(){
        return{
            list1:[],
            list2:[],
            list3:[]
        }
    },
    methods:{
        getList(){
            var url="http://localhost:4000/indexList";
            this.$http.get(url).then(result=>{
                this.list1=result.body.slice(8,12);
                this.list2=result.body.slice(0,4);
                this.list3=result.body.slice(4,8);
            })
        },
        jumpList(name,price){
            this.$router.push("/home/prolist/list?name="+name+"&price="+price);
        },
        jumpSmall(name,price,kg){
            this.$router.push("/home/prolist/small?name="+name+"&price="+price+"&kg="+kg);
        }
    },
    created(){
       this.getList();
    }
}
</script>
<style>
   *{
       padding:0;
       margin:0;
       list-style:none;
   }
   .app-container{
       padding-top:0;
       padding-bottom:0;
       position:relative;
   }
  
   .homeContainer .mint-swipe{
       height:375px ;
   }
   .homeContainer .mint-swipe img{
       width:100%;
       height:100%;
   }
   .conter{
      background:#fff;
   }
   .conter-box1{
       padding:10px;     
   }
   .conter-title{
       height:32px;
       margin-top:10px;
       margin-bottom:15px;
   }
   .conter-title>span{
       font-size:15px;
       color:#3c2314;
       float:left;
       line-height:32px;
   }
   .conter-title>img{
       width:30px;
       height:30px;
       margin-left:10px;
       margin-right:10px;
       float:left;
   }
   .conter-box1>ul{
       flex-wrap:wrap;
       display:flex;
       justify-content:space-between;
   }
   .conter-box1>ul>li{
       width:163px;
       height:165px;
       margin-bottom:15px;
       text-align:center;
        color:#3c2312;
   }
   .conter-box1>ul>li img{
       width:163px;
       height:117px;
   }
  .conter-box1 .name{
       width:100%;
       height:16px;
       font-size:15px;
       text-align:center; 
       color:#3c2314; 
   }
   .conter-box1>ul>li span{
       color:#AA8764;
       font-size:12px;
       line-height:17px;
   }
   .conter-box2{
        padding:10px;    
   }
   .conter-box2>ul{
      flex-wrap:wrap;
       display:flex;
       justify-content:space-between;
   }
   .conter-box2>ul>li{
       width:156px;
       height:207px;
       margin-bottom:10px;
       text-align:center;
       position:relative;
   }
   .conter-box2>ul>li img{
       width:156px;
       height:156px;
   }
   .conter-box2 .name{
       width:120px;
       height:35px;
       border:1px solid #e7e7e7;
       position:absolute;
       bottom:33px;
       left:20px;
       background:#fff;
       line-height:35px;
       color:#AA8764;
       font-size:13px;
   }
    .conter-box2>ul>li span{
        display:block;
        margin-top:15px;
        color:#3C2314;
        font-size:13px;
    }
</style> 