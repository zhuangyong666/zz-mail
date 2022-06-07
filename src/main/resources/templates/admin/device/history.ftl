<!--
	THIS EXAMPLE WAS DOWNLOADED FROM https://echarts.apache.org/examples/zh/editor.html?c=line-smooth
-->
<!DOCTYPE html>
<html lang="zh-CN" style="height: 100%">
<head>
    <meta charset="utf-8">
</head>
<body style="height: 100%; margin: 0">
<div id="container" style="height: 100%"></div>


<script type="text/javascript" src="/admin/js/echarts.min.js"></script>
<script type="text/javascript" src="/admin/js/jquery.min.js"></script>
<!-- Uncomment this line if you want to dataTool extension
<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.2/dist/extension/dataTool.min.js"></script>
-->
<!-- Uncomment this line if you want to use gl extension
<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts-gl@2/dist/echarts-gl.min.js"></script>
-->
<!-- Uncomment this line if you want to echarts-stat extension
<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts-stat@latest/dist/ecStat.min.js"></script>
-->
<!-- Uncomment this line if you want to use map
<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@4.9.0/map/js/china.js"></script>
<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@4.9.0/map/js/world.js"></script>
-->
<!-- Uncomment these two lines if you want to use bmap extension
<script type="text/javascript" src="https://api.map.baidu.com/api?v=3.0&ak=YOUR_API_KEY"></script>
<script type="text/javascript" src="https://fastly.jsdelivr.net/npm/echarts@5.3.2/dist/extension/bmap.min.js"></script>
-->

<script type="text/javascript">

    function getUrlParam(name) {
        var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)"); //构造一个含有目标参数的正则表达式对象
        var r = window.location.search.substr(1).match(reg); //匹配目标参数
        if (r != null) return unescape(r[2]);
        return null; //返回参数值
    }

    var dom = document.getElementById('container');
    var myChart = echarts.init(dom, null, {
        renderer: 'canvas',
        useDirtyRect: false
    });
    var app = {};

    var option;
    var xAxisData = [];
    var yAxisData = [];
    $.ajax({
        type: "GET",                                               //方式
        url: "/admin/device/historyInfo?id=" + getUrlParam("id"),                                            //地址
        dataType: "JSON",                                           //数据类型  xml（xml文档），html（html代码），script（js代码），json（json数据），jsonp（jsonp格式数据），text（纯文本）
        beforeSend: function (XMLHttpRequest) {                        //发送前函数, 这里可以修改XMLHttpRequest，例如添加HTTP头
        },
        complete: function (XMLHttpRequest, textStatus) {               //请求完成函数    //请求成功或失败均调用此函数
        },
        success: function (data, textStatus) {                           //请求成功，成功返回，    //data有可能是xmlDoc，jsonObj，html，text等等
            for (var i = 0; i < data.length; i++) {
                xAxisData[i] = data[i].createTime;
                yAxisData[i] = data[i].temperature;
            }
            debugger;
        },
        error: function (XMLHttpRequest, textStatus, errorThrown) {      //请求失败函数
        },
        async: false,
        global: true                                                 //是否触发全局ajax事件，默认为true。全局函数开启，任何jquery类能调用后面的ajax全局函数
    });

    option = {
        xAxis: {
            type: 'category',
            data: xAxisData
        },
        yAxis: {
            type: 'value'
        },
        series: [
            {
                data: yAxisData,
                type: 'line',
                smooth: true
            }
        ]
    };


    if (option && typeof option === 'object') {
        myChart.setOption(option);
    }

    window.addEventListener('resize', myChart.resize);

</script>
</body>
</html>