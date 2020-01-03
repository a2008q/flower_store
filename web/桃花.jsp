<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2020/1/3
  Time: 13:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>桃花</title>
    <style>
        body{
            margin:0;
            background: url(./img/7.jpg) no-repeat;
        }
        img{
            vertical-align: top;
        }
        .head{
            width:400px;
            height: 31px;
            border-bottom: 1px solid #ccc;
            float: left;
        }
        .home,.login{
            width: 50px;
            height: 23px;
            color: #3E7D90;
            text-align: center;
            font-size: 12px;
            padding-top: 7px;
            margin-right: 7px;
            margin-left: 10px;
            float: left;
        }
        .welcome{
            width: 80px;
            height: 23px;
            color: #3E7D90;
            text-align: center;
            font-size: 12px;
            padding-top: 7px;
            margin-right: 7px;
            float: left;
        }
        .list{
            width: 100px;
            height: 23px;
            text-align: center;
            font-size: 12px;
            padding-top: 7px;
            margin-right: 7px;
            float: left;
        }
        .hot a{
            text-decoration:none;
            color: #A8A1B2;
        }
        .head a:hover{
            color: coral;
        }
        .right{
            width: 300px;
            height: 950px;
            float:right;
            z-index: 0;
            clear: right;
        }
        .logo{
            width: 250px;
            height: 150px;
            float: left;
            margin-top: 10px;
            margin-left: 50px;
            margin-bottom: 20px;
            clear: left;
        }
        .label{
            width: 500px;
            height: 117px;
            float: left;
            margin-top: 50px;
            z-index: 1;
            position: relative;
            margin-top: 50px;
            margin-left: 100px;
        }
        .option{
            width: 600px;
            height: 100px;
        }
        .card,.typee,.persent,.functionn,.volunteer{
            width: 117px;
            height: 100px;
            text-align: center;
            float: left;
            overflow: hidden;
            cursor: pointer;
            transition: all 0.6s;
        }
        .card:hover,.typee:hover,.persent:hover,.functionn:hover,.volunteer:hover{
            transform: scale(1.1);
        }
        .hot{
            width: 598px;
            height: 78px;
        }
        .rose,.shuixian,.lihua,.furong,.yjx{
            width:117px;
            height: 20px;
            text-align: center;
            float: left;
            font-size: 20px;
        }
        .hot a:hover{
            color: coral;
        }
        .head a{
            text-decoration:none;
            color: #3E7D90;
        }
        .banner{
            width: 400px;
            height: 400px;
            border: 1px solid #ccc;
            float: left;
            margin-left: 120px;
            margin-top: 20px;
            position: relative;
            overflow: hidden;
            clear: left;
        }
        .banner_picture .pic{
            display: none;
        }
        .banner_picture .current{
            display: block;
        }
        .banner ol{
            position: absolute;
            left: 200px;
            bottom: 26px;
            list-style: none;
        }
        .banner ol li{
            cursor: pointer;
        }
        .banner ol .but{
            width: 26px;
            height: 10px;
            border: 1px solid #ccc;
            margin-right: 12px;
            text-align: center;
            padding-bottom: 5px;
            line-height: 22px;
            background-color: #A8A1B2;
            color: #fff;
            line-height: 22px;
            font-size: 14px;
            font-weight: bold;
            float: left;
        }
        .banner ol .current{
            background-color: #A8A1B2;
            color: #fff;
            float: left;
            width: 26px;
            height: 10px;
            border: 1px solid #ccc;
            margin-right: 12px;
            text-align: center;
            padding-bottom: 5px;
            line-height: 22px;
            font-size: 14px;
            font-weight: bold;
        }
        .introduce{
            width: 380px;
            height: 420px;
            margin-left: 100px;
            margin-top: 20px;
            float: left;
        }
        .introduce p{
            display: inline;
            line-height: 40px;
            color: #40556C;
            font-family: 宋体;
        }
        .introduce h1{
            display: inline;
        }
        .middle{
            width: 820px;
            height: 280px;
            margin-top: 20px;
            margin-left: 150px;
            float: left;
            margin-bottom: 100px;
        }
        .effect{
            width: 450px;
            height: 280px;
        }
        .effect p{
            display: inline;
            line-height: 30px;
            color: #40556C;
            font-family: 宋体;
        }
        .effect h3{
            display: inline;
        }
        .photo{
            width: 370px;
            height: 280px;
            float: right;
            margin-left: 20px;
        }
        .take{
            height: 40px;
            border-top: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
            margin-bottom: 10px;
            clear: both;
        }
        .take h1{
            margin: 0;
            text-align: center;
            font-family: 宋体;
            color:wheat;
        }
        .shop{
            width: 800px;
            height: 300px;
            margin: 0 auto;
            clear: both;
            position: relative;
        }
        .shop_picture{
            width: 200px;
            height: 250px;
            margin-left:30px;
            margin-top: 30px;
            float: left;
            cursor: pointer;
            transition: all 0.6s;
        }
        .shop_picture:hover{
            transform: scale(1.1);
        }
        .lag{
            width: 346px;
            height: 200px;
            line-height: 20px;
            float: left;
            margin-left: 40px;
            margin-top: 30px;
        }
        .lag p{
            margin: 0;
            line-height: 30px;
        }
        div .shopp{
            width: 182px;
            height: 62px;
            float: right;
            margin-right: 30px;
            border-color: #87A8A1;
        }
    </style>
