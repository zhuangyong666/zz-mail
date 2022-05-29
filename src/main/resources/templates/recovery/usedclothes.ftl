<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>旧衣物回收页面</title>
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
    <img src="/recovery/images/旧衣物回收.jpg" alt="" style="width: 100%;">
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
        <input type="iphone" class="form-control" id="iphone" name="iphone" placeholder="请输入联系方式">
      </div>
<!--      <div class="form-group col-xs-6 col-xs-offset-4">-->
<!--        <label for="">请选择可回收物种类:</label>-->
<!--        <label>-->
<!--          <input type="checkbox" value="" style="zoom: 130%;">-->
<!--          废纸-->
<!--        </label>-->
<!--        <label>-->
<!--          <input type="checkbox" value="" style="zoom: 130%;">-->
<!--          废塑料-->
<!--        </label>-->
<!--        <label>-->
<!--          <input type="checkbox" value="" style="zoom: 130%;">-->
<!--          废金属-->
<!--        </label>-->
<!--      </div>-->

<!--      <div class="form-group col-xs-6 col-xs-offset-3">-->
<!--        <label for="">请选择地区</label>-->
<!--        <select name="">-->
<!--            <option value="">江苏</option>-->
<!--        </select>-->
<!--        <select name="" id="">-->
<!--            <option value="">苏州</option>-->
<!--        </select>-->
<!--        <select name="" id="">-->
<!--            <option value="">吴中区</option>-->
<!--        </select>-->
<!--    </div>-->
      <div class="form-group col-xs-6 col-xs-offset-3">
        <label for="address">详细地址</label>
        <input type="text" class="form-control" id="address" name="address" placeholder="请输入详细地址">
      </div>

      <div class="form-group col-xs-6 col-xs-offset-3">
        <label for="appointmentTime">预约时间</label>
        <input type="date" class="form-control" id="appointmentTime" name="appointmentTime" placeholder="请选择上门时间">
      </div>


<!--      <div class="form-group col-xs-6 col-xs-offset-3">-->
<!--        <label for="exampleInputFile">图片上传</label>-->
<!--        <input type="file" id="exampleInputFile">-->
<!--        <p class="help-block">请上传回收物图片</p>-->
<!--      </div>-->

      <input type="submit" onclick="submitAdd()" class="btn btn-primary" style="margin-top: 20px; margin-left: 48%;">
    </form>
  </div>


  <div class="container container2">
    <div class="headline">
      <h3>回收物处理方式</h3>
      <p>环保为世界,公益为你</p>
    </div>

    <div class="media" style="background-color: #f3f2f2;">
      <div class="media-left media-middle">
        <a href="#">
          <img class="media-object" src="/recovery/images/旧衣回收1.jpg" alt="..." style="width: 400px; height: 300px;">
        </a>
      </div>
      <div class="media-body">
        <p style="margin-top: 140px;">
        <h4 class="media-heading">环保再生:</h4>
        将部分回收衣物再生的再生纤维、聚酯原料、再生棉帆布等重新用于纺织品生产，设计制成环保袋、收纳盒、手套、靠垫等。
        </p>
      </div>
    </div>

    <div class="media" style="background-color: #f3f2f2; width: 100%;">
      <div class="media-body">
        <p style="margin-top: 140px;">
        <h4 class="media-heading">公益捐赠:</h4>
        将符合捐赠标准的衣服（较新、质量较好、较干净，一般为小孩子冬装）交给公益团体或者基金会进行清洗、消毒后捐赠到有需要的贫困山区或者公益组织以及个人。
        </p>
      </div>
      <div class="media-left media-middle">
        <a href="#">
          <img class="media-object" src="/recovery/images/旧衣回收2.jpg" alt="..." style="width: 400px; height: 300px;">
        </a>
      </div>
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
    SyncPost("${request.contextPath}/gc/clothes/save", $("#inputForm").serialize(),function (data) {
      //console.log(data);
      alert("提交成功!");
    },function (data) {
      alert("提交失败!");
    });

  }



</script>



</html>
