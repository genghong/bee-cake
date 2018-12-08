<template>
   <div>
     <!--标题-->
     <div class="title">
       <span>沁香甜品</span>
       <p>采用天然优质材料</p>
     </div>
     <!--主体内容-->
     <div class="content">
        <ul>
           <li v-for="item in list">
                   <img :src="item.pic" @click="jumpList(item.name,item.price)" />
                   <div class="name">{{item.name}}</div>
                   <div class="price">￥{{item.price}}</div>
           </li>
        </ul>
     </div>
   </div>
</template>
<script>
     export default {
         data(){
             return {
                 list:[]
             }
         },
         methods:{
            getProList(){
                var url="http://localhost:4000/indexList";
                this.$http.get(url).then(result=>{
                    this.list=result.body.slice(12);
                })
            } ,
            jumpList(name,price){
                this.$router.push("/home/prolist/list?name="+name+"&price="+price);
            } 
         },
         mounted(){
             this.getProList();
         }
     }
</script>
<style>
.title{
    width:100%;
    height:50px;
    text-align:center;
    padding:5px;
    color:#3c2314;  
}
.title>span{
font-weight:bold;
}
.content{
    width:100%;
}  
.content>ul{
    width:100%;
    display:flex;
    justify-content:space-between;
    flex-wrap:wrap;
    background:#fff;
}
.content>ul>li{
    width:187px;
    height:195px;
    margin-bottom:8px;
}
.content>ul>li img{
    width:100%;
    height:135px;
}
.content .name{
    width:100%;
    height:21px;
    color:#3c2312;
    font-size:16px;
    text-align:center; 
}
.content .price{
    width:165px;
    height:30px;
    border:1px solid #e7e7e7;
    margin-left:15px;
    margin-top:7px;
    text-align:center;
    line-height:30px;
    color:#3c2312;
    font-size:13px;
}
</style>