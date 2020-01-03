<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2019/12/29
  Time: 23:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta charset="GBK">
    <title>注册</title>
    <style>
        body {
            background: url(images/7.jpg);
            background-position: 100% 100%;
            background-size: cover;
            background-repeat: no-repeat;
            height: 800px;
            margin: 0;
            padding: 0;
        }

        .logo {
            width: 260px;
            height: 200px;
            margin: 0 auto;
            background: url(images/1.png);
            background-size: cover;
            margin-bottom: 50px;
        }

        .all {
            width: 700px;
            height: 240px;
            margin: 0 auto;
        }

        .final {
            width: 300px;
            margin: 0 auto;
            font-size: 12;
            clear: both;
            margin-top: 50px;
        }

        .content {
            width: 280px;
            height: 230px;
            margin: 0 auto;
        }

        .one {
            width: 180px;
            height: 200px;
            margin: 0 auto;
            font-size: 21px;
            position: relative;
            left: 18px;
        }

        .frist {
            margin-top: 220px;
            float: left;
        }

        .second {
            margin-top: 220px;
            float: right;
        }

        div.foo {
            width: 90%;
            margin: 0 auto;
            text-align: center;
        }

        .letter {
            display: inline-block;
            font-weight: 900;
            font-size: 10;
            margin: 0.2em;
            position: relative;
            color: #00B4F1;
            transform-style: preserve-3d;
            perspective: 400;
            z-index: 1;
        }

        .letter:before, .letter:after {
            position: absolute;
            content: attr(data-letter);
            transform-origin: top left;
            top: 0;
            left: 0;
        }

        a {
            font-family: 宋体;
            color: #1B3A3F;
            text-decoration: none;
        }

        .letter, .letter:before, .letter:after {
            transition: all 0.3s ease-in-out;
        }

        .letter:before {
            color: #fff;
            text-shadow: -1px 0px 1px rgba(255, 255, 255, .8), 1px 0px 1px rgba(0, 0, 0, .8);
            z-index: 3;
            transform: rotateX(0deg) rotateY(-15deg) rotateZ(0deg);
        }

        .letter:after {
            color: rgba(0, 0, 0, .11);
            z-index: 2;
            transform: scale(1.08, 1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg, 1deg);
        }

        .letter:hover:before {
            color: #fafafa;
            transform: rotateX(0deg) rotateY(-40deg) rotateZ(0deg);
        }

        .letter:hover:after {
            transform: scale(1.08, 1) rotateX(0deg) rotateY(40deg) rotateZ(0deg) skew(0deg, 22deg);
        }

        .submit {
            width: 50px;
            margin-left: 97px;
        }
    </style>
    <script src="js/prefixfree.min.js"></script>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("#getCode").removeAttr("disabled");
            $("#getCode").click(function () {
                $.ajax({
                    url: "messageServlet",
                    data: {
                        "phone": $("#phone").val()
                    },
                    type: "post",
                    async: true,
                    dataType: "text",
                    success: function (data) {
                        if (data == 'true') {
                            alert("验证码已发送");
                            time(this);
                        } else {
                            alert("验证码发送失败");
                        }
                    },
                    error: function () {
                        alert("error");
                    }
                });
            });
            $("#validate").click(function () {
                var code = $("#code");
                if (code.val() == '') {
                    alert("验证码不能为空");
                    return;
                }
                $.ajax({
                    url: "codeServlet",
                    data: {
                        "code": $("#code").val()
                    },
                    type: "post",
                    async: true,
                    dataType: "text",
                    success: function (data) {
                        if (data == 'true') {
                            alert("注册成功");
                            window.location.href = "index.jsp";
                        } else {
                            alert("验证码错误");
                            window.location.href = "reg.jsp";
                        }
                    },
                    error: function () {
                        alert("error");
                    }
                });
            });
        });
        var wait = 60;

        function time(obj) {
            if (wait == 0) {
                $("#getCode").removeAttr("disabled");
                $("#getCode").val(wait + "s");
                wait--;
                setTimeout(function () {
                    time(obj);
                }, 1000);
            }
        }
    </script>
</head>
<body>
<div class="logo"></div>
<div class="all">
    <div class="content">
        <div class="one">
            <form action="Servlet" method="post">
                <input type="hidden" name="oper" value="reg">
                <span class="letter" data-letter="手机号">手机号</span>
                <br>
                <input type="text" name="phone" id="phone" placeholder="请输入手机号码" style="color :#A5A5A6;">
                <br/>
                <span class="letter" data-letter="姓名">姓名</span>
                <br>
                <input type="text" name="name" placeholder="请输入姓名" style="color :#A5A5A6;">
                <br/>
                <span class="letter" data-letter="年龄">年龄</span>
                <br>
                <input type="text" name="age" placeholder="请输入年龄" style="color :#A5A5A6;">
                <br/>
                <span class="letter" data-letter="验证码">验证码</span>
                <br>
                <input type="text" name="code" id="code" placeholder="请输入验证码" style="color :#A5A5A6;"><input
                    id="getCode"
                    name="getCode"
                    type="button"
                    value="获取验证码">
                <br/>
                <br/>
                <span class="letter" data-letter="密码">密码</span>
                <br>
                <input type="password" size="20" placeholder="请输入密码" name="password" style="color :#A5A5A6;">
                <br/>
                <br>
                <div class="submit"><input type="submit" id="validate" value="注册"></div>
            </form>
        </div>
        <div class="two">
            <div class="frist"><a href="#">忘记密码</a></div>
            <div class="second"><a href="${pageContext.request.contextPath}/login.jsp">登录</a></div>
        </div>
        <div class="entry"></div>
    </div>
</div>
<div class="final"><input type="radio">我已阅读并同意<a href="xieyi.jsp" target="_blank">花样年华用户协议</a></div>

</body>
</html>
