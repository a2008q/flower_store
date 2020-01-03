<%@ page import="entity.Users" %><%--
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
    <title>葱兰</title>
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
            height: 1000px;
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
        .rose,.cherry,.yjx,.furong,.shuixian{
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
            line-height: 30px;
            color: #50577A;
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
            margin-bottom: 110px;
        }
        .effect{
            width: 450px;
            height: 280px;

        }
        .effect p{
            display: inline;
            line-height: 30px;
            color: #50577A;
            font-family: 宋体;
        }
        .effect h3{
            display: inline;
        }
        .photo{
            width: 370px;
            height: 280px;
            float: right;
            margin-top: 50px;
            margin-left: 40px;
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
            height: 62px;
            float: right;
            margin-right: 30px;
            border-color: #87A8A1;
            margin-top: 30px;
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
    <img src="./img/葱兰_06.jpg" alt="" width="300" height="950">
</div>
<div class="logo">
    <img src="./img/logo.png" alt="" width="250" height="150">
</div>
<div class="label">
    <div class="option">
        <!--首页-->
        <div class="card">
            <a href="郁金香.jsp"><img src="./img/郁金香_01.jpg" alt="" width="177" height="100"></a></div>
        <!--种类-->
        <div class="typee">
            <a href="Rose.jsp"><img src="./img/玫瑰_03.jpg" alt="" width="177" height="100"></a></div>
        <div class="persent">
            <!--礼品-->
            <a href=""><img src="./img/芙蓉_01.jpg" alt="" width="177" height="100"></a></div>
        <!--功效-->
        <div class="functionn">
            <a href="cherry.jsp"><img src="./img/樱花_02.jpg" alt="" width="177" height="100"></a></div>
        <div class="volunteer">
            <a href="水仙花.jsp"><img src="./img/水仙花_02.jpg" alt="" width="177" height="100"></a>
        </div>
    </div>
    <div class="hot">
        <span class="yjx"><a href="郁金香.jsp">郁金香</a></span>
        <span class="rose"><a href="Rose.jsp">玫瑰</a></span>
        <span class="furong"><a href="芙蓉.jsp">芙蓉</a></span>
        <span class="cherry"><a href="cherry.jsp">樱花</a></span>
        <span class="shuixian"><a href="水仙花.jsp">水仙花</a></span>
    </div>
</div>
<div class="banner">
    <div class="banner_picture" id="box">
        <!--设置相框-->
        <div class="current"><img src="./img/葱兰_01.png" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/葱兰_03.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/葱兰_04.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/葱兰_05.jpg" alt="" width="400" height="400"></div>
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
    <p><h1>葱莲</h1></p><br>
    <p class="N">葱莲（学名：Zephyranthes candida （Lindl.）Herb.），又名玉帘、葱兰等，多年生草本植物，鳞茎卵形，直径约2.5厘米，
        具有明显的颈部，颈长2.5-5厘米。叶狭线形，肥厚，亮绿色，长20-30厘米，宽 2-4毫米。
        花茎中空；花单生于花茎顶端，下有带褐红色的佛焰苞状总苞，总苞片顶端2裂；花梗长约1厘米；花白色，外面常带淡红色；几无花被管，花被片6，长3-5厘米，顶端钝或具短尖头，宽约1厘米，
        近喉部常有很小的鳞片；雄蕊6，长约为花被的1/2；花柱细长，柱头不明显3裂。</p><br>
    <p>原产南美洲，中国各地都有种植，喜阳光充足，耐半阴，常用作花坛的镶边材料，也宜绿地丛植，最宜作林下半阴处的地被植物，或于庭院小径旁栽植。</p>
</div>
<div class="middle">
    <div class="photo">
        <img src="./img/葱兰_06.jpg" alt="" width="370" height="280">
    </div>
    <div class="effect">
        <h3>药用</h3><br>
        <p>其带鳞茎的全草是一种民间草药，有平肝、宁心、熄风镇静的作用，主治小儿惊风，羊痫疯。
            葱莲全草含石蒜碱、多花水仙碱、尼润碱等生物碱。花瓣中含云香甙。建议不要擅自食用葱莲，误食麟茎会引起呕吐、腹泻、昏睡、无力，应在医生指导下使用。</p><br>
        <h3>观赏</h3><br>
        <p>葱莲株从低矮、终年常绿、花朵繁多、花期长，繁茂的白色花朵高出叶端，
            在丛丛绿叶的烘托下，异常美丽，花期给人以清凉舒适的感觉。适用于林下、边缘或半荫处作园林地被植物，
            也可作花坛、花径的镶边材料，在草坪中成丛散植，可组成缀花草坪，也可盆栽供室内观赏。</p>
    </div>
</div>
<div class="take"><h1>花&nbsp;&nbsp;&nbsp;&nbsp;材&nbsp;&nbsp;&nbsp;&nbsp;采&nbsp;&nbsp;&nbsp;&nbsp;购</h1></div>
<div class="shop">
    <div class="shop_picture">
        <img src="./img/葱兰_02.jpg" alt="" width="200" height="250">
    </div>
    <div class="lag">
        <p>花语：</p>
        <p>一是代表初恋,二是代表白头偕老的爱恋。</p>
        <p>葱兰有着初恋的花语，可送给初次喜欢的女孩，表示对方是自己的甜蜜初恋;
            还有着纯洁的爱的含义，可送爱人表示自己爱的纯洁无暇;期待也是葱兰的花语之一，表示一种期待的惊喜;还有着相爱一生的含义，可送爱人许下携手一生的承诺。</p>
    </div>
    <div class="shopp">
        <a href=""><img src="./img/立即购买.png" alt=""></a>
    </div>
</div>
</body>
<script type="text/javascript" src="./picture.js"></script>
</html>

