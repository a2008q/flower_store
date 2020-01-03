<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2020/1/3
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/sty.css">
    <title>花的诗句</title>
    <style>
        body{
            background: url(images/background5.jpg);
            background-position: 100% 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }
        li:hover{
            color: bisque;
        }
        .j1{
            clear: both;
            width: 100px;
            height: 100px;
            float:right;
            border-radius: 10px;
            /* background: url(images/10.jpg); */
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            right: 40px;
        }
        .j2{
            width: 100px;
            height: 100px;
            float:left;
            border-radius: 10px;
            /* background: url(images/10.jpg); */
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            right: 63px;
        }
        .j3{
            width: 100px;
            height: 100px;
            float:right;
            border-radius: 10px;
            /* background: url(images/10.jpg); */
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            right: 40px;
        }
        .j4{
            width: 100px;
            height: 100px;
            float: left;;
            border-radius: 10px;
            /* background: url(images/10.jpg); */
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            right: 63px;
        }
        .j5{
            clear: both;
            width: 100px;
            height: 100px;
            float:right;
            border-radius: 10px;
            /* background: url(images/10.jpg); */
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            right: 40px;
        }
        .f1{
            width: 100px;
            height: 100px;
            float: left;;
            border-radius: 10px;
            /* background: url(images/10.jpg); */
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            right: 63px;
        }
        .f2{
            width: 100px;
            height: 100px;
            float: left;;
            border-radius: 10px;
            /* background: url(images/11.jpg); */
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            right: 63px;
        }
        .f3{
            width: 100px;
            height: 100px;
            float: left;;
            border-radius: 10px;
            /* background: url(images/12.jpg); */
            background-size: cover;
            background-repeat: no-repeat;
            position: relative;
            right: 63px;
        }
        .logo{
            width: 220px;
            height:160px;
            margin: 0 auto;
        }
        .tital{
            width:400px ;
            height: 100px;
            margin: 0 auto;
            text-align: center;
        }
        .classify{
            width:990px;
            margin: 0 auto;
        }
        div.one{
            width:90%;
            margin:0 auto;
            text-align:center;
            /* color: #80889F; */
        }
        .one .aa{
            clear: both;
            width: 800px;
            height: 340px;
            border: 1px #000 dashed ;
            border-radius:10px ;
            margin: 0 auto;
            text-align: left;
        }
        p{
            color:#C1D6D8;
            font-family: 宋体;
        }
        .two{
            width:90%;
            margin:0 auto;
            text-align:center;
            margin-top: 40px;
            clear: both;
        }
        .two .bb{
            width: 800px;
            height: 340px;
            border: 1px #000 dashed ;
            border-radius:10px ;
            text-align: left;
            overflow: auto;
            margin-left:290px;
        }
        .three{
            width:90%;0
            margin:0 auto;
            text-align:center;
            margin-top: 40px;
        }
        .three .cc{
            clear: both;
            width: 800px;
            height: 340px;
            border: 1px #000 dashed ;
            border-radius:10px ;
            margin: 0 auto;
            text-align: left;
        }
        .letter{
            display: inline-block;
            font-weight: 900;
            font-size: 40px;
            margin: 0.2em;
            position: relative;
            color: #B88689;
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
    </style>
    <script src="js/index1.js"></script>
    <script src="js/prefixfree.min.js"></script>
</head>
<body>
<div class="logo"><img src="images/1.png" alt="" width="220" height="160"></div>
<div class="tital">
    <span class="letter" data-letter="关">关</span>
    <span class="letter" data-letter="于">于</span>
    <span class="letter" data-letter="花">花</span>
    <span class="letter" data-letter="的">的</span>
    <span class="letter" data-letter="诗">诗</span>
    <span class="letter" data-letter="句">句</span></div>
<div id="div1">
    <a href="#" >昨夜闲潭梦落花，可怜春半不还家</a>
    <a href="#" >知否，知否？应是绿肥红瘦。</a>
    <a href="#" >墙角数枝梅，凌寒独自开。</a>
    <a href="#" >海棠未雨，梨花先雪，一半春休。</a>
    <a href="#" >庭前落尽梧桐，水边开彻芙蓉。</a>
    <a href="#" >荷叶罗裙一色裁，芙蓉向脸两边开。</a>
    <a href="#" >有梅无雪不精神，有雪无诗俗了人。</a>
    <a href="#" >尘世难逢开口笑，菊花须插满头归。</a>
    <a href="#" >荷尽已无擎雨盖，菊残犹有傲霜枝。</a>
    <a href="#" >东篱把酒黄昏后，有暗香盈袖。</a>
    <a href="#" >一朵芙蕖，开过尚盈盈。</a>
    <a href="#" >桃花春色暖先开，明媚谁人不看来。</a>
    <a href="#" >暗暗淡淡紫，融融冶冶黄。</a>
    <a href="#" >竹影和诗瘦，梅花入梦香。</a>
    <a href="#" >黄鹤楼中吹玉笛，江城五月落梅花。</a>
    <a href="#" >丛菊两开他日泪，孤舟一系故园心。</a>
    <a href="#" >桃红复含宿雨，柳绿更带朝烟。</a>
    <a href="#" >雪虐风饕愈凛然，花中气节最高坚。</a>
    <a href="#" >百亩庭中半是苔，桃花净尽菜花开。</a>
    <a href="#" >马穿山径菊初黄，信马悠悠野兴长。</a>
    <a href="#" >佳节清明桃李笑，野田荒冢只生愁。</a>
    <a href="#" >梅定妒，菊应羞。画阑开处冠中秋。</a>
    <a href="#" >竹影和诗瘦，梅花入梦香。</a>
    <a href="#" >兴尽晚回舟，误入藕花深处。</a>
    <a href="#" >玄都观里桃千树，尽是刘郎去后栽。</a>
    <a href="#" >双飞燕子几时回？夹岸桃花蘸水开。</a>
    <a href="#" >柳絮风轻，梨花雨细。</a>
    <a href="#" >万树寒无色，南枝独有花。</a>
    <a href="#" >采莲南塘秋，莲花过人头。</a>
    <a href="#" >桃红复含宿雨，柳绿更带朝烟。</a>
    <a href="#" >来日绮窗前，寒梅著花未。</a>
    <a href="#" >冰骨清寒瘦一枝。玉人初上木兰时。</a>
    <a href="#" >竹外一枝斜，想佳人，天寒日暮。</a>
    <a href="#" >玄都观里桃千树，尽是刘郎去后栽。</a>
</div>
<div class="classify">
    <span class="letter" data-letter="分">分</span>
    <span class="letter" data-letter="类：">类：</span>
</div>
<div class="one">
    <span class="letter" data-letter="季">季</span>
    <span class="letter" data-letter="节">节</span>
    <div class="first">
        <br>
        <br>
        <br>
        <br>
        <br>
        <h2>春季</h2>
        <a href="http://24jq.net/" target="_blank">
            <div class="j1">
                <img id="img4" onmouseover="bigger4()" onmouseout="smaller4()" src="images/16.jpg" style="width:100px;height:340px;" />
                <script type="text/javascript">
                    var img4 = document.getElementById('img4');
                    function bigger4(){  img4.style.width = '200px';  img4.style.height = '740px'; }
                    function smaller4(){  img4.style.width = '100px';  img4.style.height = '340px'; }
                </script>
            </div>
        </a>
        <ul class="aa">
            <br>
            <li>雨打梨花深闭门，误了青春，忘了青春。-----明代唐寅《一剪梅·雨打梨花深闭门》</li>
            <br>
            <p>译文:深闭房门隔窗只听雨打梨花的声音，就这样辜负了青春年华，虚度了青春年华。</p>
            <br>
            <li>人面不知何处去，桃花依旧笑春风。-----唐代崔护《题都城南庄》</li>
            <br>
            <p>译文:今日再来此地，姑娘不知去向何处，只有桃花依旧，含笑怒放春风之中。</p>
            <br>
            <li>小楼一夜听春雨，深巷明朝卖杏花。-----宋代陆游《临安春雨初霁》</li>
            <br>
            <p>译文:住在小楼听尽了一夜的春雨淅沥滴答，明日一早，深幽的小巷便有人叫卖杏花。</p>
            <br>
            <li>寂寞空庭春欲晚，梨花满地不开门。-----唐代刘方平《春怨》</li>
            <br>
            <p>译文：寂寞幽寂的庭院内春天已临近尽头，梨花落满地面而院门紧掩。</p>
        </ul>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h2>夏季</h2>
        <a href="http://24jq.net/" target="_blank">
            <div class="j2">
                <img id="img5" onmouseover="bigger5()" onmouseout="smaller5()" src="images/17.jpg" style="width:100px;height:340px;" />
                <script type="text/javascript">
                    var img5 = document.getElementById('img5');
                    function bigger5(){  img5.style.width = '200px';  img5.style.height = '740px'; }
                    function smaller5(){  img5.style.width = '100px';  img5.style.height = '340px'; }
                </script>
            </div>
        </a>
        <ul class="aa">
            <br>
            <li>小荷才露尖尖角，早有蜻蜓立上头。-----宋代杨万里《小池》</li>
            <br>
            <p>译文:小荷叶刚从水面露出尖尖的角，早就有一只小蜻蜓立在它的上头。</p>
            <br>
            <li>水晶帘动微风起，满架蔷薇一院香。-----唐代高骈《山亭夏日》</li>
            <br>
            <p>译文:水精帘在抖动微风拂起，满架蔷薇惹得一院芳香。</p>
            <br>
            <li>圆荷浮小叶，细麦落轻花。-----唐代杜甫《为农》</li>
            <br>
            <p>译文:圆圆的新荷小叶静静地浮在水面上，嫩绿的小麦已在轻轻地扬花。</p>
            <br>
            <li>若耶溪傍采莲女，笑隔荷花共人语。-----唐代李白《采莲曲》</li>
            <br>
            <p>译文：若耶溪旁，三三两两的采莲女正在采莲子；隔着荷花谈笑风生，互相嬉戏。</p>
        </ul>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h2>秋季</h2>
        <a href="http://24jq.net/" target="_blank">
            <div class="j3">
                <img id="img6" onmouseover="bigger6()" onmouseout="smaller6()" src="images/18.jpg" style="width:100px;height:340px;" />
                <script type="text/javascript">
                    var img6 = document.getElementById('img6');
                    function bigger6(){  img6.style.width = '200px';  img6.style.height = '790px'; }
                    function smaller6(){  img6.style.width = '100px';  img6.style.height = '340px'; }
                </script>
            </div>
        </a>
        <ul class="aa">
            <br>
            <li>兰有秀兮菊有芳，怀佳人兮不能忘。-----两汉刘彻的《秋风辞》</li>
            <br>
            <p>译文:兰花、菊花都无比秀美，散发着淡淡幽香，但是我思念美丽的人的心情却是难以忘怀的。</p>
            <br>
            <li>解落三秋叶，能开二月花。-----唐代李峤《风》</li>
            <br>
            <p>译文:风能吹落秋天金黄的树叶，能吹开春天美丽的鲜花。</p>
            <br>
            <li>黄菊枝头生晓寒。人生莫放酒杯干。-----宋代黄庭坚《鹧鸪天·座中有眉山隐客史应之和前韵即席答之》</li>
            <br>
            <p>译文:深秋的清晨，黄菊枝头显露出了阵阵寒意，人生短促，今朝有酒今朝醉。</p>
            <br>
            <li>梅定妒，菊应羞。画阑开处冠中秋。-----宋代李清照《鹧鸪天·桂花</li>
            <br>
            <p>译文：梅花肯定妒忌它，而它又足以令迟开的菊花感到害羞。在装有华丽护栏的花园里，它在中秋的应时花木中无双无俦。</p>

        </ul>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h2>冬季</h2>
        <a href="http://24jq.net/" target="_blank">
            <div class="j4">
                <img id="img7" onmouseover="bigger7()" onmouseout="smaller7()" src="images/19.jpg" style="width:100px;height:340px;" />
                <script type="text/javascript">
                    var img7 = document.getElementById('img7');
                    function bigger7(){  img7.style.width = '200px';  img7.style.height = '790px'; }
                    function smaller7(){  img7.style.width = '100px';  img7.style.height = '340px'; }
                </script>
            </div>
        </a>
        <ul class="aa">
            <br>
            <li>江南几度梅花发，人在天涯鬓已斑。-----宋代刘著《鹧鸪天·雪照山城玉指寒》</li>
            <br>
            <p>译文:江南的梅花开了又落，已不知开落了多少次，我仍在天涯漂泊，两鬓已斑白。</p>
            <br>
            <li>冰雪林中著此身，不同桃李混芳尘；-----元代王冕的《白梅》</li>
            <br>
            <p>译文:白梅生长在冰天雪地的寒冬，傲然开放，不与桃李凡花相混同。</p>
            <br>
            <li>砌下落梅如雪乱，拂了一身还满。-----五代李煜《清平乐·别来春半》</li>
            <br>
            <p>译文:台阶下飘落的白梅花犹如雪片纷飞，将它拂去不知不觉又洒满一身。</p>
            <br>
            <li>天将暮，雪乱舞，半梅花半飘柳絮。-----元代马致远的《寿阳曲·江天暮雪》</li>
            <br>
            <p>译文：天色将晚，突然下起了大雪，那纷飞的雪花像盛开梅花又像飘飞的柳絮。</p>
        </ul>
    </div>
</div>
<div class="two">
    <span class="letter" data-letter="节">节</span>
    <span class="letter" data-letter="日">日</span>
    <br>
    <a href="http://www.china.com.cn/ch-jieri/" target="_blank">
        <div class="j5">
            <img id="img8" onmouseover="bigger8()" onmouseout="smaller8()" src="images/20.jpg" style="width:100px;height:100px;" />
            <script type="text/javascript">
                var img8 = document.getElementById('img8');
                function bigger8(){  img8.style.width = '200px';  img8.style.height = '200px'; }
                function smaller8(){  img8.style.width = '100px';  img8.style.height = '100px'; }
            </script>
        </div>
    </a>
    <br>
    <br>
    <br>
    <br>
    <br>
    <ul class="bb">
        <br>
        <li>火树银花合，星桥铁锁开。-----唐代苏味道《正月十五夜》</li>
        <br>
        <p>译文:明灯错落，园林深处映射出璀璨的光芒，有如娇艳的花朵一般；由于四处都可通行，所以城门的铁锁也打开了。</p>
        <br>
        <li>尘世难逢开口笑，菊花须插满头归。-----唐代杜牧《九日齐山登高 / 九日齐安登高》</li>
        <br>
        <p>译文:尘世烦扰平生难逢让人开口一笑的事，满山盛开的菊花我定要插满头才归。</p>
        <br>
        <li>忆对中秋丹桂丛。花在杯中。月在杯中。-----宋代辛弃疾《一剪梅·中秋无月》》</li>
        <br>
        <p>译文:回忆昔日中秋，我置身在芳香的丹桂丛。花影映照在酒杯中，皓月也倒映在酒杯中。</p>
        <br>
        <li>待到重阳日，还来就菊花。-----唐代孟浩然《过故人庄》</li>
        <br>
        <p>译文：等到九九重阳节到来时，我还要来这里观赏菊花。</p>
        <br>
        <li>今又重阳，战地黄花分外香。-----近现代《采桑子·重阳》</li>
        <br>
        <p>译文：今天又逢重阳，战场上的菊花是那样的芬芳。</p>
        <br>
        <li>梨花风起正清明，游子寻春半出城。-----宋代吴惟信《苏堤清明即事》</li>
        <br>
        <p>译文：风吹梨花的时候正是清明时节，游人们为了寻找春意大多都出城踏青。</p>
        <br>
        <li>菊花何太苦，遭此两重阳？-----唐代李白《九月十日即事》</li>
        <br>
        <p>译文：菊花为何这样受苦，遭到两个重阳的采折之罪？</p>
        <br>
        <li>棠梨花映白杨树，尽是死生别离处。-----唐代白居易《寒食野望吟》</li>
        <br>
        <p>译文：海棠花与梨花掩映着白杨树，这都是生死离别的地方啊。</p>
        <br>
        <li>二月江南花满枝，他乡寒食远堪悲。-----唐代孟云卿《寒食》</li>
        <br>
        <p>译文：二月的江南花开满枝头，在他乡过寒食节足够悲哀了。</p>
        <br>
        <li>拆桐花烂漫，乍疏雨、洗清明。-----宋代柳永的《木兰花慢·拆桐花烂漫》</li>
        <br>
        <p>译文：桐树花开绚丽烂漫，一阵疏雨刚过，郊外一片晴明清新，如同洗过一般。</p>




    </ul>
</div>
<div class="three">
    <span class="letter" data-letter="种">种</span>
    <span class="letter" data-letter="类">类</span>
    <br>
    <br>
    <br>
    <br>
    <br>
    <h2>梨花</h2>
    <a href="#">
        <div class="f3">
            <img id="img3" onmouseover="bigger3()" onmouseout="smaller3()" src="images/15.jpg" style="width:100px;height:100px;" />
            <script type="text/javascript">
                var img3 = document.getElementById('img3');
                function bigger3(){  img3.style.width = '200px';  img3.style.height = '200px'; }
                function smaller3(){  img3.style.width = '100px';  img3.style.height = '100px'; }
            </script>
        </div>
    </a>
    <ul class="cc">
        <br>
        <li>一别如斯，落尽梨花月又西。-----清代纳兰性德的《采桑子·而今才道当时错》</li>
        <br>
        <p>译文:像这样一别，一待梨花落尽，月亮又会悬系在西天。</p>
        <br>
        <li>玉容寂寞泪阑干，梨花一枝春带雨。-----唐代白居易《长恨歌》</li>
        <br>
        <p>译文:寂寞忧愁颜面上泪水长流，犹如春天带雨的梨花。</p>
        <br>
        <li>欲黄昏。雨打梨花深闭门。-----宋代李重元《忆王孙·春词》</li>
        <br>
        <p>译文:眼看又即将到黄昏，暮雨打得梨花凌落，深深闭紧闺门。</p>
        <br>
        <li>梨花淡白柳深青，柳絮飞时花满城。-----宋代苏轼《东栏梨花》</li>
        <br>
        <p>译文：如雪般的梨花淡淡的白，柳树也已长得郁郁葱葱，柳絮飘飞的时候梨花也已开满城</p>
    </ul>
    <br>
    <br>
    <br>
    <br>
    <br>
    <h2>桃花</h2>
    <a href="#">
        <div class="f2">
            <img id="img2" onmouseover="bigger2()" onmouseout="smaller2()" src="images/14.jpg" style="width:100px;height:100px;" />
            <script type="text/javascript">
                var img2 = document.getElementById('img2');
                function bigger2(){  img2.style.width = '200px';  img2.style.height = '200px'; }
                function smaller2(){  img2.style.width = '100px';  img2.style.height = '100px'; }
            </script>
        </div>
    </a>
    <ul class="cc">
        <br>
        <li>人间四月芳菲尽，山寺桃花始盛开。-----唐代白居易《大林寺桃花》</li>
        <br>
        <p>译文:四月正是平地上百花凋零殆尽的时候，高山古寺中的桃花才刚刚盛放。</p>
        <br>
        <li>人面不知何处去，桃花依旧笑春风。-----唐代崔护《题都城南庄》</li>
        <br>
        <p>译文:今日再来此地，姑娘不知去向何处，只有桃花依旧，含笑怒放春风之中。</p>
        <br>
        <li>洛阳城东桃李花，飞来飞去落谁家？-----唐代刘希夷《代悲白头翁》</li>
        <br>
        <p>译文:洛阳城东的桃花李花随风飘转，飞来飞去，不知落入了谁家？</p>
        <br>
        <li>双飞燕子几时回？夹岸桃花蘸水开。-----宋代徐俯《春游湖》</li>
        <br>
        <p>译文：双飞的燕子啊，你们是几时回来的？岸边桃树枝条弯下来碰到水面，桃花好像蘸水开放。</p>
    </ul>
    <br>
    <br>
    <br>
    <br>
    <br>
    <h2>芙蓉</h2>
    <a href="#">
        <div class="f1">
            <img id="img" onmouseover="bigger()" onmouseout="smaller()" src="images/13.jpg" style="width:100px;height:100px;" />
            <script type="text/javascript">
                var img = document.getElementById('img');
                function bigger(){  img.style.width = '200px';  img.style.height = '200px'; }
                function smaller(){  img.style.width = '100px';  img.style.height = '100px'; }
            </script></div>
    </a>
    <ul class="cc">
        <br>
        <li>荷叶罗裙一色裁，芙蓉向脸两边开。-----唐代王昌龄《采莲曲》</li>
        <br>
        <p>译文:采莲少女的绿罗裙融入到田田荷叶中，仿佛一色，少女的脸庞掩映在盛开的荷花间，相互映照。</p>
        <br>
        <li>荷风送香气，竹露滴清响。-----唐代孟浩然《夏日南亭怀辛大》</li>
        <br>
        <p>译文:一阵阵的晚风送来荷花的香气，露水从竹叶上滴下发出清脆的响声。</p>
        <br>
        <li>惟有绿荷红菡萏，卷舒开合任天真。-----唐代李商隐《赠荷花》</li>
        <br>
        <p>译文:只有荷花是红花绿叶相配相映，荷叶有卷有舒，荷花有开有合，衬托得那样完美自然。</p>
        <br>
        <li>圆荷浮小叶，细麦落轻花。-----唐代杜甫《为农》</li>
        <br>
        <p>译文：圆圆的新荷小叶静静地浮在水面上，嫩绿的小麦已在轻轻地扬花。</p>
    </ul>
</div>
</body>
</html>