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
    <title>芙蓉</title>
    <script src="picture.js"></script>
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
            margin-left: 100px;
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
            margin-left: 40px;
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
        .rose,.cherry,.conglan,.shuixian,.yjx{
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
            float:left;
        }
        .introduce p{
            display: inline;
            line-height: 23px;
            color: #40556C;
            font-family: 宋体;
        }
        .introduce h1{
            display: inline;
        }
        .effect{
            width: 800px;
            height: 280px;
            float: left;
            margin-left: 150px;
            margin-bottom: 100px;
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
            width: 500px;
            height: 300px;
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
    <img src="./img/芙蓉_05.jpg" alt="" width="300" height="950">
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
            <a href="水仙花.html"><img src="./img/水仙花_01.jpg" alt="" width="177" height="100"></a></div>
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
        <span class="shuixian"><a href="水仙花.html">水仙花</a></span>
        <span class="conglan"><a href="葱兰.html">葱兰</a></span>
        <span class="yjx"><a href="郁金香.html">郁金香</a></span>
    </div>
</div>
<div class="banner">
    <div class="banner_picture" id="box">
        <!--设置相框-->
        <div class="current"><img src="./img/芙蓉_01.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/芙蓉_03.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/芙蓉_04.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/芙蓉_06.jpg" alt="" width="400" height="400"></div>
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
    <p><h1>芙蓉</h1>（锦葵科植物）</p><br>
    <p class="N">芙蓉是一种锦葵科、木槿属植物原名：木芙蓉，别名：芙蓉花、拒霜花、木莲、地芙蓉、华木、酒醉芙蓉，拉丁文名：Hibiscus mutabilis Linn.锦葵科、木槿属落叶灌木或小乔木，花梗和花萼均密被星状毛与直毛相混的细绵毛。
        叶宽卵形至圆卵形或心形，先端渐尖，具钝圆锯齿，上面疏被星状细毛和点，
        下面密被星状细绒毛；花初开时白色或淡红色，后变深红色，直径约8厘米，花瓣近圆形，疏被毛。蒴果扁球形，被淡黄色刚毛和绵毛，种子肾形，背面被长柔毛。花期8-10月。芙蓉花花大色丽，为我国久经栽培的园林观赏植物。</p><br>
    <p>木芙蓉喜光耐阴，适宜温暖湿润的气候，不耐严寒，若在北方地区种植，冬季会有一部分木芙蓉被冻死，另一部分可在第 2 年春天根部发芽，喜肥沃湿润的砂壤土，生长适应性较强，生长快，
        萌芽几率大，可以抵抗 SO 2 、Cl 2 、HCl，对空气具有一定的净化能力。</p>
</div>
<div class="effect">
    <h3>药用</h3><br>
    <p>芙蓉的花、叶、枝、根均可入药，味微辛，性平，无毒。
        具有清肺凉血，散热解毒，治一切大小痈疽肿毒恶疮，有消肿排脓止痛之功。芙蓉花有清热凉血、消肿排脓等功效，适用于热疖、疮痈、乳痈及肺热咳嗽、肺痈等病症；又可用於血热引起的崩漏，常与莲蓬壳配合同用。芙蓉叶与花的功用相似，
        一般常作外用，能消肿定痛，适用于热疖、疔疮、痈肿、水火烫伤及臀部注射针剂后引起的肿块不消等症。</p><br>
    <h3>观赏</h3><br>
    <p>木芙蓉的枝、干、芽、叶在各个季节会形成不同的景色，春季梢头嫩绿，生机盎然；夏季绿叶成荫，浓荫覆地；秋季花团锦簇，形色兼备；冬季扶疏枝干，孕育生机。在一年四季中，木芙蓉凸显的风姿与妙趣主要是因为其具有花大色丽的特点，
        无论是孤植还是丛植于墙边、路旁、厅前，都可使整个园林景色独具韵味。除此之外，木芙蓉会因光照强度的差异导致花瓣中青素浓度不同，使花瓣呈现出不同的颜色，早晨为白色和浅红色，中午和下午变为深红色，从而使木芙蓉又有“三醉芙蓉”的称呼。近些年来，
        由于园艺科技水平的提升，复色芙蓉花得以问世，花瓣上出现彩边、斑块或彩色条纹等，延长了花期，增加了花朵大小。</p>
</div>
<div class="take"><h1>花&nbsp;&nbsp;&nbsp;&nbsp;材&nbsp;&nbsp;&nbsp;&nbsp;采&nbsp;&nbsp;&nbsp;&nbsp;购</h1></div>
<div class="shop">
    <div class="shop_picture">
        <img src="./img/芙蓉_07.jpg" alt="" width="200" height="250">
    </div>
    <div class="lag">
        <p>花语：</p>
        <p>纤细之美,贞操,纯洁 </p>
        <p>小科普：</p>
        <p>芙蓉花之所以人见人爱，一是因为它美艳无比，一日三变，其娇艳之姿，常令人流连忘返；二是它“拒霜”的独特性格，此花盛开于农历九至十一月，这时百花凋谢，它却傲霜绽放。
            据说，凡是受到这种花祝福而生的人大多较早熟，而周围的朋友看起来会像个小孩子似的。因此，恋爱的对象会有选择年纪较自己大的倾向。但是，能够拥有和自己一起成长的恋人也是不错的。</p>
    </div>
    <div class="shopp">
        <a href=""><img src="./img/立即购买.png" alt=""></a>
    </div>
</div>
</body>
<script type="text/javascript" src="./picture.js"></script>
</html>