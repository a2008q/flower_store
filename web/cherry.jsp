<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2020/1/3
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>樱花</title>
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
        .rose,.shuixian,.conglan,.furong,.yjx{
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
        .introduce{
            width: 380px;
            height: 420px;
            margin-top: 20px;
            margin-left: 100px;
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
        .banner{
            width: 400px;
            height: 400px;
            border: 1px solid #ccc;
            float: left;
            margin-top: 20px;
            margin-left: 120px;
            position: relative;
            overflow: hidden;
            clear: left;
        }
        .banner_picture .box .pic{
            display: none;
        }
        .banner_picture .box .current{
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
        .middle{
            width: 860px;
            height: 320px;
            margin-top: 20px;
            margin-left: 150px;
            float: left;
            margin-bottom: 80px;
        }
        .effect{
            width: 550px;
            height: 320px;
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
            width: 350px;
            height: 280px;
            float: right;
            margin-top: 50px;
            margin-left: 30px;
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
            width: 250px;
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
            margin-left: 10px;
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
    <img src="./img/樱花_06.jpg" alt="" width="300" height="900">
</div>
<div class="logo">
    <img src="./img/logo.png" alt="" width="250" height="150">
</div>
<div class="label">
    <div class="option">
        <!--首页-->
        <div class="card">
            <a href="水仙花.jsp"><img src="./img/水仙花_01.jpg" alt="" width="177" height="100"></a></div>
        <!--种类-->
        <div class="typee">
            <a href="芙蓉.jsp"><img src="./img/芙蓉_01.jpg" alt="" width="177" height="100"></a></div>
        <div class="persent">
            <!--礼品-->
            <a href="Rose.jsp"><img src="./img/玫瑰_03.jpg" alt="" width="177" height="100"></a></div>
        <!--功效-->
        <div class="functionn">
            <a href="葱兰.jsp"><img src="./img/葱兰_02.jpg" alt="" width="177" height="100"></a></div>
        <div class="volunteer">
            <a href="郁金香.jsp"><img src="./img/郁金香_01.jpg" alt="" width="177" height="100"></a>
        </div>
    </div>
    <div class="hot">
        <span class="shuixian"><a href="水仙花.jsp">水仙花</a></span>
        <span class="furong"><a href="芙蓉.jsp">芙蓉</a></span>
        <span class="rose"><a href="Rose.jsp">玫瑰</a></span>
        <span class="conglan"><a href="葱兰.jsp">葱兰</a></span>
        <span class="yjx"><a href="郁金香.jsp">郁金香</a></span>
    </div>
</div>

<div class="banner">
    <div class="banner_picture" id="box">
        <!--设置相框-->
        <div class="current"><img src="./img/樱花_01.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/樱花_03.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/樱花_04.jpg" alt="" width="400" height="400"></div>
        <div class="pic"><img src="./img/樱花_05.jpg" alt="" width="400" height="400"></div>
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
    <p><h1>樱花</h1> （蔷薇科樱属植物）</p><br>
    <p class="N">樱花（学名：Cerasus sp.）：是蔷薇科樱属几种植物的统称，在《中国植物志》新修订的名称中专指“东京樱花”，亦称“日本樱花”。
        樱花品种相当繁多，数目超过三百种以上，全世界共有野生樱花约150种，中国有50多种。全世界约40种樱花类植物野生种祖先中，原产于中国的有33种。其他的则是通过园艺杂交所衍生得到的品种。</p><br>
    <p>樱花原产北半球温带环喜马拉雅山地区，在世界各地都有生长，主要在日本国生长。花每枝3到5朵，成伞状花序，花瓣先端缺刻，花色多为白色、粉红色。
        花常于3月与叶同放或叶后开花，随季节变化，樱花花色幽香艳丽，常用于园林观赏。樱花可分单瓣和复瓣两类，单瓣类能开花结果，复瓣类多半不结果。</p>
</div>
<div class="middle">
    <div class="photo">
        <img src="./img/樱花_02.jpg" alt="" width="350" height="280">
    </div>
    <div class="effect">
        <h3>药用</h3><br>
        <p>樱花皮、木材含龙胆酸的5葡萄糖甙和5-鼠李糖葡萄糖甙(Sakurarin)、
            樱桃甙、木材含 d - 儿茶素；茎、叶含槲皮素 3-半乳糖甙；
            嫩叶含香豆素、反式一邻羟基桂皮酸葡萄糖甙、氰甙；
            种仁含脂肪油32%，主要含 a-桐酸、谷甾醇，用于咳嗽、发热等症状。</p><br>
        <h3>护肤</h3><br>
        <p>樱花具有很好的收缩毛孔和平衡油脂的功效，含有丰富的天然维生素A、B、E，
            樱叶黄酮还具有美容养颜，强化黏膜，促进糖分代谢的药效，是可以用来保持肌肤年轻的青春之花。
            樱花具有嫩肤、增亮肤色的作用，是护肤品的重要原料之一，樱花通常需要通过提取精制，
            专家曾把樱花运用三高新鲜提取技术提炼成樱花粉嫩油，樱花提取物中有一种叫樱花酵素的成分常用来祛痘。</p>
    </div>
</div>
<div class="take"><h1>花&nbsp;&nbsp;&nbsp;&nbsp;材&nbsp;&nbsp;&nbsp;&nbsp;采&nbsp;&nbsp;&nbsp;&nbsp;购</h1></div>
<div class="shop">
    <div class="shop_picture">
        <img src="./img/樱花_07.jpg" alt="" width="200" height="250">
    </div>
    <div class="lag">
        <p>花语：</p>
        <p>热烈、纯洁、高尚</p>
        <p>小科普：</p>
        <p>两千多年前的秦汉时期，樱花已在中国宫苑内栽培。唐朝时樱花已普遍出现在私家庭院。
            当时万国来朝，日本朝拜者将樱花带回了东瀛，其在日本已有1000多年的历史。</p>
    </div>
    <div class="shopp">
        <a href=""><img src="./img/立即购买.png" alt=""></a>
    </div>
</div>
</body>
<script type="text/javascript" src="./picture.js"></script>
</html>