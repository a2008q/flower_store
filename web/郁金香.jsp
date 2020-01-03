<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2020/1/3
  Time: 13:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>郁金香</title>
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
            height: 970px;
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
            margin-left: 120px;
        }
        .option{
            width: 598px;
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
        .rose,.cherry,.conglan,.furong,.shuixian{
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
            color: #A50080;
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
            width: 520px;
            height: 280px;
        }
        .effect p{
            display: inline;
            line-height: 30px;
            color: #A50080;
            font-family: 宋体;
        }
        .effect h3{
            display: inline;
        }
        .photo{
            width: 360px;
            height: 300px;
            float: right;
            margin-left: 30px;
            margin-top: 50px;
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
    <img src="./img/郁金香_02.jpg" alt="" width="300" height="1000">
</div>
<div class="logo">
    <img src="./img/logo.png" alt="" width="250" height="150">
</div>
<div class="label">
    <div class="option">
        <!--首页-->
        <div class="card">
            <a href="cherry.html"><img src="./img/樱花_02.jpg" alt="" width="177" height="100"></a></div>
        <!--种类-->
        <div class="typee">
            <a href="葱兰.html"><img src="./img/葱兰_02.jpg" alt="" width="177" height="100"></a></div>
        <div class="persent">
            <!--礼品-->
            <a href="Rose.html"><img src="./img/玫瑰_01.jpg" alt="" width="177" height="100"></a></div>
        <!--功效-->
        <div class="functionn">
            <a href="水仙花.html"><img src="./img/水仙花_02.jpg" alt="" width="177" height="100"></a></div>
        <div class="volunteer">
            <a href=""><img src="./img/芙蓉_04.jpg" alt="" width="177" height="100"></a>
        </div>
    </div>
    <div class="hot">
        <span class="cherry"><a href="cherry.html">樱花</a></span>
        <span class="conglan"><a href="葱兰.html">葱兰</a></span>
        <span class="rose"><a href="Rose.html">玫瑰</a></span>
        <span class="shuixian"><a href="水仙花.html">水仙</a></span>
        <span class="furong"><a href="芙蓉.html">芙蓉</a></span>
    </div>
</div>
<div class="banner">
    <div class="banner_picture" id="box">
        <!--设置相框-->
        <div class="current"><img src="./img/郁金香_01.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/郁金香_03.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/郁金香_04.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/郁金香_05.jpg" alt="" width="400" height="400"></div>
    </div>
    <ol id="button">
        <li class="current">1</li>
        <li class="but">2</li>
        <li class="but">3</li>
        <li class="but">4</li>
    </ol>
</div>
</div>
<div class="introduce">
    <p><h1>郁金香</h1>（百合目百合科植物）</p><br>
    <p class="N">郁金香（学名：Tulipa gesneriana L.）是百合科郁金香属的多年生草本植物，具鳞茎。英文名为“Garden tulip”或“Didier's tulip”。
        郁金香被广泛认为原产于土耳其，是土耳其、荷兰、匈牙利等国的国花。</p><br>
    <p>叶3-5枚，条状披针形至卵状披针状，花单朵顶生，大型而艳丽，花被片红色或杂有白色和黄色，有时为白色或黄色，长5-7厘米，宽2-4厘米，
        6枚雄蕊等长，花丝无毛，无花柱，柱头增大呈鸡冠状，花期4-5月。</p>
</div>
<div class="middle">
    <div class="photo">
        <img src="./img/郁金香_06.jpg" alt="" width="370" height="280">
    </div>
    <div class="effect">
        <h3>药用</h3><br>
        <p>曾有报导，花和叶中含一种有毒生物碱，其生理作用类似西发丁碱（Veratrine）郁金香甙ABC对枯草杆菌有抑制作用。
            郁金香汁通过阳离子及阴离子交换树脂后，对金黄色葡萄球菌仍有抗菌作用。
            茎和叶的酒精提取液，对Bacillus cereus mycoides 有抗菌作用，其活性成分中含有多种氨基酸。</p><br>
        <h3>观赏</h3><br>
        <p>郁金香是世界著名的球根花卉，还是优良的切花品种，花卉刚劲挺拔，叶色素雅秀丽，荷花似的花朵端庄动人，惹人喜爱。
            在欧美视为胜利和美好的象征，荷兰、伊朗、土耳其等许多国家珍为国花。</p>
    </div>
</div>
<div class="take"><h1>花&nbsp;&nbsp;&nbsp;&nbsp;材&nbsp;&nbsp;&nbsp;&nbsp;采&nbsp;&nbsp;&nbsp;&nbsp;购</h1></div>
<div class="shop">
    <div class="shop_picture">
        <img src="./img/郁金香_07.jpg" alt="" width="200" height="250">
    </div>
    <div class="lag">
        <p>花语：</p>
        <p>博爱、体贴、高雅、富贵、能干、聪颖、爱、
            慈善、名誉、美丽、祝福、永恒、爱的表白、永恒的祝福。</p>
        <p>寓意：着高雅、珍贵、财富、爱惜、友谊。认为明澈的黄色蕴含着春天的喜悦之情，是阳光的颜色。</p>
    </div>
    <div class="shopp">
        <a href=""><img src="./img/立即购买.png" alt=""></a>
    </div>
</div>
</body>
<script type="text/javascript" src="./picture.js"></script>
</html>