</head>
<body>
<div class="head">
    <div class="home"><a href="${pageContext.request.contextPath}/index.jsp">首页</a></div>
    <div class="welcome">嗨！欢迎光临</div>
    <div class="login"><a href="${pageContext.request.contextPath}/login.jsp">登录注册</a></div>
    <div class="list"><a href="">我的订单</a></div>
</div>
<div class="right">
    <img src="./img/桃花_07.jpg" alt="" width="300" height="950">
</div>
<div class="logo">
    <img src="./img/logo.png" alt="" width="250" height="150">
</div>
<div class="label">
    <div class="option">
        <!--首页-->
        <div class="card">
            <a href="Rose.html"><img src="./img/玫瑰_03.jpg" alt="" width="177" height="100"></a></div>
        <!--种类-->
        <div class="typee">
            <a href="梨花.html"><img src="./img/梨花_02.jpg" alt="" width="177" height="100"></a></div>
        <div class="persent">
            <!--礼品-->
            <a href="芙蓉.html"><img src="./img/芙蓉_04.jpg" alt="" width="177" height="100"></a></div>
        <!--功效-->
        <div class="functionn">
            <a href="水仙花.html"><img src="./img/水仙花_02.jpg" alt="" width="177" height="100"></a></div>
        <div class="volunteer">
            <a href="郁金香.html"><img src="./img/郁金香_04.jpg" alt="" width="177" height="100"></a>
        </div>
    </div>
    <div class="hot">
        <span class="rose"><a href="Rose.html">玫瑰</a></span>
        <span class="lihua"><a href="梨花.html">梨花</a></span>
        <span class="furong"><a href="芙蓉.html">芙蓉</a></span>
        <span class="shuixian"><a href="水仙花.html">水仙花</a></span>
        <span class="yjx"><a href="郁金香.html">郁金香</a></span>
    </div>
</div>
<div class="banner">
    <div class="banner_picture" id="box">
        <!--设置相框-->
        <div class="current"><img src="./img/桃花_01.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/桃花_03.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/桃花_07.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/桃花_05.jpg" alt="" width="400" height="400"></div>
    </div>
    <ol id="button">
        <li class="current">1</li>
        <li class="but">2</li>
        <li class="but">3</li>
        <li class="but">4</li>
    </ol>
</div>
<div class="introduce">
    <p><h1>桃花</h1>（蔷薇科桃属植物的花朵）</p><br/>
    <p class="N">桃花，即桃树盛开的花朵，属蔷薇科植物。叶椭圆状披针形，核果近球形，主要分果桃和花桃两大类。
        桃花原产于中国中部、北部，现已在世界温带国家及地区广泛种植，其繁殖以嫁接为主。</p><br>
    <p>桃花可制成桃花糕、桃花丸、桃花茶等食品。其具有很高的观赏价值，是文学创作的常用素材。
        此外，桃花中元素有疏通经络、滋润皮肤的药用价值。其花语及代表意义为：爱情的俘虏。每年3~6月份，各地会以桃花为媒，举办不同的桃花节盛会。</p>
</div>
<div class="middle">
    <div class="photo">
        <img src="./img/桃花_02.jpg" alt="" width="370" height="280">
    </div>
    <div class="effect">
        <h3>药用</h3><br>
        <p>泻下通便，利水消肿。用于水肿，腹水，便秘及干燥。中国古人很早就认识到桃花的美容价值。
            桃花的美容作用，主要是源于花中含有山奈酚、香豆精、三叶豆甙和维生素A、B、C等营养物质。这些物质能扩张血管，疏通脉络，润泽肌肤，改善血液循环，促进皮肤营养和氧供给，
            使促进人体衰老的脂褐质素加快排泄，防止黑色素在皮肤内慢性沉积，从而能有效地预防黄褐斑、雀斑、黑斑、预防的同时令肌肤润白光泽，碧桃中还富含植物蛋白和呈游离状态的氨基酸，
            容易被皮肤吸收，对防治皮肤干燥、粗糙及皱纹等有效，还可增强皮肤的抗病能力，从而防治皮肤病、脂溢性皮炎、化脓性皮炎、坏血病等，对皮肤大有裨益。
        </p><br>
    </div>
</div>
<div class="take"><h1>花&nbsp;&nbsp;&nbsp;&nbsp;材&nbsp;&nbsp;&nbsp;&nbsp;采&nbsp;&nbsp;&nbsp;&nbsp;购</h1></div>
<div class="shop">
    <div class="shop_picture">
        <img src="./img/桃花_04.jpg" alt="" width="200" height="250">
    </div>
    <div class="lag">
        <p>寓意及象征：</p>
        <p>桃花的寓意和象征有很多。它可以象征爱情，爱的痴狂，爱的忘我；可以象征美貌，多形容女子面容姣好；
            可以象征对美好生活的希望，如同通往人间仙境的一道门扉；
            还可以象征学生，桃李满天下就是指培养出的优秀学生很多。</p>
    </div>
    <div class="shopp">
        <a href=""><img src="./img/立即购买.png" alt=""></a>
    </div>
</div>
</body>
<script type="text/javascript" src="./picture.js"></script>
</html>
