<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>填写订单</title>
    <link type="text/css" rel="stylesheet" href="css/dingdan.css">
    <link type="text/css" rel="stylesheet" href="css/dingdan2.css">

    <style type="text/css">
        .email_autocomplete1 {
            position: relative;
            display: inline-block;
        }

            .email_autocomplete1 input {
                width: 200px;
                height: 30px;
                border: 1px solid #d2d2d2;
                padding: 5px 10px;
            }


                .email_autocomplete1 ul .curr {
                    background-color: #e7f4fd;
                }

                .email_autocomplete1 ul .note {
                    color: #777777;
                    cursor: auto;
                }

                .email_autocomplete1 ul li {
                    margin: 0;
                    padding: 0;
                    height: 20px;
                    line-height: 20px;
                    list-style: none;
                    padding-left: 5px;
                    cursor: pointer;
                }

        .input-date .ico-riqi {
            position: absolute;
            z-index: 9;
            top: 7px;
            right: 25px;
            color: #d2d2d2;
        }

        .invoice-info {
            margin-left: 0px;
        }

            .invoice-info span {
                padding-right: 30px;
            }

            .invoice-info a,
            .invoice-info a:hover,
            .invoice-info a:focus {
                color: #ff6a00;
            }

        .order-info span {
            padding-right: 30px;
        }

        .order-info a,
        .order-info a:hover,
        .order-info a:focus {
            color: #ff6a00;
        }

        .btn-tinge {
            margin-top: 7px;
        }

        .address-bar .address {
            margin-left: 150px;
        }

            .address-bar .address i {
                margin-right: 10px;
            }

        .address-bar .operate {
            margin-right: 2px;
        }

            .address-bar .operate a {
                margin-right: 10px;
            }

        .address-bar .address i {
            float: left;
        }

        .wzsj {
            display: block;
            max-width: 400px;
            cursor: pointer;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .wzsj_1 {
            display: block;
            max-width: 48px;
            cursor: pointer;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .popover {
            width: 352px;
            max-width: 352px;
            margin-left: 111px;
        }

            .popover.bottom > .arrow {
                margin-left: -109px !important;
            }

        .error-info {
            background-color: #f6f6f4;
            border: 1px solid #ccc;
            border-radius: 2px;
        }

        #timeFrame .popover {
            width: auto;
            padding: 1px 4px;
        }

        #timeFrame .arrow {
            margin-left: -5px !important;
        }

        #timeFrame .popover {
            margin-left: 0px;
        }

        .address-bar .notValid4Pp {
            background: #eee;
        }

        .text-primary {
            color: #b3aeae;
        }
        /*收货人表*/
        #sendInfo .form-group {
            height: 34px;
            line-height: 34px;
        }

        .btn-oldUser {
            float: right;
            height: 36px;
            line-height: 36px;
            box-sizing: border-box;
            padding: 0px 5px;
            border: 1px solid #737398;
            border-radius: 4px;
            color: #737398;
        }

            .btn-oldUser:hover {
                text-decoration: none;
            }

        .selects-list > li {
            padding: 1px 18px;
        }

            .selects-list > li:hover {
                padding: 0px 17px;
            }

            .selects-list > li.active {
                padding: 0px 17px;
            }

            .selects-list > li .ico-pop {
                margin-left: 5px;
            }
    </style>
    <style>
        .order-item .order-item-inner.date {
            width: auto;
        }

        #send_riqi {
            background: #fff;
        }

        #selectTf {
            position: absolute;
            top: 7px;
            left: 80px;
            z-index: 9;
        }

        #loginModal.com-modal .modal-content {
            border-radius: 8px;
            overflow: hidden;
        }
        .j-consignee {
            display: inline-block;
            width: 180px;
            height: 36px;
            border-radius: 18px;
            line-height: 34px;
            color: #232628;
            text-align: center;
            border: 1px solid #232628;
            
        }
        .j-consignee:hover,
        .j-consignee:focus{
            color:#232628;
            text-decoration:none;
        }
        .j-consignee img {
            width: 20px;
            height: 20px;
            margin-right: 8px;
            margin-top: 8px;
            vertical-align: top;
        }
    </style>

    <!--[if lt IE 9]>
        <script src="//img02.hua.com/pc/assets/js/html5shiv.min.js"></script>
    <![endif]-->
