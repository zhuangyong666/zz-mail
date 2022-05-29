<!DOCTYPE html>
<html lang="zh-CN">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
  <title>垃圾回收页面</title>

  <#include "./common/header.ftl"/>





  <style>

    .container-fluid {
      background-color: #2a5caa;

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

  <!-- <div class="jumbotron">
    <div class="container">
      <h1>Hello, world!</h1>
      <p>Contents ...</p>
      <p>
        <a class="btn btn-primary btn-lg">Learn more</a>
      </p>
    </div>
  </div> -->

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


  <!-- 轮播图 -->
  <div class="container" style="margin-top: 20px;">
    <div id="carousel-id" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carousel-id" data-slide-to="0" class=""></li>
        <li data-target="#carousel-id" data-slide-to="1" class=""></li>
        <li data-target="#carousel-id" data-slide-to="2" class="active"></li>
      </ol>
      <div class="carousel-inner">
        <div class="item">
          <img data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide" alt="First slide"
            src="/recovery/images/lunbo3.jpg">
          <div class="container">
            <div class="carousel-caption">
              <h4>保护赖以生存的海陆环境需要我们人类的节制和努力</h4>
            </div>
          </div>
        </div>
        <div class="item">
          <img data-src="holder.js/900x500/auto/#666:#6a6a6a/text:Second slide" alt="Second slide"
            src="/recovery/images/lunbo1.jpg">
          <div class="container">
            <div class="carousel-caption">
              <h4>洁净的空气、幽雅的环境是我们共享的，每个人都应对环境保护尽一份义务</h4>
            </div>
          </div>
        </div>
        <div class="item active">
          <img data-src="holder.js/900x500/auto/#555:#5a5a5a/text:Third slide" alt="Third slide"
            src="/recovery/images/lunbo2.jpg">
          <div class="container">
            <div class="carousel-caption">
              <h4>人类只有一个可生息的村庄——地球，保护环境是每个地球村民的责任</h4>
            </div>
          </div>
        </div>
      </div>
      <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span
          class="glyphicon glyphicon-chevron-left"></span></a>
      <a class="right carousel-control" href="#carousel-id" data-slide="next"><span
          class="glyphicon glyphicon-chevron-right"></span></a>
    </div>
  </div>



  <!-- 第三行的4个功能页面 -->
  <div class="container" style="margin-top: 30px;">
    <div class="row">
      <div class="col-xs-6 col-md-3">
        <div class="thumbnail">
          <img src="/recovery/images/旧书回收缩略图.png" alt="...">
          <div class="caption">
            <h3 style="text-align: center;">旧书本回收</h3>
            <p>...</p>
            <p style="text-align: center;"><a href="/index/usedbook" class="btn btn-primary " role="button" >点击进入</a> </p>
          </div>
        </div>
      </div>
      <div class="col-xs-6 col-md-3">
        <div class="thumbnail">
          <img src="/recovery/images/旧衣回收缩略图.png" alt="...">
          <div class="caption">
            <h3 style="text-align: center;">旧衣物回收</h3>
            <p>...</p>
            <p style="text-align: center;"><a href="/index/usedclothes" class="btn btn-primary" role="button">点击进入</a> </p>
          </div>
        </div>
      </div>
      <div class="col-xs-6 col-md-3">
        <div class="thumbnail">
          <img src="/recovery/images/家电回收缩略图.png" alt="...">
          <div class="caption">
            <h3 style="text-align: center;">家电回收</h3>
            <p>...</p>
            <p style="text-align: center;"><a href="/index/homeelectric" class="btn btn-primary" role="button">点击进入</a></p>
          </div>
        </div>
      </div>
      <div class="col-xs-6 col-md-3">
        <div class="thumbnail">
          <img src="/recovery/images/3.jpg" alt="...">
          <div class="caption">
            <h3 style="text-align: center;">大型垃圾回收</h3>
            <p>...</p>
            <p style="text-align: center;"><a href="/index/biggarbage" class="btn btn-primary" role="button">点击进入</a></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- <div class="row sggnk">
    <div class="col-xs-6 col-md-3">
      <a href="#" class="thumbnail">
        <img src="../images/3.jpg" alt="...">
      </a>
    </div>
    <div class="col-xs-6 col-md-3">
      <a href="#" class="thumbnail">
        <img src="../images/3.jpg" alt="...">
      </a>
    </div>
    <div class="col-xs-6 col-md-3">
      <a href="#" class="thumbnail">
        <img src="../images/3.jpg" alt="...">
      </a>
    </div>
    <div class="col-xs-6 col-md-3">
      <a href="#" class="thumbnail">
        <img src="../images/3.jpg" alt="...">
      </a>
    </div>
  </div> -->

  <div class="container">
    <div class="col-xs-9 col-md-9">
      <p style="text-align: center;">这是一段简介,介绍可以通过上传图片来实现垃圾识别并且分类</p>
      <p style="text-align: center;">最多上传4张</p>
      <button type="submit" onclick="cleanImg()" class="btn btn-primary" style="margin-bottom: 5px">清除说明</button>
      <div class="container">
        <div class="row" style="height: 500px">
          <input id="file-0"  type="file" multiple data-min-file-count="1" data-max-file-count="4" name="file">
        </div>
      </div>

    </div>

  </div>


  <div class="container">
    <div class="col-xs-9 col-md-9">
      <div class="container">
      <div id="lajinr">
      </div>
    </div>
  </div>


  </div>




  <div class="bottom container-fluid" style="margin-top: 30px">
    <p>© Copyright © 2020.Company name All rights reserved.</p>
  </div>


  </div>


<!--  <div class="container">-->
<!--    <div class="col-xs-9 col-md-9">-->
<!--      <p style="text-align: center;">这是一段简介,介绍可以通过上传图片来实现垃圾识别并且分类</p>-->
<!--    </div>-->
<!--    <div class="col-xs-3 col-md-3 ">-->

<!--&lt;!&ndash;      <input id="uploadImg" type="file" data-show-preview="false" data-show-upload="false"&ndash;&gt;-->
<!--&lt;!&ndash;        data-allowed-extensions='["jpg","png","jpeg"]' class="file" multiple data-min-file-count="1">&ndash;&gt;-->

<!--      <div class="container">-->
<!--        <div class="row" style="height: 500px">-->
<!--          <input id="file-0" class="file" type="file" multiple data-min-file-count="1" name="file">-->
<!--        </div>-->
<!--      </div>-->


<!--&lt;!&ndash;      <button type="submit" onclick="submitImg()" class="btn btn-primary">上传</button>&ndash;&gt;-->


<!--    </div>-->
<!--  </div>-->


</body>

</body>
<script src="https://cdn.bootcss.com/bootstrap-fileinput/4.3.5/js/locales/zh.min.js"></script>

<script type="text/javascript">

  function initFileInput(ctrlName, uploadUrl) {
    var control = $('#' + ctrlName);
    control.fileinput({
      language: 'zh', //设置语言
      uploadUrl: uploadUrl, //上传的地址
      allowedFileExtensions : ['jpg', 'png','gif'],//接收的文件后缀
      showUpload: true, //是否显示上传按钮
      showCaption: false,//是否显示标题
      browseClass: "btn btn-primary", //按钮样式
      previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
    });
  }
  //初始化fileinput控件（第一次初始化）
  initFileInput("file-0", "/index/imglajifenlei");

  $("#file-0").on('fileuploaded', function(event, data, previewId, index) {
    console.log(data.response);
    var nr = [];
    nr = data.response.newslist;
    var h = "";
    for (let i = 0; i < nr.length; i++) {
      var d = nr[i];
      h = h + ' <div style="margin-top: 5px"><h3>'+ d.name +'</h3><p>'+ d.lajitip +'</p></div>';
    }
    $("#lajinr").append(h);
    //alert(data);
  });

  // $("#file-0").on('filebatchuploadsuccess', function(event, data, previewId, index) {
  //   console.log(data);
  //   alert(data);
  // });
  //
  // $("#file-0").on('fileerror', function(event, data, msg) {
  //   console.log(data);
  //   alert(data);
  // });

function cleanImg(){
  $("#lajinr").empty();
}
</script>

</html>
