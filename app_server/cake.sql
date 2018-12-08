#客户端连接数据库时所用的编码
SET NAMES UTF8;
#删除数据库，如果之前存在的话
DROP DATABASE IF EXISTS cake;
#创建数据库
CREATE DATABASE cake CHARSET=UTF8;
#进入数据库
USE cake;
#创建蛋糕表
CREATE TABLE ck_cake(
    pid int(11) PRIMARY KEY AUTO_INCREMENT,
    pic varchar(128),
    name varchar(50),
    price varchar(50),
    kg varchar(10)    
);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/4146.jpg","苹果夹心芝士","38.8","108g");
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/4144.jpg","奶香轻乳酪","43.9","230g");
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/4145.jpg","牛乳芝士盒子蛋糕","35.8","135g");
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/4147.jpg","原味蛋糕卷","38.8","335g");
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2815.jpg","法国芙蓉巧克力","巧克力",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2816.jpg","意大利Alba松露油","松露油",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2817.jpg","加拿大枫糖","枫糖",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2818.jpg","健康密码-蜂蜜","蜂蜜",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2134.jpg","桃芝 | 樱桃芝士蛋糕","256",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2059.jpg","回归 | 90蛋糕","225",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2126.jpg","星空 | 黑森林蛋糕","225",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2089.jpg","思念 | 缤纷乐园蛋糕","295",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2875.jpg","初心 | 牛油果低脂蛋糕","335",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2027.jpg","向往 | 酸樱桃椰蓉","295",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2206.jpg","简单 | 蜂蜜","355",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2198.jpg","相伴 | 奶油杏仁","225",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/3833.jpg","皓月 | 浓情凝聚(四种口味)","315",null);
INSERT INTO ck_cake VALUES (null,"http://127.0.0.1:4000/img/proct/2190.jpg","珍贵 | 芒果慕斯","335",null);
#创建商品轮播图片表
CREATE TABLE rotate_pic(
    Iid int(11) PRIMARY KEY AUTO_INCREMENT,
    fam_name varchar(30),
    pic varchar(128)
);
INSERT INTO rotate_pic VALUES (null,"桃芝 | 樱桃芝士蛋糕","http://127.0.0.1:4000/img/rotate/2131.jpg");
INSERT INTO rotate_pic VALUES (null,"桃芝 | 樱桃芝士蛋糕","http://127.0.0.1:4000/img/rotate/2132.jpg");
INSERT INTO rotate_pic VALUES (null,"桃芝 | 樱桃芝士蛋糕","http://127.0.0.1:4000/img/rotate/2133.jpg");
INSERT INTO rotate_pic VALUES (null,"回归 | 90蛋糕","http://127.0.0.1:4000/img/rotate/2056.jpg");
INSERT INTO rotate_pic VALUES (null,"回归 | 90蛋糕","http://127.0.0.1:4000/img/rotate/2057.jpg");
INSERT INTO rotate_pic VALUES (null,"回归 | 90蛋糕","http://127.0.0.1:4000/img/rotate/2058.jpg");
INSERT INTO rotate_pic VALUES (null,"星空 | 黑森林蛋糕","http://127.0.0.1:4000/img/rotate/2123.jpg");
INSERT INTO rotate_pic VALUES (null,"星空 | 黑森林蛋糕","http://127.0.0.1:4000/img/rotate/2124.jpg");
INSERT INTO rotate_pic VALUES (null,"星空 | 黑森林蛋糕","http://127.0.0.1:4000/img/rotate/2125.jpg");
INSERT INTO rotate_pic VALUES (null,"思念 | 缤纷乐园蛋糕","http://127.0.0.1:4000/img/rotate/2086.jpg");
INSERT INTO rotate_pic VALUES (null,"思念 | 缤纷乐园蛋糕","http://127.0.0.1:4000/img/rotate/2087.jpg");
INSERT INTO rotate_pic VALUES (null,"思念 | 缤纷乐园蛋糕","http://127.0.0.1:4000/img/rotate/2088.jpg");
INSERT INTO rotate_pic VALUES (null,"苹果夹心芝士","http://127.0.0.1:4000/img/rotate/4180.jpg");
INSERT INTO rotate_pic VALUES (null,"苹果夹心芝士","http://127.0.0.1:4000/img/rotate/4181.jpg");
INSERT INTO rotate_pic VALUES (null,"苹果夹心芝士","http://127.0.0.1:4000/img/rotate/4182.jpg");
INSERT INTO rotate_pic VALUES (null,"奶香轻乳酪","http://127.0.0.1:4000/img/rotate/4173.jpg");
INSERT INTO rotate_pic VALUES (null,"奶香轻乳酪","http://127.0.0.1:4000/img/rotate/4174.jpg");
INSERT INTO rotate_pic VALUES (null,"奶香轻乳酪","http://127.0.0.1:4000/img/rotate/4175.jpg");
INSERT INTO rotate_pic VALUES (null,"牛乳芝士盒子蛋糕","http://127.0.0.1:4000/img/rotate/4176.jpg");
INSERT INTO rotate_pic VALUES (null,"牛乳芝士盒子蛋糕","http://127.0.0.1:4000/img/rotate/4177.jpg");
INSERT INTO rotate_pic VALUES (null,"牛乳芝士盒子蛋糕","http://127.0.0.1:4000/img/rotate/4179.jpg");
INSERT INTO rotate_pic VALUES (null,"原味蛋糕卷","http://127.0.0.1:4000/img/rotate/4186.jpg");
INSERT INTO rotate_pic VALUES (null,"原味蛋糕卷","http://127.0.0.1:4000/img/rotate/4187.jpg");
INSERT INTO rotate_pic VALUES (null,"原味蛋糕卷","http://127.0.0.1:4000/img/rotate/4188.jpg");
INSERT INTO rotate_pic VALUES (null,"初心 | 牛油果低脂蛋糕","http://127.0.0.1:4000/img/rotate/2872.jpg");
INSERT INTO rotate_pic VALUES (null,"初心 | 牛油果低脂蛋糕","http://127.0.0.1:4000/img/rotate/2873.jpg");
INSERT INTO rotate_pic VALUES (null,"初心 | 牛油果低脂蛋糕","http://127.0.0.1:4000/img/rotate/2874.jpg");
INSERT INTO rotate_pic VALUES (null,"向往 | 酸樱桃椰蓉","http://127.0.0.1:4000/img/rotate/2024.jpg");
INSERT INTO rotate_pic VALUES (null,"向往 | 酸樱桃椰蓉","http://127.0.0.1:4000/img/rotate/2025.jpg");
INSERT INTO rotate_pic VALUES (null,"向往 | 酸樱桃椰蓉","http://127.0.0.1:4000/img/rotate/2026.jpg");
INSERT INTO rotate_pic VALUES (null,"简单 | 蜂蜜","http://127.0.0.1:4000/img/rotate/2203.jpg");
INSERT INTO rotate_pic VALUES (null,"简单 | 蜂蜜","http://127.0.0.1:4000/img/rotate/2204.jpg");
INSERT INTO rotate_pic VALUES (null,"简单 | 蜂蜜","http://127.0.0.1:4000/img/rotate/2205.jpg");
INSERT INTO rotate_pic VALUES (null,"相伴 | 奶油杏仁","http://127.0.0.1:4000/img/rotate/2195.jpg");
INSERT INTO rotate_pic VALUES (null,"相伴 | 奶油杏仁","http://127.0.0.1:4000/img/rotate/2196.jpg");
INSERT INTO rotate_pic VALUES (null,"相伴 | 奶油杏仁","http://127.0.0.1:4000/img/rotate/2197.jpg");
INSERT INTO rotate_pic VALUES (null,"皓月 | 浓情凝聚(四种口味)","http://127.0.0.1:4000/img/rotate/3829.jpg");
INSERT INTO rotate_pic VALUES (null,"皓月 | 浓情凝聚(四种口味)","http://127.0.0.1:4000/img/rotate/3830.jpg");
INSERT INTO rotate_pic VALUES (null,"皓月 | 浓情凝聚(四种口味)","http://127.0.0.1:4000/img/rotate/3831.jpg");
INSERT INTO rotate_pic VALUES (null,"珍贵 | 芒果慕斯","http://127.0.0.1:4000/img/rotate/2187.jpg");
INSERT INTO rotate_pic VALUES (null,"珍贵 | 芒果慕斯","http://127.0.0.1:4000/img/rotate/2188.jpg");
INSERT INTO rotate_pic VALUES (null,"珍贵 | 芒果慕斯","http://127.0.0.1:4000/img/rotate/2189.jpg");
#创建商品介绍图片
CREATE TABLE detail_pic(
    Iid int(11) PRIMARY KEY AUTO_INCREMENT,
    fam_name varchar(30),
    pic varchar(128)
);
INSERT INTO detail_pic VALUES (null,"苹果夹心芝士","http://127.0.0.1:4000/img/detail/4339.jpg");
INSERT INTO detail_pic VALUES (null,"苹果夹心芝士","http://127.0.0.1:4000/img/detail/4340.jpg");
INSERT INTO detail_pic VALUES (null,"苹果夹心芝士","http://127.0.0.1:4000/img/detail/4341.jpg");
INSERT INTO detail_pic VALUES (null,"苹果夹心芝士","http://127.0.0.1:4000/img/detail/4342.jpg");
INSERT INTO detail_pic VALUES (null,"奶香轻乳酪","http://127.0.0.1:4000/img/detail/4362.jpg");
INSERT INTO detail_pic VALUES (null,"奶香轻乳酪","http://127.0.0.1:4000/img/detail/4363.jpg");
INSERT INTO detail_pic VALUES (null,"奶香轻乳酪","http://127.0.0.1:4000/img/detail/4364.jpg");
INSERT INTO detail_pic VALUES (null,"奶香轻乳酪","http://127.0.0.1:4000/img/detail/4365.jpg");
INSERT INTO detail_pic VALUES (null,"奶香轻乳酪","http://127.0.0.1:4000/img/detail/4366.jpg");
INSERT INTO detail_pic VALUES (null,"奶香轻乳酪","http://127.0.0.1:4000/img/detail/4367.jpg");
INSERT INTO detail_pic VALUES (null,"牛乳芝士盒子蛋糕","http://127.0.0.1:4000/img/detail/4330.jpg");
INSERT INTO detail_pic VALUES (null,"牛乳芝士盒子蛋糕","http://127.0.0.1:4000/img/detail/4331.jpg");
INSERT INTO detail_pic VALUES (null,"牛乳芝士盒子蛋糕","http://127.0.0.1:4000/img/detail/4332.jpg");
INSERT INTO detail_pic VALUES (null,"牛乳芝士盒子蛋糕","http://127.0.0.1:4000/img/detail/4333.jpg");
INSERT INTO detail_pic VALUES (null,"原味蛋糕卷","http://127.0.0.1:4000/img/detail/4371.jpg");
INSERT INTO detail_pic VALUES (null,"原味蛋糕卷","http://127.0.0.1:4000/img/detail/4372.jpg");
INSERT INTO detail_pic VALUES (null,"原味蛋糕卷","http://127.0.0.1:4000/img/detail/4373.jpg");
INSERT INTO detail_pic VALUES (null,"原味蛋糕卷","http://127.0.0.1:4000/img/detail/4374.jpg");
INSERT INTO detail_pic VALUES (null,"原味蛋糕卷","http://127.0.0.1:4000/img/detail/4375.jpg");
INSERT INTO detail_pic VALUES (null,"原味蛋糕卷","http://127.0.0.1:4000/img/detail/4376.jpg");
INSERT INTO detail_pic VALUES (null,"桃芝|樱桃芝士蛋糕","http://127.0.0.1:4000/img/detail/2550.jpg");
INSERT INTO detail_pic VALUES (null,"桃芝 | 樱桃芝士蛋糕","http://127.0.0.1:4000/img/detail/2551.jpg");
INSERT INTO detail_pic VALUES (null,"桃芝 | 樱桃芝士蛋糕","http://127.0.0.1:4000/img/detail/2552.jpg");
INSERT INTO detail_pic VALUES (null,"桃芝 | 樱桃芝士蛋糕","http://127.0.0.1:4000/img/detail/2553.jpg");
INSERT INTO detail_pic VALUES (null,"回归 | 90蛋糕","http://127.0.0.1:4000/img/detail/2423.jpg");
INSERT INTO detail_pic VALUES (null,"回归 | 90蛋糕","http://127.0.0.1:4000/img/detail/2424.jpg");
INSERT INTO detail_pic VALUES (null,"回归 | 90蛋糕","http://127.0.0.1:4000/img/detail/2425.jpg");
INSERT INTO detail_pic VALUES (null,"回归 | 90蛋糕","http://127.0.0.1:4000/img/detail/2426.jpg");
INSERT INTO detail_pic VALUES (null,"星空 | 黑森林蛋糕","http://127.0.0.1:4000/img/detail/2534.jpg");
INSERT INTO detail_pic VALUES (null,"星空 | 黑森林蛋糕","http://127.0.0.1:4000/img/detail/2535.jpg");
INSERT INTO detail_pic VALUES (null,"星空 | 黑森林蛋糕","http://127.0.0.1:4000/img/detail/2536.jpg");
INSERT INTO detail_pic VALUES (null,"星空 | 黑森林蛋糕","http://127.0.0.1:4000/img/detail/2537.jpg");
INSERT INTO detail_pic VALUES (null,"思念 | 缤纷乐园蛋糕","http://127.0.0.1:4000/img/detail/2471.jpg");
INSERT INTO detail_pic VALUES (null,"思念 | 缤纷乐园蛋糕","http://127.0.0.1:4000/img/detail/2472.jpg");
INSERT INTO detail_pic VALUES (null,"思念 | 缤纷乐园蛋糕","http://127.0.0.1:4000/img/detail/2473.jpg");
INSERT INTO detail_pic VALUES (null,"思念 | 缤纷乐园蛋糕","http://127.0.0.1:4000/img/detail/2474.jpg");
INSERT INTO detail_pic VALUES (null,"初心 | 牛油果低脂蛋糕","http://127.0.0.1:4000/img/detail/2877.jpg");
INSERT INTO detail_pic VALUES (null,"初心 | 牛油果低脂蛋糕","http://127.0.0.1:4000/img/detail/2878.jpg");
INSERT INTO detail_pic VALUES (null,"初心 | 牛油果低脂蛋糕","http://127.0.0.1:4000/img/detail/2880.jpg");
INSERT INTO detail_pic VALUES (null,"初心 | 牛油果低脂蛋糕","http://127.0.0.1:4000/img/detail/2881.jpg");
INSERT INTO detail_pic VALUES (null,"向往 | 酸樱桃椰蓉","http://127.0.0.1:4000/img/detail/2359.jpg");
INSERT INTO detail_pic VALUES (null,"向往 | 酸樱桃椰蓉","http://127.0.0.1:4000/img/detail/2360.jpg");
INSERT INTO detail_pic VALUES (null,"向往 | 酸樱桃椰蓉","http://127.0.0.1:4000/img/detail/2361.jpg");
INSERT INTO detail_pic VALUES (null,"向往 | 酸樱桃椰蓉","http://127.0.0.1:4000/img/detail/2362.jpg");
INSERT INTO detail_pic VALUES (null,"简单 | 蜂蜜","http://127.0.0.1:4000/img/detail/2690.jpg");
INSERT INTO detail_pic VALUES (null,"简单 | 蜂蜜","http://127.0.0.1:4000/img/detail/2691.jpg");
INSERT INTO detail_pic VALUES (null,"简单 | 蜂蜜","http://127.0.0.1:4000/img/detail/2692.jpg");
INSERT INTO detail_pic VALUES (null,"简单 | 蜂蜜","http://127.0.0.1:4000/img/detail/2693.jpg");
INSERT INTO detail_pic VALUES (null,"简单 | 蜂蜜","http://127.0.0.1:4000/img/detail/2694.jpg");
INSERT INTO detail_pic VALUES (null,"相伴 | 奶油杏仁","http://127.0.0.1:4000/img/detail/2674.jpg");
INSERT INTO detail_pic VALUES (null,"相伴 | 奶油杏仁","http://127.0.0.1:4000/img/detail/2675.jpg");
INSERT INTO detail_pic VALUES (null,"相伴 | 奶油杏仁","http://127.0.0.1:4000/img/detail/2676.jpg");
INSERT INTO detail_pic VALUES (null,"相伴 | 奶油杏仁","http://127.0.0.1:4000/img/detail/2677.jpg");
INSERT INTO detail_pic VALUES (null,"皓月 | 浓情凝聚(四种口味)","http://127.0.0.1:4000/img/detail/3834.jpg");
INSERT INTO detail_pic VALUES (null,"皓月 | 浓情凝聚(四种口味)","http://127.0.0.1:4000/img/detail/3835.jpg");
INSERT INTO detail_pic VALUES (null,"皓月 | 浓情凝聚(四种口味)","http://127.0.0.1:4000/img/detail/3836.jpg");
INSERT INTO detail_pic VALUES (null,"皓月 | 浓情凝聚(四种口味)","http://127.0.0.1:4000/img/detail/3837.jpg");
INSERT INTO detail_pic VALUES (null,"珍贵 | 芒果慕斯","http://127.0.0.1:4000/img/detail/2659.jpg");
INSERT INTO detail_pic VALUES (null,"珍贵 | 芒果慕斯","http://127.0.0.1:4000/img/detail/2660.jpg");
INSERT INTO detail_pic VALUES (null,"珍贵 | 芒果慕斯","http://127.0.0.1:4000/img/detail/2661.jpg");
INSERT INTO detail_pic VALUES (null,"珍贵 | 芒果慕斯","http://127.0.0.1:4000/img/detail/2662.jpg");
#创建规格表
CREATE TABLE ck_size(
    sid int(11) PRIMARY KEY AUTO_INCREMENT,
    fam_name varchar(30),
    size varchar(30),
    pic varchar(128),
    kg varchar(10),
    tab varchar(20),
    peo varchar(30),
    price varchar(15)
);
INSERT INTO ck_size VALUES (null,"桃芝 | 樱桃芝士蛋糕","17厘米","http://127.0.0.1:4000/img/size/y17.png","2磅","+6套餐具","适合3-6人食用","265");
INSERT INTO ck_size VALUES (null,"桃芝 | 樱桃芝士蛋糕","23厘米","http://127.0.0.1:4000/img/size/y23.png","3.7磅","+12套餐具","适合7-12人食用","475");
INSERT INTO ck_size VALUES (null,"桃芝 | 樱桃芝士蛋糕","28厘米","http://127.0.0.1:4000/img/size/y28.png","5.5磅","+18套餐具","适合13-18人食用","685");
INSERT INTO ck_size VALUES (null,"桃芝 | 樱桃芝士蛋糕","32厘米","http://127.0.0.1:4000/img/size/y32.png","7.2磅","+30套餐具","适合20-30人食用","1060");
INSERT INTO ck_size VALUES (null,"桃芝 | 樱桃芝士蛋糕","36厘米","http://127.0.0.1:4000/img/size/y36.png","9.2磅","+50套餐具","适合40-50人食用","1325");
INSERT INTO ck_size VALUES (null,"桃芝 | 樱桃芝士蛋糕","40厘米","http://127.0.0.1:4000/img/size/y40.png","11.4磅","+70套餐具","适合50-70人食用","1590");
INSERT INTO ck_size VALUES (null,"桃芝 | 樱桃芝士蛋糕","44厘米","http://127.0.0.1:4000/img/size/y44.png","13.8磅","+90套餐具","适合70-90人食用","1855");
INSERT INTO ck_size VALUES (null,"桃芝 | 樱桃芝士蛋糕","53厘米","http://127.0.0.1:4000/img/size/y53.png","20.2磅","+150套餐具","适合130-150人食用","2650");
INSERT INTO ck_size VALUES (null,"回归 | 90蛋糕","16厘米","http://127.0.0.1:4000/img/size/f16.png","1.6磅","+6套餐具","适合3-6人食用","225");
INSERT INTO ck_size VALUES (null,"回归 | 90蛋糕","21厘米","http://127.0.0.1:4000/img/size/f21.png","2.6磅","+12套餐具","适合7-12人食用","265");
INSERT INTO ck_size VALUES (null,"回归 | 90蛋糕","26厘米","http://127.0.0.1:4000/img/size/f26.png","4.1磅","+18套餐具","适合13-18人食用","585");
INSERT INTO ck_size VALUES (null,"回归 | 90蛋糕","29厘米","http://127.0.0.1:4000/img/size/f29.png","5.2磅","+30套餐具","适合20-30人食用","900");
INSERT INTO ck_size VALUES (null,"回归 | 90蛋糕","33厘米","http://127.0.0.1:4000/img/size/f33.png","6.8磅","+50套餐具","适合40-50人食用","1125");
INSERT INTO ck_size VALUES (null,"回归 | 90蛋糕","47厘米","http://127.0.0.1:4000/img/size/f47.png","8.3磅","+70套餐具","适合50-70人食用","1350");
INSERT INTO ck_size VALUES (null,"回归 | 90蛋糕","51厘米","http://127.0.0.1:4000/img/size/f51.png","10.1磅","+90套餐具","适合70-90人食用","1575");
INSERT INTO ck_size VALUES (null,"回归 | 90蛋糕","62厘米","http://127.0.0.1:4000/img/size/f62.png","14.7磅","+150套餐具","适合130-150人食用","2250");
INSERT INTO ck_size VALUES (null,"星空 | 黑森林蛋糕","18厘米","http://127.0.0.1:4000/img/size/y18.png","1.4磅","+6套餐具","适合3-6人食用","225");
INSERT INTO ck_size VALUES (null,"星空 | 黑森林蛋糕","24厘米","http://127.0.0.1:4000/img/size/y24.png","2.4磅","+12套餐具","适合7-12人食用","395");
INSERT INTO ck_size VALUES (null,"星空 | 黑森林蛋糕","29厘米","http://127.0.0.1:4000/img/size/y29.png","3.5磅","+18套餐具","适合13-18人食用","585");
INSERT INTO ck_size VALUES (null,"星空 | 黑森林蛋糕","33厘米","http://127.0.0.1:4000/img/size/y33.png","4.6磅","+30套餐具","适合20-30人食用","900");
INSERT INTO ck_size VALUES (null,"星空 | 黑森林蛋糕","37厘米","http://127.0.0.1:4000/img/size/y37.png","5.9磅","+50套餐具","适合40-50人食用","1125");
INSERT INTO ck_size VALUES (null,"星空 | 黑森林蛋糕","41厘米","http://127.0.0.1:4000/img/size/y41.png","7.2磅","+70套餐具","适合50-70人食用","1350");
INSERT INTO ck_size VALUES (null,"星空 | 黑森林蛋糕","45厘米","http://127.0.0.1:4000/img/size/y45.png","8.8磅","+90套餐具","适合70-90人食用","1575");
INSERT INTO ck_size VALUES (null,"星空 | 黑森林蛋糕","54厘米","http://127.0.0.1:4000/img/size/y54.png","12.7磅","+150套餐具","适合130-150人食用","2250");
INSERT INTO ck_size VALUES (null,"思念 | 缤纷乐园蛋糕","18厘米","http://127.0.0.1:4000/img/size/y18.png","1.2磅","+6套餐具","适合3-6人食用","295");
INSERT INTO ck_size VALUES (null,"思念 | 缤纷乐园蛋糕","24厘米","http://127.0.0.1:4000/img/size/y24.png","2磅","+12套餐具","适合7-12人食用","515");
INSERT INTO ck_size VALUES (null,"思念 | 缤纷乐园蛋糕","29厘米","http://127.0.0.1:4000/img/size/y29.png","3磅","+18套餐具","适合13-18人食用","735");
INSERT INTO ck_size VALUES (null,"思念 | 缤纷乐园蛋糕","33厘米","http://127.0.0.1:4000/img/size/y33.png","3.9磅","+30套餐具","适合20-30人食用","1180");
INSERT INTO ck_size VALUES (null,"思念 | 缤纷乐园蛋糕","37厘米","http://127.0.0.1:4000/img/size/y37.png","5磅","+50套餐具","适合40-50人食用","1475");
INSERT INTO ck_size VALUES (null,"思念 | 缤纷乐园蛋糕","41厘米","http://127.0.0.1:4000/img/size/y41.png","6.1磅","+70套餐具","适合50-70人食用","1770");
INSERT INTO ck_size VALUES (null,"思念 | 缤纷乐园蛋糕","45厘米","http://127.0.0.1:4000/img/size/y45.png","7.4磅","+90套餐具","适合70-90人食用","2065");
INSERT INTO ck_size VALUES (null,"思念 | 缤纷乐园蛋糕","54厘米","http://127.0.0.1:4000/img/size/y54.png","10.8磅","+150套餐具","适合130-150人食用","2950");
INSERT INTO ck_size VALUES (null,"初心 | 牛油果低脂蛋糕","16厘米","http://127.0.0.1:4000/img/size/f16.png","1.5磅","+6套餐具","适合3-6人食用","335");
INSERT INTO ck_size VALUES (null,"向往 | 酸樱桃椰蓉","16厘米","http://127.0.0.1:4000/img/size/f16.png","1.4磅","+6套餐具","适合3-6人食用","225");
INSERT INTO ck_size VALUES (null,"向往 | 酸樱桃椰蓉","21厘米","http://127.0.0.1:4000/img/size/f21.png","2.4磅","+12套餐具","适合7-12人食用","395");
INSERT INTO ck_size VALUES (null,"向往 | 酸樱桃椰蓉","26厘米","http://127.0.0.1:4000/img/size/f26.png","3.7磅","+18套餐具","适合13-18人食用","585");
INSERT INTO ck_size VALUES (null,"向往 | 酸樱桃椰蓉","29厘米","http://127.0.0.1:4000/img/size/f29.png","4.6磅","+30套餐具","适合20-30人食用","900");
INSERT INTO ck_size VALUES (null,"向往 | 酸樱桃椰蓉","33厘米","http://127.0.0.1:4000/img/size/f33.png","5.9磅","+50套餐具","适合40-50人食用","1125");
INSERT INTO ck_size VALUES (null,"向往 | 酸樱桃椰蓉","47厘米","http://127.0.0.1:4000/img/size/f47.png","7.2磅","+70套餐具","适合50-70人食用","1350");
INSERT INTO ck_size VALUES (null,"向往 | 酸樱桃椰蓉","51厘米","http://127.0.0.1:4000/img/size/f51.png","8.8磅","+90套餐具","适合70-90人食用","1575");
INSERT INTO ck_size VALUES (null,"向往 | 酸樱桃椰蓉","62厘米","http://127.0.0.1:4000/img/size/f62.png","12.7磅","+150套餐具","适合130-150人食用","2250");
INSERT INTO ck_size VALUES (null,"简单 | 蜂蜜","16厘米","http://127.0.0.1:4000/img/size/f16.png","1.6磅","+6套餐具","适合3-6人食用","355");
INSERT INTO ck_size VALUES (null,"简单 | 蜂蜜","21厘米","http://127.0.0.1:4000/img/size/f21.png","2.6磅","+12套餐具","适合7-12人食用","635");
INSERT INTO ck_size VALUES (null,"简单 | 蜂蜜","26厘米","http://127.0.0.1:4000/img/size/f26.png","4.1磅","+18套餐具","适合13-18人食用","915");
INSERT INTO ck_size VALUES (null,"简单 | 蜂蜜","29厘米","http://127.0.0.1:4000/img/size/f29.png","5.2磅","+30套餐具","适合20-30人食用","1420");
INSERT INTO ck_size VALUES (null,"简单 | 蜂蜜","33厘米","http://127.0.0.1:4000/img/size/f33.png","6.8磅","+50套餐具","适合40-50人食用","1775");
INSERT INTO ck_size VALUES (null,"简单 | 蜂蜜","47厘米","http://127.0.0.1:4000/img/size/f47.png","8.3磅","+70套餐具","适合50-70人食用","2130");
INSERT INTO ck_size VALUES (null,"简单 | 蜂蜜","51厘米","http://127.0.0.1:4000/img/size/f51.png","10.1磅","+90套餐具","适合70-90人食用","2485");
INSERT INTO ck_size VALUES (null,"简单 | 蜂蜜","62厘米","http://127.0.0.1:4000/img/size/f62.png","14.7磅","+150套餐具","适合130-150人食用","3550");
INSERT INTO ck_size VALUES (null,"相伴 | 奶油杏仁","18厘米","http://127.0.0.1:4000/img/size/y18.png","1.3磅","+6套餐具","适合3-6人食用","225");
INSERT INTO ck_size VALUES (null,"相伴 | 奶油杏仁","24厘米","http://127.0.0.1:4000/img/size/y24.png","2.2磅","+12套餐具","适合7-12人食用","395");
INSERT INTO ck_size VALUES (null,"相伴 | 奶油杏仁","29厘米","http://127.0.0.1:4000/img/size/y29.png","3.3磅","+18套餐具","适合13-18人食用","585");
INSERT INTO ck_size VALUES (null,"相伴 | 奶油杏仁","33厘米","http://127.0.0.1:4000/img/size/y33.png","4.4磅","+30套餐具","适合20-30人食用","900");
INSERT INTO ck_size VALUES (null,"相伴 | 奶油杏仁","37厘米","http://127.0.0.1:4000/img/size/y37.png","5.5磅","+50套餐具","适合40-50人食用","1125");
INSERT INTO ck_size VALUES (null,"相伴 | 奶油杏仁","41厘米","http://127.0.0.1:4000/img/size/y41.png","6.8磅","+70套餐具","适合50-70人食用","1350");
INSERT INTO ck_size VALUES (null,"相伴 | 奶油杏仁","45厘米","http://127.0.0.1:4000/img/size/y45.png","8.1磅","+90套餐具","适合70-90人食用","1575");
INSERT INTO ck_size VALUES (null,"相伴 | 奶油杏仁","54厘米","http://127.0.0.1:4000/img/size/y54.png","11.9磅","+150套餐具","适合130-150人食用","2250");
INSERT INTO ck_size VALUES (null,"皓月 | 浓情凝聚(四种口味)","18厘米","http://127.0.0.1:4000/img/size/y18.png","1.5磅","+6套餐具","适合3-6人食用","325");
INSERT INTO ck_size VALUES (null,"珍贵 | 芒果慕斯","16厘米","http://127.0.0.1:4000/img/size/f16.png","1.6磅","+6套餐具","适合3-6人食用","335");
INSERT INTO ck_size VALUES (null,"珍贵 | 芒果慕斯","21厘米","http://127.0.0.1:4000/img/size/f21.png","2.8磅","+12套餐具","适合7-12人食用","595");
INSERT INTO ck_size VALUES (null,"珍贵 | 芒果慕斯","26厘米","http://127.0.0.1:4000/img/size/f26.png","4.1磅","+18套餐具","适合13-18人食用","855");
INSERT INTO ck_size VALUES (null,"珍贵 | 芒果慕斯","29厘米","http://127.0.0.1:4000/img/size/f29.png","5.2磅","+30套餐具","适合20-30人食用","1340");
INSERT INTO ck_size VALUES (null,"珍贵 | 芒果慕斯","33厘米","http://127.0.0.1:4000/img/size/f33.png","7磅","+50套餐具","适合40-50人食用","1675");
INSERT INTO ck_size VALUES (null,"珍贵 | 芒果慕斯","47厘米","http://127.0.0.1:4000/img/size/f47.png","8.3磅","+70套餐具","适合50-70人食用","2010");
INSERT INTO ck_size VALUES (null,"珍贵 | 芒果慕斯","51厘米","http://127.0.0.1:4000/img/size/f51.png","10.1磅","+90套餐具","适合70-90人食用","2345");
INSERT INTO ck_size VALUES (null,"珍贵 | 芒果慕斯","62厘米","http://127.0.0.1:4000/img/size/f62.png","14.7磅","+150套餐具","适合130-150人食用","3350");
#购物车表
CREATE TABLE ck_cart(
    lid int(11) PRIMARY KEY AUTO_INCREMENT,
    name  varchar(30),
    size  varchar(30),
    price varchar(15),
    num   int(20)
);