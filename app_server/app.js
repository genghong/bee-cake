const express=require("express");
const bodyParser=require('body-parser');
const pool=require("./pool");
//创建服务器
var app=express();
//引入跨域模块
const cors=require("cors");
//配置允许那个程序跨域访问 脚手架 
app.use(cors({
    origin:["http://localhost:3001","http://127.0.0.1:3001"],
    credentials:true
}));
//监听端口
app.listen(4000);
//托管静态资源
app.use(express.static(__dirname+"/public"));
app.use(bodyParser.urlencoded({
    extended:false
}));
//1.首页商品列表
app.get("/indexList",(req,res)=>{
    var sql="select * from ck_cake";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
//2.商品详情
app.get("/proDetail",(req,res)=>{
    var name=req.query.name;
    var out={
        scro:[],
        picture:[]
    };
    var sql1="select * from rotate_pic where fam_name=?";
    var sql2="select * from detail_pic where fam_name=?";
    Promise.all([
        new Promise(function(open){
            pool.query(sql1,[name],(err,result)=>{
                if(err) throw err;
                out.scro=result;
                open();
            })
        }),
        new Promise(function(open){
            pool.query(sql2,[name],(err,result)=>{
                if(err) throw err;
                out.picture=result;
                open();
            })
        })
    ]).then(function(){
        res.send(out);
    })  
})
//3.商品评论
app.get("/newList",(req,res)=>{
   var list=[
       {lid:1,tel:"4568****",data:"2018-05-12",text:"很好，多次购买"},
       {lid:2,tel:"58ac****",data:"2017-12-12",text:"好....."},
       {lid:3,tel:"8458****",data:"2018-08-12",text:"老顾客，赞..."},
       {lid:4,tel:"569v****",data:"2018-05-12",text:"多次购买，棒棒棒！！！"},
       {lid:5,tel:"4568****",data:"2018-04-09",text:"非常棒，分量很足，女朋友非常喜欢"},
       {lid:6,tel:"852d****",data:"2018-05-23",text:"服务热情"},
       {lid:7,tel:"4896****",data:"2018-05-12",text:"口味很好，酸甜可口，清淡宜人"},
       {lid:8,tel:"1485****",data:"2018-05-16",text:"一如既往的好吃"},
       {lid:9,tel:"dc41****",data:"2018-02-12",text:"只能用完美来形容了！就是这样！"},
       {lid:10,tel:"dx58****",data:"2018-06-12",text:"不是第一次吃啦 还会再来"},
       {lid:11,tel:"4568****",data:"2018-05-23",text:"蛋糕非常好吃！"},
       {lid:12,tel:"7850****",data:"2018-01-12",text:"赞！！！"},
   ];
   var pno=req.query.pno;
   var pageSize=3;
   var count=Math.ceil(list.length/pageSize);
   var content=list.slice(pno*3,pno*3+3);
   res.send(content);
})
//4.商品尺寸
app.get("/size",(req,res)=>{
    var name=req.query.name;
    var sql="select * from ck_size where fam_name=?";
        pool.query(sql,[name],(err,result)=>{
            if(err) throw err;
            res.send(result);
            })  
})
//5.不同尺寸对应的数据
app.get("/sizeData",(req,res)=>{
    var name=req.query.name;
    var size=req.query.size;
    var sql="select * from ck_size where fam_name=? and size=?";
    pool.query(sql,[name,size],(err,result)=>{
        if(err) throw err;
        res.send(result);
        })
})
//6.添加购物车
app.get("/shopCart",(req,res)=>{
    var name=req.query.name;
    var size=req.query.size;
    var price=req.query.price;
    var sql="insert into ck_cart values (null,?,?,?,1)";
        pool.query(sql,[name,size,price],(err,result)=>{
                if(err) throw err;
                res.end();
            })    
    })  
//7.查询购物车
app.get("/shopList",(req,res)=>{
   var sql="SELECT *,(select pic from ck_cake where ck_cake.name=ck_cart.name) as md from ck_cart";
   pool.query(sql,(err,result)=>{
       if(err) throw err;
       res.send(result);
   })
})
//8.删除数据
app.get("/deleteData",(req,res)=>{
    var lid=req.query.lid;
    var sql="delete  from ck_cart where lid=?";
    pool.query(sql,[lid],(err,result)=>{
        if(err) throw err;
        res.end();
    })
})
