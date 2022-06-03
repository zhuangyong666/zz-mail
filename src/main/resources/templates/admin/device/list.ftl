<!DOCTYPE html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"/>
    <title>设备列表-${title!""}</title>
    <#include "../common/header.ftl"/>
    <style>
        td {
            vertical-align: middle;
        }
    </style>
</head>

<body>
<div class="lyear-layout-web">
    <div class="lyear-layout-container">
        <!--左侧导航-->
        <aside class="lyear-layout-sidebar">

            <!-- logo -->
            <div id="logo" class="sidebar-header">
                <a href="index.html"><img src="/admin/images/logo-sidebar.png" title="${siteName!""}"
                                          alt="${siteName!""}"/></a>
            </div>
            <div class="lyear-layout-sidebar-scroll">
                <#include "../common/left-menu.ftl"/>
            </div>

        </aside>
        <!--End 左侧导航-->

        <#include "../common/header-menu.ftl"/>

        <!--页面主要内容-->
        <main class="lyear-layout-content">

            <div class="container-fluid">

                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">

                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                        <tr>
                                            <th>
                                                <label class="lyear-checkbox checkbox-primary">
                                                    <input type="checkbox" id="check-all"><span>编号</span>
                                                </label>
                                            </th>
                                            <th>mac地址</th>
                                            <th>温度</th>
                                            <th>状态</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody id="content">
                                        <#list content as device>
                                            <tr>
                                                <td style="vertical-align:middle;">
                                                    <label class="lyear-checkbox checkbox-primary">
                                                        <input type="checkbox" name="ids[]"
                                                               value="${device.id}"><span>${device.id}</span>
                                                    </label>
                                                </td>
                                                <td style="vertical-align:middle;">${device.mac}</td>
                                                <td style="vertical-align:middle;">${device.temperature!""}</td>
                                                <td style="vertical-align:middle;">
                                                    <#if device.state == "1">
                                                        <font class="text-success">在线</font>
                                                    <#else>
                                                        <font class="text-warning">离线</font>
                                                    </#if>
                                                </td>
                                                <td style="vertical-align:middle;"><a
                                                            href="/admin/device/history?id=${device.id}"
                                                            target="_blank">历史数据</a></td>
                                            </tr>
                                        </#list>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </main>
        <!--End 页面主要内容-->
    </div>
</div>
<#include "../common/footer.ftl"/>
<script type="text/javascript" src="/admin/js/perfect-scrollbar.min.js"></script>
<script type="text/javascript" src="/admin/js/main.min.js"></script>
<script type="text/javascript">
    $(document).ready(function () {

    });

    var socket;
    if (typeof (WebSocket) == "undefined") {
        console.log("您的浏览器不支持WebSocket");
    } else {
        //实现化WebSocket对象，指定要连接的服务器地址与端口建立连接
        socket = new WebSocket("ws://localhost/websocket/1");
        //打开事件
        socket.onopen = function (O) {
            console.log("Socket 已打开");

        };
        //获得消息事件
        socket.onmessage = function (msg) {
            var data = eval("(" + msg.data + ")");
            var result = "";
            for (var i = 0; i < data.length; i++) {
                var device = data[i];
                var html = "<tr>\n" +
                    "                                                <td style=\"vertical-align:middle;\">\n" +
                    "                                                    <label class=\"lyear-checkbox checkbox-primary\">\n" +
                    "                                                        <input type=\"checkbox\" name=\"ids[]\"\n" +
                    "                                                               value=\"" + device.id + "\"><span>" + device.id + "</span>\n" +
                    "                                                    </label>\n" +
                    "                                                </td>\n" +
                    "                                                <td style=\"vertical-align:middle;\">" + device.mac + "</td>\n" +
                    "                                                <td style=\"vertical-align:middle;\">" + device.temperature + "</td>\n" +
                    "                                                <td style=\"vertical-align:middle;\">\n";

                if (device.state == "1") {
                    html = html + "                                                        <font class=\"text-success\">在线</font>\n"
                } else {
                    html = html + "                                                        <font class=\"text-warning\">离线</font>\n"
                }

                html = html + "                                                </td>\n" +
                    "                                                <td style=\"vertical-align:middle;\"><a\n" +
                    "                                                            href=\"/admin/device/history?id="+device.id+"\"" +
                    "                                                            target=\"_blank\">历史数据</a></td>\n" +
                    "                                            </tr>";
                result = result + html;
            }
            document.getElementById("content").innerHTML = result;
        };
        //关闭事件
        socket.onclose = function () {
            console.log("Socket已关闭");
        };
        //发生了错误事件
        socket.onerror = function () {
            alert("Socket发生了错误");
        }
    }
</script>
</body>
</html>