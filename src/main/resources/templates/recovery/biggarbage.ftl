<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>大型垃圾回收页面</title>
    <#include "./common/header.ftl"/>

    <style>
        .container-fluid {
            background-color: #2a5caa;
            position: relative;
        }

        .navbar-body {
            float: left;
        }

        .navbar-body li {
            margin-right: 15PX;
            margin-top: 3px;
        }

        .navbar-body a {
            color: white;
            font-weight: bold;
            font-size: 16px;
            font-family: 微软雅黑;
        }

        .btn-group {
            float: right;
        }

        .btn-group button {
            margin-top: 7px;
        }

        .btn-group img {
            width: 20px;
            height: 20px;
        }

        .headline {
            text-align: center;
        }



        .container2 {
            margin-top: 50px;
        }

        .bottom {
            background-color: #2a5caa;
            height: 100px;
            margin-top: 60px;
            text-align: center;
            line-height: 100px;
            color: white;
        }
    </style>
</head>

<body>
    <!-- 导航栏 -->

    <div class="container-fluid">
        <div class="row">
            <div class="navbar-header col-md-3 col-md-offset-1">
                <img src="/recovery/images/logo.png" />
            </div>
            <div class="navbar-body col-md-5 ">
                <ul class="nav nav-pills">
                    <li role="presentation"><a href="/index">首页</a></li>
                    <li role="presentation"><a href="/index/recovery">垃圾回收</a></li>
                    <li role="presentation"><a href="/home/index/login">二手商城</a></li>
                    <li role="presentation"><a href="/index/lovedonation">爱心捐献</a></li>
                </ul>
            </div>
            <!-- Single button -->
            <div class="btn-group col-md-2 col-md-offset-1">
                <button type="primary" class="btn btn-default dropdown-toggle" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    <img src="/recovery/images/user.png" />
                    个人中心 <span class="caret"></span>
                </button>
                <ul class="dropdown-menu">
                    <li><a href="/home/index/login">登录</a></li>
                    <li><a href="/home/index/login">注册</a></li>
                </ul>
            </div>
        </div>
    </div>

    <!-- 第二行的物品类别 -->

    <div class="row">
        <img src="/recovery/images/大型垃圾回收大图.jpg" alt="" style="width: 100%;">
    </div>
    <div class="container-fluid" style="background-color: #f3f2f2;">
        <div class="headline">
            <h3>在线预约免费上门回收</h3>
            <p>环保为世界,公益为你</p>
        </div>

        <form id="inputForm">
            <div class="form-group col-xs-6 col-xs-offset-3">
                <label for="name">姓名</label>
                <input type="text" class="form-control " id="name" name="name" placeholder="请输入姓名">
            </div>
            <div class="form-group col-xs-6 col-xs-offset-3">
                <label for="iphone">电话</label>
                <input type="text" class="form-control" id="iphone" name="iphone" placeholder="请输入联系方式">
            </div>
            <div class="form-group col-xs-3 col-xs-offset-3">
                <label for="bigWeight">重量(kg)</label>
                <input type="text" class="form-control" id="bigWeight" name="bigWeight" placeholder="请输入重量(kg/公斤)">
            </div>
            <div class="form-group col-xs-1 ">
                <label for="bigLength">长度(cm)</label>
                <input type="text" class="form-control" id="bigLength" name="bigLength" placeholder="cm">
            </div>
            <div class="form-group col-xs-1 ">
                <label for="bigWide">宽度(cm)</label>
                <input type="text" class="form-control" id="bigWide" name="bigWide" placeholder="cm">
            </div>
            <div class="form-group col-xs-1 ">
                <label for="bigHigh">高度(cm)</label>
                <input type="text" class="form-control" id="bigHigh" name="bigHigh" placeholder="cm">
            </div>
<!--            <div class="form-group col-xs-6 col-xs-offset-3">-->
<!--                <label for="">请选择地区</label>-->
<!--                <select name="">-->
<!--                    <option value="">江苏</option>-->
<!--                </select>-->
<!--                <select name="" id="">-->
<!--                    <option value="">苏州</option>-->
<!--                </select>-->
<!--                <select name="" id="">-->
<!--                    <option value="">吴中区</option>-->
<!--                </select>-->
<!--            </div>-->
            <div class="form-group col-xs-6 col-xs-offset-3">
                <label for="address">详细地址</label>
                <input type="text" class="form-control" id="address" name="address" placeholder="请输入详细地址">
            </div>
            <div class="form-group col-xs-6 col-xs-offset-3">
                <label for="appointmentTime">预约时间</label>
                <input type="date" class="form-control" id="appointmentTime" name="appointmentTime" placeholder="请选择上门时间">
            </div>
            <input type="submit" onclick="submitAdd()" class="btn btn-primary" style="margin-top: 20px; margin-left: 48%;">
        </form>

        <h5 style="text-align: center;">回收费用详见下面说明</h5>
    </div>


    <div class="container container2" >
      <div class="col-xs-6 col-xs-offset-3" >
        <p><b>回收费用基于以下计费规则</b></p>
        <P><b>1.体积重量计算方法</b></P>
        <div>回收物的计费标准是按照体重或者重量来进行计算,分为体积重量域实际重量,取两者之间的较大值,其中,体积重量的计算方法为:</div>
        <div><b>体积重量为:长 (CM)× 宽 (CM)× 高 (CM)÷6000</b></div>
        <hr>
        <P><b>2.计费重量小数点进位处理</b></P>
        <div>100KG 以下 , 续重以 0.5KG 为计重单位，不足 0.5kg ，按 0.5kg 计； 100KG 及以上，以 1KG 为计重单位，小数点后尾数大于零的，向上进位至下一个 1KG </div>
        <hr>
        <p><b>3.费用计算结果处理方式</b></p>
        <div>-费用计算结果按四舍五入取整数值</div>
        <div>-以上预估费用仅供参考,实际费用由上门工作人员确认</div>
        <div>-以上计费规则可能因服务(产品)或所在地区不同而有所差异,详情请与上门工作人员确认</div>
      </div>
    </div>

    <div class="bottom container-fluid">
        <p>© Copyright © 2020.Company name All rights reserved.</p>
    </div>
</body>

<script src="/recovery/ajax.js"></script>
<script type="text/javascript">
    function submitAdd(){
        if(! $("#name").val()){
            alert("请输入姓名!");
            return false;
        }
        if(! $("#address").val()){
            alert("请输入地址!");
            return false;
        }
        if(!$("#appointmentTime")){
            alert("请选择预约时间")
            return false;
        }
        SyncPost("${request.contextPath}/gc/garbage/save", $("#inputForm").serialize(),function (data) {
            //console.log(data);
            alert("提交成功!");
        },function (data) {
            alert("提交失败!");
        });

    }



</script>



</html>
