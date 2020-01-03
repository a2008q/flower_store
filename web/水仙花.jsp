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
    <title>水仙花</title>
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
        .rose,.cherry,.lihua,.furong,.yjx{
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
            margin-left: 140px;
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
    <img src="./img/水仙花_06.jpg" alt="" width="300" height="950">
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
            <a href="梨花.html"><img src="./img/梨花_02.jpg" alt="" width="177" height="100"></a></div>
        <div class="volunteer">
            <a href="郁金香.html"><img src="./img/郁金香_02.jpg" alt="" width="177" height="100"></a>
        </div>
    </div>
    <div class="hot">
        <span class="rose"><a href="Rose.html">玫瑰</a></span>
        <span class="cherry"><a href="cherry.html">樱花</a></span>
        <span class="furong"><a href="芙蓉.html">芙蓉</a></span>
        <span class="lihua"><a href="梨花.html">梨花</a></span>
        <span class="yjx"><a href="郁金香.html">郁金香</a></span>
    </div>
</div>
<div class="banner">
    <div class="banner_picture" id="box">
        <!--设置相框-->
        <div class="current"><img src="./img/水仙花_01.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/水仙花_03.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/水仙花_04.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/水仙花_05.jpg" alt="" width="400" height="400"></div>
    </div>
    <ol id="button">
        <li class="current">1</li>
        <li class="but">2</li>
        <li class="but">3</li>
        <li class="but">4</li>
    </ol>
</div>
<div class="introduce">
    <p><h1>水仙</h1> （石蒜科多年生草本植物）</p><br/>
    <p class="N">水仙（Narcissus tazetta L. var. chinensis Roem.）：又名中国水仙，是多花水仙的一个变种。是石蒜科多年生草本植物。
        水仙的叶由鳞茎顶端绿白色筒状鞘中抽出花茎（俗称箭）再由叶片中抽出。
        一般每个鳞茎可抽花茎1-2枝，多者可达8-11枝，伞状花序。花瓣多为6片，花瓣末处呈鹅黄色。花蕊外面有一个如碗一般的保护罩。
        鳞茎卵状至广卵状球形，外被棕褐色皮膜。叶狭长带状，蒴果室背开裂。花期春季。</p><br>
    <p>水仙性喜温暖、湿润、排水良好。在中国已有一千多年栽培历史，为传统观赏花卉，是中国十大名花之十。</p>
</div>
<div class="middle">
    <div class="photo">
        <img src="./img/水仙花_02.jpg" alt="" width="370" height="280">
    </div>
    <div class="effect">
        <h3>药用</h3><br>
        <p>水仙以鳞茎入药，春秋采集，洗去泥沙，开水烫后，
            切片晒干或鲜用，有小毒。具有清热解毒，散结消肿等疗效。
            用于腮腺炎，痈疖疔毒初起红肿热痛等症。</p><br>
        <h3>经济</h3><br>
        <p>水仙花花香清郁，鲜花芳香油含量达0.20%-0.45%,经提炼可调制香精、香料；可配制香水，香皂及高级化妆品。水仙香精是香型配调中不可缺少的原料。
            水仙花清香隽永，采用水仙鲜花窨茶，制成高档水仙花茶，水仙乌龙茶等，茶气隽香、味甘醇。</p>
    </div>
</div>
<div class="take"><h1>花&nbsp;&nbsp;&nbsp;&nbsp;材&nbsp;&nbsp;&nbsp;&nbsp;采&nbsp;&nbsp;&nbsp;&nbsp;购</h1></div>
<div class="shop">
    <div class="shop_picture">
        <img src="./img/水仙花_07.jpg" alt="" width="200" height="250">
    </div>
    <div class="lag">
        <p>花语：</p>
        <p>中国水仙：万事如意、吉祥、美好、纯洁、高尚、纯洁的爱情、妇女德行。</p>
        <p>西方：水仙花的意译便是“恋影花”，花语是坚贞的爱情，引申一下便是自省对爱情的诚挚。</p>
    </div>
    <div class="shopp">
        <a href=""><img src="./img/立即购买.png" alt=""></a>
    </div>
</div>
</body>
<script type="text/javascript" src="./picture.js"></script>
</html>
