<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2019/12/29
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>花样年华主页面</title>
    <!-- 导航栏bootstrap-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

    <!-- 导航栏style -->
    <link href="css/style1.css" rel="stylesheet">

    <style type="text/css">
        .all{
            background-color:#1B1E20;
        }
        body{
            height: 100%;
            width: 100%;
            font-size:12px;
            font-family:'微软雅黑';
            background:#fff;
            height: 100%;
            width: 100%;
            background-color: #fff;
        }

        body,ol,ul,h1,h2,h3,h4,h5,h6,p,th,td,dl,dd,form,fieldset,legend,input,textarea,select{
            margin:0;
            padding:0;
        }
        a{color:#2d374b;text-decoration:none}

        a:hover{color:#cd0200;text-decoration:underline}

        em{font-style:normal}

        li{list-style:none}

        img{
            border:0;
            vertical-align:middle;
        }
        /* vertical-align 属性设置元素的垂直对齐方式。 */

        table{
            border-collapse:collapse;
            border-spacing:0;
        }
        /* 飘花设置 */
        #content {
            width: 100%;
            height: 100%;
            top: 0px;
            position: absolute;
        }
        /* 范围 */
        #snowflake {
            width: 100%;
            height: 100%;
            position: absolute;
            top: 0;
            left: 0;
            overflow: hidden;
        }
        /* 雪花滚动 */
        .snowRoll {
            position: absolute;
            opacity: 0;
            -webkit-animation-name: mysnow;
            -webkit-animation-duration: 20s;
            -moz-animation-name: mysnow;
            -moz-animation-duration: 20s;
            height: 10px;
        }
        @-webkit-keyframes mysnow {
            0% {
                bottom: 100%;
            }
            50% {
                -webkit-transform: rotate(1080deg);
            }
            100% {
                -webkit-transform: rotate(0deg) translate3d(50px, 50px, 50px);
            }
        }
        @-moz-keyframes mysnow {
            0% {
                bottom: 100%;
            }
            50% {
                -moz-transform: rotate(1080deg);
            }
            100% {
                -moz-transform: rotate(0deg) translate3d(50px, 50px, 50px);
            }
        }
        /* /飘花设置 */

        /* 文字设置 */
        div.foo{
            margin:0 auto;
            text-align:center;
            margin-top: 70px;
        }
        .letter{
            display: inline-block;
            font-weight: 900;
            font-size: 4em;
            margin: 0.2em;
            position: relative;
            color: #00B4F1;
            transform-style: preserve-3d;
            perspective: 400;
            z-index: 1;
        }
        .letter:before, .letter:after{
            position:absolute;
            content: attr(data-letter);
            transform-origin: top left;
            top:0;
            left:0;
        }
        .letter, .letter:before, .letter:after{transition: all 0.3s ease-in-out;}
        .letter:before{
            color: #fff;
            text-shadow:-1px 0px 1px rgba(255,255,255,.8), 1px 0px 1px rgba(0,0,0,.8);
            z-index: 3;
            transform:rotateX(0deg) rotateY(-15deg) rotateZ(0deg);
        }
        .letter:after{
            color: rgba(0,0,0,.11);
            z-index:2;
            transform:scale(1.08,1) rotateX(0deg) rotateY(0deg) rotateZ(0deg) skew(0deg,1deg);
        }
        .letter:hover:before{
            color: #fafafa;
            transform:rotateX(0deg) rotateY(-40deg) rotateZ(0deg);
        }
        .letter:hover:after{
            transform:scale(1.08,1) rotateX(0deg) rotateY(40deg) rotateZ(0deg) skew(0deg,22deg);
        }
        #menu{
            margin: 0 auto;
        }
        .logo{
            margin: 0 auto;
        }
    </style>

    <script src="js/prefixfree.min.js"></script>