</head>
<body class="cart-flow">
<form method="POST" action="/shopping/OrderSave" id="form1" name="form1">
    <div class="container">
        <!-- 填写订单信息 -->
        <div class="cart-panel">
            <div class="hd">
                <h3>填写订单信息</h3>
            </div>
            <div class="bd">
                <!-- 收货人信息 -->
                <div class="order-item">
                    <div class="item-hd">
                        <h5>收货人信息</h5>
                    </div>
                    <div class="item-bd">
                        <div class="form-inline order-form"  id="OrderPersonInfo">
                            <div class="form-group">
                                <input type="text" class="form-control input-sm" id="realname" name="realname" value="" placeholder="他/她的姓名" style="width:140px;" maxlength="15">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control input-sm" id="phone" name="phone" value="" placeholder="手机号码" style="width:140px;" maxlength="25">
                            </div>
                            <div class="form-group">
                                    <div class="email_autocomplete1">
                                        <input type="text" class="form-control input-sm" id="Email" name="Email" nodetype="email" placeholder="电子邮箱（选填）" maxlength="50" autocomplete="off" style="width:200px;" config="{width:200,height:30}">
                                    </div>
                            </div>
                            <button class="btn btn-primary btn-sm" type="button" onClick="DoOrderPersonInfo()">确定</button>
                        </div>
                    </div>
                </div>
                    <input type="hidden" id="to_name" name="to_name" value="">
                    <input type="hidden" id="to_state" name="to_state" value="">
                    <input type="hidden" id="to_city" name="to_city" value="">
                    <input type="hidden" id="to_address" name="to_address" value="">
                    <input type="hidden" id="to_mobile" name="to_mobile" value="">
                    <input type="hidden" id="to_tel" name="to_tel" value="">
                    <input type="hidden" id="to_area" name="to_area" value="">
                    <input type="hidden" id="to_area_code" name="to_area_code" value="">
                    <input type="hidden" id="valid_4_pp" name="valid_4_pp" value="1">
                    <input type="hidden" id="peisongfei" name="peisongfei" value="0">
                <!-- 收货人信息 End -->
                <!-- 订购人信息 -->
                <div class="order-item">
                    <div class="item-hd">
                        <h5>订购人信息</h5>
                    </div>
                    <div class="item-bd">
                        <div class="form-inline order-form"  id="OrderPersonInfo">
                            <div class="form-group">
                                <input type="text" class="form-control input-sm" id="realname" name="realname" value="" placeholder="您的姓名" style="width:140px;" maxlength="15">
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control input-sm" id="phone" name="phone" value="" placeholder="手机号码" style="width:140px;" maxlength="25">
                            </div>
                            <div class="form-group">
                                    <div class="email_autocomplete1">
                                        <input type="text" class="form-control input-sm" id="Email" name="Email" nodetype="email" placeholder="电子邮箱（选填）" maxlength="50" autocomplete="off" style="width:200px;" config="{width:200,height:30}">
                                    </div>
                            </div>
                            <button class="btn btn-primary btn-sm" type="button" onClick="DoOrderPersonInfo()">确定</button>
                        </div>
                        <div class="order-info" id="OrderPersonInfoText" style="display:none;">
                            <span id="M_RealName"></span> <span id="M_Phone"></span>
                                <span id="M_Email"></span>
                            <a href="javascript:EditOrderPersonInfo()">编辑</a>
                        </div>
                    </div>
                </div>
                <!-- 订购人信息 End -->
                <!-- 配送日期/配送时段 -->
                <div class="order-item">
                    <div class="order-item-inner date">
                        <div class="item-hd" style="width:300px;">
                            <h5 style="display:inline-block;">送达日期</h5>                        </div>
                        <div class="item-bd input-date" id="selectDay">
                            <input type="text" class="form-control input-sm" id="send_riqi" name="send_riqi"  value="" readonly>
                            <span class="ico-riqi" id="xingqi"></span>
                            <span id="selectTf"></span>
                        </div>
                        <div id='divShow' style="position:absolute; z-index:9999; width:800px; height:auto; display:none; background:#FFFFFF;border:1px solid #979797;"><iframe src="" id="dialogIframe" name="dialogIframe" marginwidth="0" marginheight="0" scrolling="no" style="border: 0px none; width: 100%; height: 366px;" frameborder="0"></iframe></div>
                    </div>
                    <div class="order-item-inner time"></div>
                    <p class="error-info" id="SendDate_ErrorInfo" style="display:none;">温馨提醒：<span class="text-primary" id="dateErrMsg"></span></p>
                </div>

                <!-- 配送日期/配送时段 End -->
                <!-- 贺卡内容 -->
                <div class="order-item" >
                    <div class="order-item-inner card-text">
                            <div class="item-hd">
                                <h5>贺卡留言+署名</h5>
                            </div>
                            <div class="item-bd" id="cardText">
                                <textarea class="form-control" id="words" name="words" rows="5"></textarea>
                                <p class="helpBlock">最多200字，您还可以输入 <var class="word">200</var> 字。（仅支持中文，英文）</p>
                            </div>
                    </div>
                    <div class="order-item-inner card-option">
                            <ul class="tab-card">
                                <li class="active"><a href="#cardPane00">圣诞祝福</a></li>
                                <li><a href="#cardPane01">生日祝福</a></li>
                                <li><a href="#cardPane02">送恋人</a></li>
                                <li><a href="#cardPane03">送朋友</a></li>
                                <li><a href="#cardPane04">送长辈</a></li>
                            </ul>
                            <div class="tab-content card-content">
                                <ul class="tab-pane in active" id="cardPane00">
                                    <li data-popover="true" data-content="圣诞爷爷眯眼笑，笑得眼皮一直跳；胖胖身子小红帽，拎个口袋到处跑；见着烟囱往里跳，臭袜子里塞钞票；专往你的家里跑，福禄寿喜全带。祝圣诞快乐！">
                                        1.圣诞爷爷眯眼笑，笑得眼皮一直跳；胖胖身子小红帽，拎个口袋到处跑；见着烟囱往里跳，臭袜子里塞钞票；专往你的家里跑，福禄寿喜全带。祝圣诞快乐！
                                    </li>
                                    <li data-popover="true" data-content="在这美妙的时刻，愿你的心像乐园，盛开出娇艳的花朵；愿你的口像温泉，流淌出快乐的歌声；原你的眼像画面，描绘出绚丽的色彩。圣诞快乐！">
                                        2.在这美妙的时刻，愿你的心像乐园，盛开出娇艳的花朵；愿你的口像温泉，流淌出快乐的歌声；原你的眼像画面，描绘出绚丽的色彩。圣诞快乐！
                                    </li>
                                    <li data-popover="true" data-content="铃儿响叮当，驯鹿在欢跑；歌声传四方，圣诞节来到。雪花飘飘洒，带来祥瑞兆；人寿年又丰，人人都欢笑。圣诞节到了，祝你身体健康，事业成功，家庭美满，快乐围绕！">
                                        3.铃儿响叮当，驯鹿在欢跑；歌声传四方，圣诞节来到。雪花飘飘洒，带来祥瑞兆；人寿年又丰，人人都欢笑。圣诞节到了，祝你身体健康，事业成功，家庭美满，快乐围绕
                                    </li>
                                    <li data-popover="true" data-content="圣诞节来了，送你一棵如意圣诞树，愿你事事称心，万事如意；送你一个香甜太苹果，保你岁岁平安，一帆风顺；送你一道温馨好祝福，祝你快乐无忧，幸福安康！">
                                        4.圣诞节来了，送你一棵如意圣诞树，愿你事事称心，万事如意；送你一个香甜太苹果，保你岁岁平安，一帆风顺；送你一道温馨好祝福，祝你快乐无忧，幸福安康
                                    </li>
                                    <li data-popover="true" data-content="音乐奏响，雪花舞蹈，幸福的时光款款来到；松柏长青，灯火通明，脸上绽开欢乐的笑容；尽情狂欢，共庆平安，健康的生活福寿绵延。圣诞节，愿你健康快乐，幸福一生！">
                                        5.音乐奏响，雪花舞蹈，幸福的时光款款来到；松柏长青，灯火通明，脸上绽开欢乐的笑容；尽情狂欢，共庆平安，健康的生活福寿绵延。圣诞节，愿你健康快乐，幸福一生！
                                    </li>
                                    <li data-popover="true" data-content="携手友情，将烟花释放，让生活多彩；牵手爱情，听钟声敲响，让甜蜜伴随；守护亲情，将袜子装满，让祝福伴你成长。圣诞节，在圣诞树下许愿，愿你快乐安康！">
                                        6.携手友情，将烟花释放，让生活多彩；牵手爱情，听钟声敲响，让甜蜜伴随；守护亲情，将袜子装满，让祝福伴你成长。圣诞节，在圣诞树下许愿，愿你快乐安康
                                    </li>
                                    <li data-popover="true" data-content="雪花飘飘，烛光闪闪。佳肴味美，美酒扑鼻。全家相聚，亲情满满。圣诞来到，礼物送到。祝福不断，期盼未来。祝圣诞快乐!">
                                        7.雪花飘飘，烛光闪闪。佳肴味美，美酒扑鼻。全家相聚，亲情满满。圣诞来到，礼物送到。祝福不断，期盼未来。祝圣诞快乐!
                                    </li>
                                    <li data-popover="true" data-content="海上升明月，天涯共此时。温馨平安夜，竟夕起相思。铃儿响叮当，烦恼跑光光。青青圣诞树，熠熠满祝福。祝你圣诞快乐，幸福永远，平安健康！">
                                        8.海上升明月，天涯共此时。温馨平安夜，竟夕起相思。铃儿响叮当，烦恼跑光光。青青圣诞树，熠熠满祝福。祝你圣诞快乐，幸福永远，平安健康！
                                    </li>
                                    <li data-popover="true" data-content="诚挚的祝福，穿过刺骨的寒风，伴随吉祥的瑞雪，在欢乐的圣诞，送到你的眼前，愿你在圣诞节来临之际，尽情的狂欢，畅快的豪饮，享受美好快乐的一天！">
                                        9.诚挚的祝福，穿过刺骨的寒风，伴随吉祥的瑞雪，在欢乐的圣诞，送到你的眼前，愿你在圣诞节来临之际，尽情的狂欢，畅快的豪饮，享受美好快乐的一天！
                                    </li>
                                    <li data-popover="true" data-content="烛光点亮温情，让亲人的关怀伴随，让爱人的思念陪伴；炉火燃烧兴旺，让事业如鱼得水，让生活蒸蒸日上；圣诞树飞扬青春，在快乐激情绽放，让梦想乘风远航。圣诞节，享受快乐生活，精彩人生幸福！">
                                        10.烛光点亮温情，让亲人的关怀伴随，让爱人的思念陪伴；炉火燃烧兴旺，让事业如鱼得水，让生活蒸蒸日上；圣诞树飞扬青春，在快乐激情绽放，让梦想乘风远航。圣诞节，享受快乐生活，精彩人生幸福！
                                    </li>
                                    <li data-popover="true" data-content="走过春日百花，路过夏日烈阳，度过秋日丰收，迎来冬日寒雪。日复一日年复年，抛开烦恼乐无边，悠闲自在盼圣诞，生活无忧更安然。圣诞快乐。">
                                        11.走过春日百花，路过夏日烈阳，度过秋日丰收，迎来冬日寒雪。日复一日年复年，抛开烦恼乐无边，悠闲自在盼圣诞，生活无忧更安然。圣诞快乐。
                                    </li>
                                    <li data-popover="true" data-content="彩色的雪花，白色的冬天，红色的圣诞，暖色的季节。在这宁静的时刻，衷心祝你圣诞快乐，有个美好的新年。">
                                        12.彩色的雪花，白色的冬天，红色的圣诞，暖色的季节。在这宁静的时刻，衷心祝你圣诞快乐，有个美好的新年。
                                    </li>
                                    <li data-popover="true" data-content="想变成一颗树，一颗只为你存在的圣诞树，上面的每一颗星，都是我爱你的心。">
                                        13.想变成一颗树，一颗只为你存在的圣诞树，上面的每一颗星，都是我爱你的心。
                                    </li>
                                    <li data-popover="true" data-content="别人的圣诞节需要：圣诞老人、驯鹿、平安果、糖果、我的圣诞节有你就够了！">
                                        14.别人的圣诞节需要：圣诞老人、驯鹿、平安果、糖果、我的圣诞节有你就够了！
                                    </li>
                                    <li data-popover="true" data-content="你有什么人生大事这么重要？”，“结婚生子。”，“祝你成功！”，“我不需要你的祝福，我需要你的配合。">
                                        15.你有什么人生大事这么重要？”，“结婚生子。”，“祝你成功！”，“我不需要你的祝福，我需要你的配合。
                                    </li>
                                    <li data-popover="true" data-content="在这美妙的时刻，愿你的心像乐园，盛开出娇艳的花朵；愿你的口像温泉，流淌出快乐的歌声；愿你的眼像画面，描绘出绚丽的色彩。圣诞快乐！">
                                        16.在这美妙的时刻，愿你的心像乐园，盛开出娇艳的花朵；愿你的口像温泉，流淌出快乐的歌声；愿你的眼像画面，描绘出绚丽的色彩。圣诞快乐！
                                    </li>
                                    <li data-popover="true" data-content="最近如果有个胖子老头，跳进你的窗户，要带走你，你别害怕，那是他在帮我实现愿望！">
                                        17.最近如果有个胖子老头，跳进你的窗户，要带走你，你别害怕，那是他在帮我实现愿望
                                    </li>
                                    <li data-popover="true" data-content="因为有了圣诞，雪花倍加浪漫；因为有了许愿，生活更加灿烂；因为有了挂念，幸福爬上笑脸。愿大家在这个外来的节日里，平安、健康、祝圣诞快乐！">
                                        18.因为有了圣诞，雪花倍加浪漫；因为有了许愿，生活更加灿烂；因为有了挂念，幸福爬上笑脸。愿大家在这个外来的节日里，平安、健康、祝圣诞快乐！
                                    </li>
                                    <li data-popover="true" data-content="我觉得世界上最美的情话，不是I love you,而是每年的圣诞，都会抱住你的耳朵，对你轻轻的说Merry Christmas！">
                                        19.我觉得世界上最美的情话，不是I love you,而是每年的圣诞，都会抱住你的耳朵，对你轻轻的说Merry Christmas.
                                    </li>
                                    <li data-popover="true" data-content="让装着圣诞礼物的列车，穿过幸福的隧道，鸣着快乐的汽笛，把苦难全部甩掉，翻过幸运的山巅，躲过生活的烦恼，送来健康伴随，疾病不敢打扰。在圣诞节前夕，带着吉祥抵达，愿你美满幸福，圣诞快乐！">
                                        20.让装着圣诞礼物的列车，穿过幸福的隧道，鸣着快乐的汽笛，把苦难全部甩掉，翻过幸运的山巅，躲过生活的烦恼，送来健康伴随，疾病不敢打扰。在圣诞节前夕，带着吉祥抵达，愿你美满幸福，圣诞快乐！
                                    </li>
                                </ul>
                            </div>
                    </div>
                </div>
                <!-- 贺卡内容 End -->
                <!-- 支付方式 -->
                <div class="order-item">
                    <div class="item-hd">
                        <h5>支付方式</h5>
                    </div>
                    <div class="item-bd">
                        <ul class="selects-list" id="payWay">
                                <li class="active" id="payway0" data-popover="true" >网上支付<i class="ico ico-pop"></i><i class="ico ico-check"></i></li>

                            <li id="payway3" data-popover="true" >当面支付<i class="ico ico-check"></i><i class="ico ico-pop"></i></li>
                            
                            <span id="shangmen" class="checkbox-wrap form-inline" style="display:none">上门收款地址：<input name="address" type="text" id="address" value="" class="form-control input-sm" placeholder="如不是订购人请同时注明联系人及手机" style="width:230px;" maxlength="120"></span>
                        </ul>
                    </div>
                </div>
                    <input name="pays" type="hidden" id="pays" value="网上支付">
                <!-- 支付方式 End -->
                    <!-- 我要发票 -->
                    <div class="checkbox-wrap form-inline">
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" class="invoice-checkbox" name="ShowFInfo1" id="ShowFInfo1" value="1"> 我要发票
                            </label>
                        </div>
                    </div>

                <!-- 我有优惠券 -->
                <div class="checkbox-wrap form-inline" style="display:block">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox" class="voucher-checkbox" id="aIsUseLiquan" name="aIsUseLiquan" value="1" /> 使用优惠券
                        </label>
                    </div>
                </div>
                <!-- 我有优惠券 End -->
            </div>
        </div>
        <!-- 填写订单信息 End -->
        <!-- 核对购物清单 -->
        <div class="cart-panel check">
            <div class="hd"><h3>核对购物清单</h3></div>
            <div class="bd" id="Products">
                        <ul class="order-list">
                            <li class="img-box"><a href="/product/9012223.html" target="_blank"><img src="images/lanseyaoji.jpg" height="56" width="50"></a></li>
                            <li class="product">
                                <a href="/product/9012223.html">
                                    <span class="product-title">蓝色妖姬</span>
                                </a>
                                <div class="price">
                                    <span class="price-sign">&yen;</span>
                                    <span class="price-num" id="pro9012223">295</span>
                                </div>
                                x1
                            </li>
                        </ul>
            </div>
        </div>
        <!-- 核对购物清单 End -->
        <!-- 提交订单 -->
        <div class="submit-order">
            <div class="stat">
                1件商品，总商品金额：
                <div class="price">
                    <span class="price-sign">&yen;</span>
                    <span class="price-num" id="product_money">295</span>
                </div>
            </div>
            <div class="stat">
                配送费：
                <div class="price">
                    <span class="price-sign">&yen;</span>
                    <span class="price-num" id="i_spend_fee">0</span>
                </div>
            </div>
            <div class="stat total">
                实付款：
                <div class="price">
                    <span class="price-sign">&yen;</span>
                    <span class="price-num" id="order_total_money">295</span>
                </div>
            </div>
            <button class="btn btn-primary btn-lg" type="button" onClick="return CheckForm()" id="DoSubmit">提交订单</button>

</body>
</html>