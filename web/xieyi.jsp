<%--
  Created by IntelliJ IDEA.
  User: yi
  Date: 2020/1/3
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>花样年华用户协议</title>
    <style>
        body{
            background: url(images/background6.jpg);
            background-position: 100% 100%;
            background-size: cover;
            background-repeat: no-repeat;
        }
        .logo{
            width: 150px;
            height:100px;
            margin: 0 auto;
        }
        .tital{
            width:400px ;
            height: 100px;
            margin: 0 auto;
            text-align: center;
        }
        p{
            font-weight: bold;
            color:#7CAE9A;
            font-family: 宋体;
        }
        .text{
            width: 700px;
            margin: 0 auto;
        }
        .letter{
            display: inline-block;
            font-weight: 900;
            font-size: 40px;
            margin: 0.2em;
            position: relative;
            color: #88B59C;
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
</head>
<body>
<div class="logo"><img src="images/1.png" alt="" width="150" height="100"></div>
<div class="tital">
    <span class="letter" data-letter="用">用</span>
    <span class="letter" data-letter="户">户</span>
    <span class="letter" data-letter="协">协</span>
    <span class="letter" data-letter="议">议</span>
</div>
<div class="text">
    <div  class="one">  <p>特别提示：</p>
        《花样年华》在此特别提醒您（用户）在注册成为用户之前，请认真阅读本《用户协议》（以下简称“协议”），以确保您充分理解本协议中各条款。<br>
        <br>
        您的注册、登录、使用等行为将视为对本协议的接受，并同意接受本协议各项条款的约束。<br>
        <br>
        本协议约定《花样年华》与用户之间关于《花样年华》软件服务的权利义务。“用户”是指注册、登录、使用本服务的个人。<br>
        <br>
        本协议可由《花样年华》随时更新，更新后的协议条款一旦公布即代替原来的协议条款，恕不再另行通知，用户可在本网站查阅最新版协议条款。<br>
        <br>
        在《花样年华》修改协议条款后，如果用户不接受修改后的条款，请立即停止使用《花样年华》提供的服务，用户继续使用《花样年华》提供的服务将被视为接受修改后的协议。
    </div>
    <div class="two">
        <p>一.账户注册</p>
        1.1、用户在使用本服务前需要注册一个“《花样年华》”帐号。“《花样年华》”帐号应当使用手机号码绑定注册，请用户使用尚未与“《花样年华》”帐号绑定的手机号码，以及未被《花样年华》根据本协议封禁的手机号码注册“《花样年华》”帐号。《花样年华》可以根据用户需求或产品需要对帐号注册和绑定的方式进行变更，而无须事先通知用户。
        <br>
        <br>
        1.2、鉴于“《花样年华》”帐号的绑定注册方式，您同意《花样年华》在注册时将使用您提供的手机号码及/或自动提取您的手机号码及自动提取您的手机设备识别码等信息用于注册。
        <br>
        <br>
        1.3、在用户注册及使用本服务时，《花样年华》需要搜集能识别用户身份的个人信息以便《花样年华》可以在必要时联系用户，或为用户提供更好的使用体验。《花样年华》搜集的信息包括但不限于用户的性别、年龄、出生日期、个人说明；《花样年华》同意对这些信息的使用将受限于第三条用户个人隐私信息保护的约束。
    </div>
    <div class="three">
        <p>二、服务内容</p>
        本服务的具体内容由《花样年华》根据实际情况提供，包括但不限于授权用户通过其帐号进行订单发布、添加客户信息、订单匹配。《花样年华》可以对其提供的服务予以变更，且《花样年华》提供的服务内容可能随时变更；用户将会收到《花样年华》关于服务变更的通知。
    </div>
    <div class="four">
        <p>三、使用规范</p>
        3.1、您在使用本服务时应遵守中华人民共和国相关法律法规、您所在国家或地区之法令及相关国际惯例，不将本服务用于任何非法目的（包括用于禁止或限制交易物品的交易），也不以任何非法方式使用本服务。
        <br>
        <br>
        3.2、您在使用本服务时应对交易真实性负责，并配合《花样年华》方对交易真实合法性的调查工作。若您将本服务用于虚假交易，《花样年华》方有权要求合作方单方面冻结您的账户并拒绝向您提供本APP服务，因此导致《花样年华》方或合作方或其他方受损的，您应承担赔偿责任。
        <br>
        <br>
        3.3、您不得利用本APP服务从事侵害他人合法权益之行为，否则《花样年华》有权拒绝提供本APP服务，且您应承担所有相关法律责任，因此导致《花样年华》方或合作银行或其他方受损的，您应承担赔偿责任。上述行为包括但不限于：
        <br>
        <br>
        (1)侵害他人名誉权、隐私权、商业秘密、商标权、著作权、专利权等合法权益；
        <br>
        <br>
        (2)违反依法定或约定之保密义务；
        <br>
        <br>
        (3)冒用他人名义使用本服务；
        <br>
        <br>
        (4)从事不法交易行为，如洗钱、恐怖融资、贩卖枪支、毒品、禁药、盗版软件、其他《花样年华》方或合作方认为不得使用本服务进行交易的物品等；
        <br>
        <br>
        (5)提供赌博资讯或以任何方式引诱他人参与赌博；
        <br>
        <br>
        (6)非法使用他人银行账号（包括信用卡账户）或无效银行账号（包括信用卡账户）交易；
        <br>
        <br>
        (7)违反《银行卡业务管理办法》使用银行卡。或利用信用卡套取现金（以下简称“套现”）；
        <br>
        <br>
        (8)进行与您或交易对方宣传的交易内容不符的交易，或不真实的交易；
        <br>
        <br>
        (9)从事任何可能含有电脑病毒或是可能侵害本服务系统、资料之行为；
    </div>
    <di class="five">
        <p>四、法律责任</p>
        4.1、如果《花样年华》发现或收到他人举报或投诉用户违反本协议约定的，《花样年华》有权不经通知随时对相关内容，包括但不限于用户资料、订单记录进行审查、删除，并视情节轻重对违规帐号处以包括但不限于警告、帐号封禁 、设备封禁 、功能封禁的处罚，且通知用户处理结果。
        <br>
        <br>
        4.2、用户理解并同意，《花样年华》有权依合理判断对违反有关法律法规或本协议规定的行为进行处罚，对违法违规的任何用户采取适当的法律行动，并依据法律法规保存有关信息向有关部门报告等，用户应承担由此而产生的一切法律责任。
        <br>
        <br>
        4.3、用户理解并同意，因用户违反本协议约定，导致或产生的任何第三方主张的任何索赔、要求或损失，包括合理的律师费，用户应当赔偿《花样年华》与合作公司、关联公司，并使之免受损害。
    </di>
    <div class="six">
        <p>五、条款解释、法律适用及争端解决</p>
        5.1、《花样年华》方对本服务协议拥有最终的解释权。
        <br>
        <br>
        5.2、本协议及其修订效力有关的所有事宜，将受中国法律管辖，任何争议仅适用中国法律。
        <br>
        <br>
        5.3、因本协议所引起的任何纠纷和争议，首先应友好协商解决，协商不成的，您在此完全同意将纠纷或争议提交杭州市有管辖权的人民法院诉讼解决。
    </div>
    <div class="seven">
        <p>六、知识产权的保护</p>
        6.1、《花样年华》上所有内容，包括但不限于著作、图片、档案、资讯、资料、平台架构、平台画面的安排、页面设计，均由《花样年华》方或其他权利人依法拥有其知识产权，包括但不限于商标权、专利权、著作权、商业秘密等。
        <br>
        <br>
        6.2、非经《花样年华》方或其他权利人书面同意，任何人不得擅自使用、修改、复制、公开传播、改变、散步、发行或公开发表《花样年华》平台程序或内容。
        <br>
        <br>
        6.3、您未经《花样年华》方的明确书面同意不许下载（除了页面缓存）或修改平台或其任何部分。不得对《花样年华》平台或其内容进行转售或商业利用；不得收集和利用产品目录、说明和价格；不得对《花样年华》平台或其内容进行任何衍生利用；不得为其他商业利益而下载或拷贝账户信息或使用任何数据采集、Robots或类似的数据收集和摘录工具。未经各产品方的书面许可，严禁对《花样年华》平台的内容进行系统获取以直接或间接创建或编辑文集、汇编、数据库或人名地质录（无论是否通过Robots、Spiders、自动仪器或手工操作）。另外，严禁任何未经本使用条件明确允许的目的而使用《花样年华》平台上的内容和材料。
    </div>

</div>
</body>
</html>