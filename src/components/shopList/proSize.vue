<template>
  <div class="pro-size" v-show="show">
       <div class="SizeBox">
           <div class="name">
              <span>{{this.name}}</span>
              <span @click="hidList">×</span>
           </div>
           <div class="size-box">
              <div class="size-img"><img :src="detail.pic" /></div>
              <div class="detail">
                 <ul>
                    <li>
                       <img src="../../assets/icon/sizes25.png" />
                       <span>{{detail.kg}}</span>
                    </li>
                    <li>
                        <img src="../../assets/icon/covers25.png" />
                        <span>{{detail.tab}}</span>
                    </li>
                    <li>
                       <img src="../../assets/icon/numbers25.png" />
                       <span>{{detail.peo}}</span>
                    </li>
                    <li>￥{{detail.price}}/<span>{{detail.size}}</span></li>
                 </ul>
              </div>
           </div>
           <div class="size-table">
               <ul>
                   <li v-for="item in list" @click="getData(item.size)" >{{item.size}}<img src="../../assets/icon/selected.png"  class="icon" v-if="detail.size==item.size"/></li>
               </ul> 
           </div>
           <div class="addBtn" @click="addCart">加入购物车</div>
       </div>
  </div>
</template>
<script>
   export default {
       data(){
           return {
               list:[],
               firstSize:"",
               detail:[],
               iconClass:0
            }
       },props:["show","name"],
       methods:{
          hidList(){
             this.$emit("hid");
          },
          getSize(){
              var url="http://localhost:4000/size?name="+this.name;
              this.$http.get(url).then(result=>{
                  this.list=result.body;
                  this.firstSize=this.list[0].size;
                  this.$http.get("http://localhost:4000/sizeData?name="+this.name+"&size="+this.firstSize).then(result=>{
                      this.detail=result.body[0];
                      this.$emit("trans",this.detail);
                  })
              })
          },
          getData(size){
                var url="http://localhost:4000/sizeData?name="+this.name+"&size="+size;
                this.$http.get(url).then(result=>{
                this.detail=result.body[0];
                this.$emit("trans",this.detail);
             })
          },
          addCart(){
              this.$router.push("/home/cart?name="+this.name);
              var url="http://localhost:4000/shopCart?name="+this.name+"&size="+this.detail.size+"&price="+this.detail.price;
             this.$http.get(url).then(result=>{
                 this.$store.commit("increment");
             })
          }
       },
       created(){
           this.getSize();    
       },
   }
</script>
<style>
 .pro-size{
     width:100%;
     height:800px;
     background:rgba(0,0,0,0.3);
     position:fixed;
     top:0;
     left:0;
     z-index:1;
 }
 .SizeBox{
     width:100%;
     height:336px;
     background:#fff;
     position:fixed;
     bottom:0;
     left:0;
 }
 .SizeBox .name{
     height:37px;
     color:#3c2312;
     margin-left:15px;
     line-height:37px;
     display:flex;
     justify-content:space-between;
 }
 .SizeBox .name>span:last-child{
    font-size:25px;
    line-height:37px;
    margin-right:15px;
 }
 .size-box{
     width:100%;
     height:130px;
     display:flex;
     justify-content:space-between;
 }
 .size-img{
     width:187px;
     height:112px;
 }
 .size-img>img{
     width:100%;
     height:100%;
 }
 .detail{
     width:186px;
     height:100%;
 }
 .detail>ul>li{
     height:25px;
 }
 .detail>ul>li>span{
    font-size:12px;
    margin-left:8px;
    color:#3c2314;
 }
  .detail>ul>li:last-child{
      margin-top:15px;
      font-size:20px;
      color:#AA8764;
  }
  .detail>ul>li:last-child span{
      margin-left:0;
  }
  .size-table{
      width:100%;
      height:100px;
     padding:10px;
  }
  .size-table>ul{
      display:flex;
      justify-content:start;
      flex-wrap:wrap;
      padding-left:25px;
      border-bottom:1px solid #e7e7e7;
  }
  .size-table>ul>li{
      width:69px;
      height:37px;
      margin-right:10px;
      margin-bottom:10px;
      border:1px solid #c8B49B;
      text-align:center;
      line-height:37px;
      font-size:14px;
      position:relative;
  }
  .icon{
      position:absolute;
      right:0;
      bottom:0;
      display:block;
  }
  .addBtn{
      width:330px;
      height:35px;
      background:#3c2314;
      margin:25px auto;
      line-height:35px;
      text-align:center;
      color:#FBF5DD;
      font-size:14px;
  }

</style>