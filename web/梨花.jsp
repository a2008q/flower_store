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
    <title>梨花</title>
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
        .rose,.cherry,.conglan,.furong,.yjx{
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
            margin-bottom: 20px;
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
    <img src="./img/梨花_07.jpg" alt="" width="300" height="950">
</div>
<div class="logo">
    <img src="./img/logo.png" alt="" width="250" height="150">
</div>
<div class="label">
    <div class="option">
        <!--首页-->
        <div class="card">
            <a href="Rose.html"><img src="./img/玫瑰_01.png" alt="" width="177" height="100"></a></div>
        <!--种类-->
        <div class="typee">
            <a href="cherry.html"><img src="./img/樱花_01.jpg" alt="" width="177" height="100"></a></div>
        <div class="persent">
            <!--礼品-->
            <a href="芙蓉.html"><img src="./img/芙蓉_01.jpg" alt="" width="177" height="100"></a></div>
        <!--功效-->
        <div class="functionn">
            <a href="葱兰.html"><img src="./img/葱兰_02.jpg" alt="" width="177" height="100"></a></div>
        <div class="volunteer">
            <a href="郁金香.html"><img src="./img/郁金香_02.jpg" alt="" width="177" height="100"></a>
        </div>
    </div>
    <div class="hot">
        <span class="rose"><a href="Rose.html">玫瑰</a></span>
        <span class="cherry"><a href="cherry.html">樱花</a></span>
        <span class="furong"><a href="芙蓉.html">芙蓉</a></span>
        <span class="conglan"><a href="葱兰.html">葱兰</a></span>
        <span class="yjx"><a href="郁金香.html">郁金香</a></span>
    </div>
</div>
<div class="banner">
    <div class="banner_picture" id="box">
        <!--设置相框-->
        <div class="current"><img src="./img/梨花_01.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/梨花_03.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/梨花_06.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/梨花_05.jpg" alt="" width="400" height="400"></div>
    </div>
    <ol id="button">
        <li class="current">1</li>
        <li class="but">2</li>
        <li class="but">3</li>
        <li class="but">4</li>
    </ol>
</div>
<div class="introduce">
    <p><h1>梨花</h1>（蔷薇科梨属植物）</p><br/>
    <p class="N">梨花，蔷薇科梨属，梨树的花朵。梨树，落叶乔木，叶圆如大叶杨，
        干有粗皮外护，枝撑如伞。春季开花，花色洁白，如同雪花，具有淡淡的香味。
        果可供生食外，还可酿酒、制梨膏、梨脯，以及药用。</p><br>
    <p>花先于叶开放或同时开放，伞形总状花序；萼片5，反折或开展；花瓣5，具爪，白色稀粉红色；
        雄蕊15-30，花药通常深红色或紫色；花柱2-5，离生，子房2-5室，每室有2胚珠。</p>
</div>
<div class="middle">
    <div class="photo">
        <img src="./img/梨花_02.jpg" alt="" width="370" height="280">
    </div>
    <div class="effect">
        <h3>药用</h3><br>
        <p>据明朝《本草通玄》记载，梨花有润肺、化痰、止咳和解酒等功效，民间还发现梨花有肌肤美白效果，据李时珍的《本草纲目》记载，“梨花可去面黑粉滓”发现梨花中有高浓度的熊果苷，是梨花美白肌肤作用的代表性活性因子。
            熊果苷，化学名称为对羟基苯-β-D-吡喃葡萄糖苷，它可在体内释放氢醌，一种强力酪氨酸氧化酶抑制剂，可抑制皮肤黑色素合成，而且还具有止咳、尿路消炎等作用与其他植物资源相比，梨花生长期短，受环境污染的机会少，具有更好的安全性。</p>
    </div>
</div>
<div class="take"><h1>花&nbsp;&nbsp;&nbsp;&nbsp;材&nbsp;&nbsp;&nbsp;&nbsp;采&nbsp;&nbsp;&nbsp;&nbsp;购</h1></div>
<div class="shop">
    <div class="shop_picture">
        <img src="./img/梨花_04.jpg" alt="" width="200" height="250">
    </div>
    <div class="lag">
        <p>花语：</p>
        <p>梨花的花语含义代表着纯情的爱、陪伴守候、离别等寓意。
            梨花美丽纯白色的花色象征着纯洁的爱情，能够携手一生走下去的爱情是最令人艳羡的。</p>
    </div>
    <div class="shopp">
        <a href=""><img src="./img/立即购买.png" alt=""></a>
    </div>
</div>
</body>
<script type="text/javascript" src="./picture.js"></script>
</html>