</head>
<body class="all">
<div class="custom-banner">
    <div id='content'>
        <!-- 飘花 -->
        <div id="snowflake"></div>
    </div>
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/jquery.transit.js"></script>
    <script type="text/javascript">
        $(function() {
            var snowflakeURl = [
                './images/icon_petal_1.png',
                './images/icon_petal_2.png',
                './images/icon_petal_3.png',
                './images/icon_petal_4.png',
                './images/icon_petal_5.png',
                './images/icon_petal_6.png',
                './images/icon_petal_7.png',
                './images/icon_petal_8.png'
            ]
            var container = $("#content");
            visualWidth = container.width();
            visualHeight = container.height();
            //获取content的宽高
            function snowflake() {
                // 雪花容器
                var $flakeContainer = $('#snowflake');

                // 随机六张图
                function getImagesName() {
                    return snowflakeURl[[Math.floor(Math.random() * 8)]];
                }
                // 创建一个雪花元素
                function createSnowBox() {
                    var url = getImagesName();
                    return $('<div class="snowbox" />').css({
                        'width': 25,
                        'height': 26,
                        'position': 'absolute',
                        'backgroundRepeat':'no-repeat',
                        'zIndex': 100000,
                        'top': '-41px',
                        'backgroundImage': 'url(' + url + ')'
                    }).addClass('snowRoll');
                }
                // 开始飘花
                setInterval(function() {
                    // 运动的轨迹
                    var startPositionLeft = Math.random() * visualWidth - 100,
                        startOpacity    = 1,
                        endPositionTop  = visualHeight - 40,
                        endPositionLeft = startPositionLeft - 100 + Math.random() * 500,
                        duration        = visualHeight * 10 + Math.random() * 5000;
                    // 随机透明度，不小于0.5
                    var randomStart = Math.random();
                    randomStart = randomStart < 0.5 ? startOpacity : randomStart;
                    // 创建一个雪花
                    var $flake = createSnowBox();
                    // 设计起点位置
                    $flake.css({
                        left: startPositionLeft,
                        opacity : randomStart
                    });
                    // 加入到容器
                    $flakeContainer.append($flake);
                    // 开始执行动画
                    $flake.transition({
                        top: endPositionTop,
                        left: endPositionLeft,
                        opacity: 0.7
                    }, duration, 'ease-out', function() {
                        $(this).remove() //结束后删除
                    });
                }, 500);
            }
            snowflake()
            //执行函数
        })
    </script>
    <!-- 导航：搜索表单、导航、logo、静态标题 -->
    <header class="main-header">
        <!--菜单-->
        <nav id="menu" class="navbar container">
            <div class="">
                <div class="navbar-header">
                    <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse"
                            data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
                    <a href="index.html" class="navbar-brand visible-xs">花样年华</a>
                </div>
                <div class="collapse navbar-collapse navbar-ex1-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="${pageContext.request.contextPath}/shiju.jsp" target="_blank">诗句</a></li>
                        <li><a href="${pageContext.request.contextPath}/send.jsp">礼品</a></li>
                        <li class="dropdown"><a href="archive.html" class="dropdown-toggle" data-toggle="dropdown">种类<i
                                class="fa fa-chevron-down"></i></a>
                            <div class="dropdown-menu" style="margin-left: -203.625px;">
                                <div class="dropdown-inner">
                                    <ul class="list-unstyled">
                                        <li><a href="${pageContext.request.contextPath}/cherry.jsp">樱花</a></li>
                                        <li><a href="${pageContext.request.contextPath}/Rose.jsp">玫瑰</a></li>
                                    </ul>
                                    <ul class="list-unstyled">
                                        <li><a href="${pageContext.request.contextPath}/桃花.jsp">桃花</a></li>
                                        <li><a href="${pageContext.request.contextPath}/梨花.jsp">梨花</a></li>
                                    </ul>
                                    <ul class="list-unstyled">
                                        <li><a href="${pageContext.request.contextPath}/水仙花.jsp">水仙花</a></li>
                                        <li><a href="${pageContext.request.contextPath}/芙蓉.jsp">芙蓉花</a></li>
                                    </ul>
                                    <ul class="list-unstyled">
                                        <li><a href="${pageContext.request.contextPath}/葱兰.jsp">葱兰花</a></li>
                                        <li><a href="${pageContext.request.contextPath}/郁金香.jsp">郁金香</a></li>
                                    </ul>
                                </div>
                            </div>
                        </li>
                        <li><a href="${pageContext.request.contextPath}/种类轮播图.html">展示</a></li>
                        <li><a href="${pageContext.request.contextPath}/login.jsp" target="_blank">登录注册</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- /菜单 -->

        <!-- 幻灯片 -->
        <div id="carousel-example-generic" class="carousel slide hidden-xs" data-ride="carousel">
            <!-- logo -->
            <div class="logo"><img src="images/1.png" alt="" width="250" height="250"></div>
            <!-- 标志 -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
            </ol>
            <!-- 静态标题1 -->
            <div class="carousel-inner">
                <div class="item active">
                    <!-- Static Header -->
                    <div class="header-text ">
                        <div class="col-md-12">
                            <h1>
                                <span>花谢花飞飞满天</span><br>
                                红消 <i>香断</i> 有谁怜
                            </h1>
                            <hr class="line">
                            <p>曹雪芹 《红楼梦》 <br/>《葬花吟》</p>
                            <a href="花的诗句.html#" class="btn btn-primary btn-header" target="_blank">更多花的诗句</a>
                        </div>
                    </div><!-- /header-text -->
                </div>
                <div class="item">
                    <!-- 静态标题2 -->
                    <div class="header-text">
                        <div class="col-md-12">
                            <h1>
                                <span>倡议</span><br>
                                <i>爱护花 杜绝破坏</i>
                            </h1>
                            <hr class="line">
                            <p>种了3年，3天就被毁 <br/>爆红的花海全被割掉</p>
                            <a href="http://www.sohu.com/a/259813112_663406" class="btn btn-primary btn-header"
                               target="_blank">了解更多</a>
                        </div>
                    </div><!-- /header-text -->
                </div>
            </div>
            <!-- 左右移动 -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div><!-- /左右移动 -->
    </header>
