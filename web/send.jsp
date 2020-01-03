<%@ page import="entity.Users" %><%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2019/12/29
  Time: 20:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>赠送花</title>
    <style>
        body{
            background-image: url(images/shuimo.jpg);
            margin: 0;
        }

        form,input,textarea{
            margin: 0;
            padding:0;
            list-style: none;
            border: none;
            background-color: transparent;
        }
        .head{
            height: 20px;
            border-bottom:1px solid #5084bb;
            background-color: #4a88ca;
            margin-bottom: 50px;
        }
        #fanhui{
            float: left;
            margin-left: 20px;
        }
        #phone{
            float: right;
            margin-right: 20px;
        }
        .header_login {
            width: 72px;
            height: 18px;
            line-height: 16px;
            text-align: center;
            text-decoration: none;
            color: #fff;
            font-size: 16px;
            margin: 0 12px 0 0;
            background: white;
            border: 1px solid #202d40;
            border-radius: 2px;
            text-decoration: none;
        }

        .header_login:hover {
            background: #76808e;
            color: white;
        }

        .header_signup {
            width: 72px;
            height: 18px;
            line-height: 16px;
            text-align: center;
            text-decoration: none;
            color: #202d40;
            font-size: 16px;
            margin: 0 0 0;
            background: white;
            border-radius: 2px;
            text-decoration: none;
            border: 1px solid #202d40;
            margin-right: 15px;
            margin-left: 5px;
        }

        .header_signup:hover {
            background: #76808e;
            color: white;
        }

        .fr {
            float: right;
            display: inline;
        }

        a:link{
            color: rgb(0, 0, 0);
            text-decoration: none;
        }
        a:visited{
            color: rgb(0, 0, 0);
            text-decoration: none;
        }
        a:hover{
            color: #5e47c7ec;
            text-decoration: underline;
        }
        #list{
            width: 770px;
            margin: 50px auto;
        }
        .js{
            height: 60px;
            padding: 12px 0 0 5px;
            background-color: #9cb8d6;
            font-weight: bold;
            margin-top: 10px;
        }
        .js1,.js2,.js3{
            height: 20px;
            background-color: #eee;
            border: 1px solid #ccc;
            margin-right: 20px;
        }
        .js3{
            width: 430px;
            margin-top: 10px;
        }
        .content{
            height: 530px;
            padding-top: 50px;
            padding-left: 50px;
            background: url(images/xinzhi.jpg) no-repeat;
            margin-top: 10px;
        }
        .bt{
            width: 680px;
            height: 30px;
            border: 2px dashed #9cb8d6;
            text-align: center;
            font-size: 18px;
        }
        .nr{
            width: 678px;
            height: 400px;
            border: 2px dotted #6eadf0;
            margin-top: 10px;
            font-family: "微软雅黑";
            font-size: 15px;
        }
        .hua{
            height: 30px;
            padding: 12px 0 0 5px;
            background-color: #93bbd6;
            font-weight: bold;
        }
        select{
            width: 150px;
            border: 1px solid rgb(127, 237, 252);
            background-color: rgb(225, 232, 235);
            margin-right: 20px;
        }
        .choosel{
            width: 120px;
            margin-right: 20px;
        }
        .sm{
            width: 220px;
        }
        .bc{margin-top: 10px;}
        .bc1,.bc2{
            width: 100px;
            height: 24px;
            background-color: #eee;
            border: 1px solid #ccc;
        }

        .accordionMenu {/*整个盒子*/
            font: 14px Arial, Verdana, sans-serif;
            color:#424242;
            background: #eef0da;
            padding: 2px;
            width: 300px;
            float: left;
            position: fixed;
            left: 30px;
        }
        .accordionMenu p {
            padding:0 10px;
            margin: 0;
            height: 0;
            overflow: hidden;
            -moz-transition: height 0.5s ease-in;
            -webkit-transition: height 0.5s ease-in;
            -o-transition: height 0.5s ease-in;
            transition: height 0.5s ease-in;
        }
        .accordionMenu h2 {
            margin: 2px 0;
            padding:0;
            position: inherit;
        }
        .accordionMenu h2 a {
            font-size: 13px;
            display: block;
            font-weight: normal;
            color:#424242;
            margin:0px;
            padding:10px 10px;
            background: #8f8f8f;
            background: -moz-linear-gradient( top, #cecece, #8f8f8f);
            background: -webkit-transition(linear, left top, left bottom, from(#cecece), to(#8f8f8f));
            background: -webkit-linear-gradient( top, #eccfcf, #80b8dd);
            background: -o-linear-gradient( top, #cecece, #8f8f8f);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffcecece, endColorstr=#ff8f8f8f);
            -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ffcecece, endColorstr=#f8f8f8f)";
            border-radius: 5px;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px
        }
        .accordionMenu :target h2 a,
        .accordionMenu h2 a:focus,
        .accordionMenu h2 a:hover,
        .accordionMenu h2 a:active {
            background: #79afdb;
            background: -moz-linear-gradient( top, #6bb2ff, #2288dd);
            background: -webkit-linear-gradient( top, #9cb8d6, #c2acd1);
            background: -o-linear-gradient( top, #6bb2ff, #2288dd);
            filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#ff6bb2ff, endColorstr=#ff2288dd);
            -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#ff6bb2ff, endColorstr=#ff2288dd)";
            color:#FFF;
        }
        .accordionMenu :target p {
            overflow: visible;
            height:30px;
        }

    </style>
    <script>
        /*储存数组*/
        var meaging=[["热爱着你"],["清纯的爱和敦厚善良"],["请相信我"],
            ["心心相印"],["不敢表露的爱"],["道歉和后悔"],["深埋心底的爱"],
            ["纯洁的爱情"],["执子之手，与子偕老"],["期待爱情"],["一生只爱你一个"]
        ];
        function getMeaging(){
            /*获得花下拉框的对象*/
            var sltFlower=document.form1.flower;
            /*获得花语下拉框的对象*/
            var sltMeaging=document.form1.meaging;
            /*得到对应花的花语数组*/
            var flowerMeaging=meaging[sltFlower.selectedIndex - 1];
            /*清空花下拉框，仅留提示选项*/
            sltMeaging.length=1;
            /*将花语数组中的值填充到花语下拉框中*/
            for(var i=0; i<flowerMeaging.length; i++){
                sltMeaging[i+1]=new Option(flowerMeaging[i],flowerMeaging[i]);
            }
        }
        function tiJiao(obj){
            var num = Number(obj.value);
            if(!num){
                alert('已提交!');
            }
        }
    </script>
</head>
<body>
<div class="head">
    <a href="/index.jsp" target="_parent" id="fanhui">返回首页</a>
    <a id="phone"><%
        if ((Users)session.getAttribute("user")!=null){
            out.print(((Users) session.getAttribute("user")).getPhone());
        }else {
    %>
        <a class="header_signup fr" href="/reg.jsp"><span>注册</span></a>
        <a class="header_login fr" href="/login.jsp"><span>登录</span></a>
        <%} %>

    </a>
</div>

<div class="accordionMenu">
    <div class="menuSection" id="mg">
        <h2><a href="#mg">玫瑰</a></h2>
        <p>红玫瑰：朋友、爱人</p>
        <p>白玫瑰：朋友，爱人</p>
        <p>粉红玫瑰：爱人</p>
        <p>黄玫瑰：朋友</p>
        <p>蓝色妖姬：爱人</p>
    </div>
    <div class="menuSection" id="bh">
        <h2><a href="#bh">百合</a></h2>
        <p>白百合：朋友、爱人 </p>
        <p>黄百合：朋友、亲人</p>
        <p>粉百合：朋友、亲人</p>
    </div>
    <div class="menuSection" id="fxz">
        <h2><a href="#fxz">风信子</a></h2>
        <p>白色风信子：朋友、爱人</p>
        <p>粉色风信子：朋友、爱人</p>
        <p>红色风信子：朋友、爱人</p>
    </div>
    <div class="menuSection" id="sx">
        <h2><a href="#sx">水仙</a></h2>
        <p>中国水仙花：朋友、爱人</p>
        <p>西洋水仙花：朋友、爱人</p>
        <p>山水仙花：朋友、同事</p>
    </div>
    <div class="menuSection" id="qw">
        <h2><a href="#qw">蔷薇</a></h2>
        <p>红蔷薇：爱人</p>
        <p>白蔷薇：爱人</p>
        <p>粉红蔷薇：爱人</p>
        <p>黄蔷薇：朋友、爱人</p>
    </div>
    <div class="menuSection" id="zll">
        <h2><a href="#zll">紫罗兰</a></h2>
        <p>紫色紫罗兰：亲朋、长辈、同事、爱人</p>
        <p>黄色紫罗兰：亲朋、领导、长辈、同事</p>
        <p>蓝色紫罗兰：亲朋、领导、长辈、同事</p>
    </div>
    <div class="menuSection" id="qt">
        <h2><a href="#qt">其他</a></h2>
        <p>雏菊：朋友、爱人</p>
        <p>桔梗：爱人、永不相见的人</p>
        <p>黄色马蹄莲：朋友、领导、同事、长辈</p>
        <p>四叶草：亲人、爱人、同事、朋友</p>
        <p>鸢尾花：同事、朋友</p>
        <p>三色堇：朋友</p>
    </div>
</div>

<form action="#" method="POST" id="list" name="form1">
    <div class="js">
        接收人:
        <input class="js1" type="text" maxlength="6">
        接收人联系方式:
        <input class="js1" type="text" maxlength="15"><br>
        接收人地址:
        <input class="js3" type="text" maxlength="100"><br>
    </div>

    <div class="content">
        <input class="bt" type="text"  value="请输入信的标题">
        <textarea class="nr" cols="30" rows="10"></textarea>
    </div>

    <div class="hua">
        <span>赠送的花</span>
        <select class="choosel"  name="flower" onchange="getMeaging()">
            <option value="0">----请选择种类----</option>
            <option value="红玫瑰">红玫瑰</option>
            <option value="蓝色妖姬">蓝色妖姬</option>
            <option value="紫罗兰">紫罗兰</option>
            <option value="白百合">白百合</option>
            <option value="风信子(白">风信子(白)</option>
            <option value="风信子(紫)">风信子(紫)</option>
            <option value="雏菊">雏菊</option>
            <option value="蔷薇(白)">蔷薇(白)</option>
            <option value="蔷薇(粉)">蔷薇(粉)</option>
            <option value="西洋水仙">西洋水仙</option>
            <option value="桔梗">桔梗</option>
        </select>

        <span>花语</span>
        <select name="meaging">
            <option value="0">----花语----</option>
        </select>

        <span>赠送数目</span>
        <select class="sm">
            <option>----请选择数目----</option>
            <option>1(一见钟情)</option>
            <option>2(世界上只有你和我)</option>
            <option>3(I LOVE YOU)</option>
            <option>6(互敬、互爱、互谅)</option>
            <option>8(感谢你的关怀、扶持和鼓励)</option>
            <option>9(长相守)</option>
            <option>10(十全十美)</option>
            <option>16(一帆风顺)</option>
            <option>21(真诚的爱)</option>
            <option>88(弥补歉意，用心弥补一切的错)</option>
            <option>99(天长地久)</option>
            <option>100(唯一的爱)</option>
            <option>111(无尽的爱)</option>
            <option>520(我爱你)</option>
            <option>521(我爱你)</option>
            <option>999(无尽的爱)</option>
            <option>1314(一生一世)</option>
        </select>
    </div>

    <div class="bc">
        <input class="bc1" type="submit" value="确 认" onclick="tiJiao(this)">
        <input class="bc2" type="reset" value="取 消">
    </div>
</form>
</body>
</html>