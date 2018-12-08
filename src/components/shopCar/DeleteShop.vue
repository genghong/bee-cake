<template>
   <div class="delete-app" v-show="show">
       <div class="delete-box">
           <div class="frame">
               <div class="frame-text">确定要删除吗？</div>
               <div class="frame-btn">
                   <span @click="deleteData">删除</span>
                   <span @click="hidBox">取消</span>
               </div>
           </div>
       </div>
   </div>
</template>
<script>
   export default {
       data(){
           return {
               
           }
       },props:["show"],
       methods:{
          hidBox(){
             this.$emit("transData");
          },
          deleteData(){
              this.$emit("delete");
          }
       },
       created(){

       }
   }
</script>
<style>
 .delete-box{
     width:100%;
     height:100%;
     position:absolute;
     top:0;
     left:0;
     background:rgba(0,0,0,0.4);
 }
 .frame{
     width:338px;
     height:173px;
     background:#fff;
     position:absolute;
     top:0;
     left:0;
     bottom:0;
     right:0;
     margin:auto;
     border-radius:5px;
     overflow:hidden;
 }
 .frame-text{
     width:100%;
     height:122px;
     text-align:center;
     line-height:122px;
     font-size:13px;
     color:#3c2314;
     border-bottom:1px solid #D0D0D0;
 }
 .frame-btn{
     width:100%;
     height:51px;
     background:#e7e7e7;
 }
 .frame-btn>span{
     float:left;
     width:168px;
     text-align:center;
     line-height:50px;
     font-size:14px;
     color:#3c2314;
 }
 .frame-btn>span:first-child{
     border-right:1px solid #D0D0D0;
 }
</style>