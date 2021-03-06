<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2020/1/3
  Time: 13:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>玫瑰</title>
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
            height: 900px;
            border: 1px solid #ccc;
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
        .yjx,.cherry,.conglan,.furong,.shuixian{
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
            margin-left: 100px;
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
            line-height: 30px;
            color: #40556C;
            font-family: 宋体;
        }
        .introduce h1{
            display: inline;
        }
        .effect{
            width: 850px;
            height: 280px;
            margin-top: 20px;
            margin-left: 150px;
            margin-bottom: 150px;
            float: left;
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
            height: 350px;
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
            height: 52px;
            float: right;
            margin-right: 40px;
            margin-top: 30px;
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
    <img src="./img/玫瑰_03.jpg" alt="" width="300" height="900">
</div>
<div class="logo">
    <img src="./img/logo.png" alt="" width="250" height="150">
</div>
<div class="label">
    <div class="option">
        <!--首页-->
        <div class="card">
            <a href="cherry.html"><img src="./img/樱花_01.jpg" alt="" width="177" height="100"></a></div>
        <!--种类-->
        <div class="typee">
            <a href="水仙花.html"><img src="./img/水仙花_01.jpg" alt="" width="177" height="100"></a></div>
        <div class="persent">
            <!--礼品-->
            <a href="葱兰.html"><img src="./img/葱兰_02.jpg" alt="" width="177" height="100"></a></div>
        <!--功效-->
        <div class="functionn">
            <a href="芙蓉.html"><img src="./img/芙蓉_02.jpg" alt="" width="177" height="100"></a></div>
        <div class="volunteer">
            <a href="郁金香.html"><img src="./img/郁金香_01.jpg" alt="" width="177" height="100"></a>
        </div>
    </div>
    <div class="hot">
        <span class="cherry"><a href="cherry.html">樱花</a></span>
        <span class="shuixian"><a href="水仙花.html">水仙花</a></span>
        <span class="conglan"><a href="葱兰.html">葱兰</a></span>
        <span class="furong"><a href="芙蓉.html">芙蓉</a></span>
        <span class="yjx"><a href="郁金香.html">郁金香</a></span>
    </div>
</div>
<div class="banner">
    <div class="banner_picture" id="box">
        <!--设置相框-->
        <div class="current"><img src="./img/玫瑰_01.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/玫瑰_02.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/玫瑰_06.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/玫瑰_05.jpg" alt="" width="400" height="400"></div>
    </div>
    <ol id="button">
        <!--里面设置小圆点-->
        <li class="current">1</li>
        <li class="but">2</li>
        <li class="but">3</li>
        <li class="but">4</li>
    </ol>
</div>
</div>
<div class="introduce">
    <p><h1>玫瑰</h1>（蔷薇科蔷薇属植物）</p><br>
    <p class="N">玫瑰（学名：Rosa rugosa Thunb.）：原产地中国。属蔷薇目，蔷薇科落叶灌木，枝杆多针刺，奇数羽状复叶，小叶5-9片，椭圆形，有边刺。
        花瓣倒卵形，重瓣至半重瓣，花有紫红色、白色，果期8-9月，扁球形。枝条较为柔弱软垂且多密刺，每年花期只有一次，因此较少用于育种，近来其主要被重视的特性为抗病性与耐寒性。</p><br>
    <p>玫瑰作为经济作物时，其花朵主要用于食品及提炼香精玫瑰油，玫瑰油应用于化妆品、食品、精细化工等工业。
        在欧洲诸语言中，蔷薇、玫瑰、月季都是使用同一个词，如英语是rose，德语是Die Rose。玫瑰是英国的国花。
        通俗意义中的“玫瑰”已成为多种蔷薇属植物的通称。</p>
</div>
<div class="effect">
    <h3>药用</h3><br>
    <p>《本草正文》中道：“玫瑰花，清而不浊，和而不猛，柔肝醒胃，疏气活血，
        宣通窒滞而绝无辛温刚燥之弊，断推气分药之中，最有捷效而最驯良，芳香诸品，殆无其匹”</p><br>
    <p>玫瑰花中含有300多种化学成份，如芳香的醇、醛、脂肪酸、酚和含香精的油和脂，常食玫瑰制品中以柔肝醒胃，舒气活血，美容养颜，令人神爽。
        玫瑰初开的花朵及根可入药，有理气、活血、收敛等作用、主治月经不调，跌打损伤、肝气胃痛，乳臃肿痛等症。
        玫瑰果的果肉，可制成果酱，具有特殊风味，果实含有丰富的维生素C及维生素P，可预防急、慢性传染病、冠心病、肝病和阻止产生致癌物质等。
        用玫瑰花瓣以蒸馏法提炼而得的玫瑰精油（称玫瑰露），可活化男性荷尔蒙及精子。玫瑰露还可以改善皮肤质地，促进血液循环及新陈代谢。</p><br>
    <h3>经济</h3><br>
    <p>玫瑰为香料植物，从玫瑰花中提取的香料——玫瑰油，在国际市场上价格昂贵；1kg玫瑰油相当于1.25kg黄金的价格，所以有人称之为“液体黄金”。
        玫瑰油成份纯净，气味芳香一直是世界香料工业不可取代的原料，在欧洲多用于制造高级香水等化妆品。从玫瑰油废料中开发抽取的玫瑰水，因其不加任何添加剂和化学原料，是纯天然护肤品，具有极好的抗衰老和止痒作用。
        此外，玫瑰的根皮可作为绢丝等物的黄色染料。</p>
</div>
<div class="take"><h1>花&nbsp;&nbsp;&nbsp;&nbsp;材&nbsp;&nbsp;&nbsp;&nbsp;采&nbsp;&nbsp;&nbsp;&nbsp;购</h1></div>
<div class="shop">
    <div class="shop_picture">
        <img src="./img/玫瑰_07.jpg" alt="" width="200" height="250">
    </div>
    <div class="lag">
        <p>花语：</p>
        <p>爱情、爱与美、容光焕发，勇敢。</p>
        <p>玫瑰花语在古希腊神话中，玫瑰集爱与美于一身，既是美神的化身，又溶进了爱神的血液。
            在世界范围内，玫瑰是用来表达爱情的通用语言。每到情人节，玫瑰更是身价倍增，是恋人、情侣之间的宠物。玫瑰代表爱情，不同颜色、朵数的玫瑰还另有吉意。</p>
    </div>
    <div class="shopp">
        <a href="/hua.html"><img src="./img/立即购买.png" alt=""></a>
    </div>
</div>
</body>
<script type="text/javascript" src="./picture.js"></script>
</html>