</div>
<!-- 导航框结束 -->
<!-- 核心JAVA文件-->
<script src="js/bootstrap.min.js"></script>
<%--推荐文字--%>
<div class="foo">
    <span class="letter" data-letter="今">今</span>
    <span class="letter" data-letter="日">日</span>
    <span class="letter" data-letter="推">推</span>
    <span class="letter" data-letter="荐">荐</span>
</div>
<div class="slider" id="slider" style="--img-prev:url(img/1.jpg)">
    <div class="slider__content" id="slider-content">
        <div class="slider__images">
            <div class="slider__images-item slider__images-item--active" data-id="1"><img src="images/one.jpg"/></div>
            <div class="slider__images-item" data-id="2"><img src="images/two.jpg"/></div>
            <div class="slider__images-item" data-id="3"><img src="images/3.jpg"/></div>
            <div class="slider__images-item" data-id="4"><img src="images/4.jpg"/></div>
            <div class="slider__images-item" data-id="5"><img src="images/5.jpg"/></div>
        </div>
        <div class="slider__text">
            <div class="slider__text-item slider__text-item--active" data-id="1">
                <div class="slider__text-item-head">
                    <h3>插花</h3>
                </div>
                <div class="slider__text-item-info">
                    <p>“哈利波特死亡圣器的圣诞花环”</p>
                </div>
            </div>
            <div class="slider__text-item" data-id="2">
                <div class="slider__text-item-head">
                    <h3>摄影</h3>
                </div>
                <div class="slider__text-item-info">
                    <p>“杜鹃花，别名映山红”</p>
                </div>
            </div>
            <div class="slider__text-item" data-id="3">
                <div class="slider__text-item-head">
                    <h3>甜品</h3>
                </div>
                <div class="slider__text-item-info">
                    <p>“樱花主题甜品台”</p>
                </div>
            </div>
            <div class="slider__text-item" data-id="4">
                <div class="slider__text-item-head">
                    <h3>花艺</h3>
                </div>
                <div class="slider__text-item-info">
                    <p>“生活美学”</p>
                </div>
            </div>
            <div class="slider__text-item" data-id="5">
                <div class="slider__text-item-head">
                    <h3>花窗</h3>
                </div>
                <div class="slider__text-item-info">
                    <p>“中式园林”</p>
                </div>
            </div>
        </div>
    </div>
    <div class="slider__nav">
        <div class="slider__nav-arrows">
            <div class="slider__nav-arrow slider__nav-arrow--left" id="left">to left</div>
            <div class="slider__nav-arrow slider__nav-arrow--right" id="right">to right</div>
        </div>
        <div class="slider__nav-dots" id="slider-dots">
            <div class="slider__nav-dot slider__nav-dot--active" data-id="1"></div>
            <div class="slider__nav-dot" data-id="2"></div>
            <div class="slider__nav-dot" data-id="3"></div>
            <div class="slider__nav-dot" data-id="4"></div>
            <div class="slider__nav-dot" data-id="5"></div>
        </div>
    </div>
</div>

<script src="js/index.js"></script>
</body>
</html>