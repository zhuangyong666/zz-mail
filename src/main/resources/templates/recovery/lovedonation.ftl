<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>爱心捐献页面</title>
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

        <button type="primary" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true"
          aria-expanded="false">
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
    <img src="/recovery/images/banner3.jpg" alt="" style="width: 100%;">
  </div>
  <div class="container-fluid" style="background-color: #f3f2f2;">
    <div class="headline">
      <h3>赠人玫瑰手有余香</h3>
    </div>

    <form id="inputForm">
      <div class="form-group col-xs-6 col-xs-offset-3">
        <label for="name">姓名</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="请输入姓名">
      </div>
      <div class="form-group col-xs-6 col-xs-offset-3">
        <label for="iphone">电话</label>
        <input type="text" class="form-control" id="iphone" name="iphone" placeholder="请输入联系方式">
      </div>
<!--      <div class="form-group col-xs-6 col-xs-offset-4">-->
<!--        <label for="">请选择捐献的物品:</label>-->
<!--        <label>-->
<!--          <input type="checkbox" value="" style="zoom: 130%;">-->
<!--          衣物-->
<!--        </label>-->
<!--        <label>-->
<!--          <input type="checkbox" value="" style="zoom: 130%;">-->
<!--          书本-->
<!--        </label>-->
<!--        <label>-->
<!--          <input type="checkbox" value="" style="zoom: 130%;">-->
<!--          金额-->
<!--        </label>-->
<!--      </div>-->
      <div class="form-group col-xs-6 col-xs-offset-3">
       <label for="money">金额</label>
       <input type="money" class="form-control" id="money" name="money" placeholder="请输入捐献金额">
      </div>
      <div class="form-group col-xs-6 col-xs-offset-3">
        <label for="address">详细地址</label>
        <input type="text" class="form-control" id="address" name="address" placeholder="请输入详细地址">
      </div>
      <input type="submit" onclick="submitAdd()" class="btn btn-primary" style="margin-top: 20px; margin-left: 48%;">
    </form>


    <!-- 第三行的4个功能页面 -->
    <div class="container" style="margin-top: 30px; margin-right: 50px">
      <div class="row">

        <div class="col-xs-6 col-md-3">
          <div class="thumbnail">
            <img src="/recovery/images/weixin.png" alt="微信支付">
          </div>
        </div>

        <div class="col-xs-6 col-md-3">
          <div class="thumbnail">
            <img src="/recovery/images/zhifubao.jpg" alt="支付宝支付">
          </div>
        </div>

      </div>
    </div>

  </div>
</body>

<script src="/recovery/ajax.js"></script>
<script type="text/javascript" >

  function submitAdd(){

    if(!$("#name").val()){
      alert("请输入姓名!");
      return false;
    }
    if(!$("#address").val()){
      alert("请输入地址!");
      return false;
    }
    if(!$("#money").val()){
      alert("请输入金额!");
      return false;
    }

    SyncPost("${request.contextPath}/gc/love/save", $("#inputForm").serialize(),function (data) {
      //console.log(data);
      alert("保存成功！")
    },function (data) {
      alert("提交失败！")
    });

  }




</script>



</html>
