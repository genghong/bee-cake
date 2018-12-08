<template>
 <div class="app-container">
    <!--顶部导航栏-->
        <div class="head">
            <ul>
                <li>
                    <router-link to="/home">
                        <img src="./assets/icon/ico_2.png" />
                       <p>首页</p>
                    </router-link>
                </li>
                <li>
                    <router-link to="/home/prolist">
                       <img src="./assets/icon/ico_ny.jpg" />
                       <p>甜点</p>
                    </router-link> 
                </li>
                <li>
                    <router-link to="/home/food">
                        <img src="./assets/icon/menu_3.jpg" />
                        <p>精选食材</p>
                    </router-link>
                </li>
                <li>
                    <router-link to="/home/cart">
                        <img src="./assets/icon/ico_cart.jpg" /> 
                        <p>购物车</p>
                    </router-link>
                </li>
            </ul> 
            <span>{{$store.getters.optCount}}</span>
        </div>
    <!--容器，显示不同组件-->
    <router-view></router-view>
    <!--底部-->
        <div class="foot">
            <img src="./assets/icon/footer.png" />
            <img src="./assets/icon/footer_logo.png" />
       </div>
 </div>
</template>
<script>    
</script>
<style>
   .app-container{
     padding-top:40px;
     padding-bottom:50px;
     overflow-x:hidden;
   }

 .mui-bar-tab .mui-tab-item-tao.mui-active {
    color: #007aff;
 }
.mui-bar-tab .mui-tab-item-tao {
    display: table-cell;
    overflow: hidden;
    width: 1%;
    height: 50px;
    text-align: center;
    vertical-align: middle;
    white-space: nowrap;
    text-overflow: ellipsis;
    color: #929292;
}
.mui-bar-tab .mui-tab-item-tao .mui-icon {
    top: 3px;
    width: 24px;
    height: 24px;
    padding-top: 0;
    padding-bottom: 0;
}

.mui-bar-tab .mui-tab-item-tao .mui-icon~.mui-tab-label {
   font-size:11px;
   display:block;
   overflow:hidden;
   text-overflow:ellipsis;
}
 .head{
       width:100%;
       height:60px;
       position:relative;
       padding:0 20px;
       background:#fff;
   } 
   .head>ul{
       display:flex;
       justify-content:space-between;
       text-align:center;
   }
   .head>ul>li img{
       width:35px;
       height:35px;
       margin-top:7px;
   }
   .head>ul>li p{
       font-size:5px;
       line-height:10px;
   }
   .head>span{
       display:block;
       width:18px;
       height:18px;
       background:#3c2314;
       border-radius:50%;
       color:#fff;
       line-height:18px;
       text-align:center;
       position:absolute;
       right:15px;
       bottom:17px;
   }
   .foot{
        width:100%;
        height:80px;
        background:#fff;
    }
    .foot>img{
        width:100%;
        height:100%;
    }
    .foot>img:last-child{
        width:105px;
        height:17px;
        position:absolute;
        bottom:30px;
        left:15px;
    }
</style>
