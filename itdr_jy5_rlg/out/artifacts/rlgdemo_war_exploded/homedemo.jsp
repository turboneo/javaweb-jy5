<%--
  Created by IntelliJ IDEA.
  User: TurboNeo
  Date: 2019/8/8
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.idtr.pojo.Users" %>
<html>
<head>
    <title>睿乐购后台管理系统</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/home.css">
</head>
<body onload="startClock()" onunload="stopClock()">
<div id="all">
    <div id="left">
        <%--睿乐购logo的盒子--%>
        <div id="logo">
            <h1>睿乐购
                <span>v1.0</span>
            </h1>
            <div id="img"><img src="${pageContext.request.contextPath }/imgs/lb.png" alt=""
                               style="width: 20px;height: 20px;"></div>
        </div>
        <div id="left_1">
            <div class="dark">
                <div style="position: absolute;margin-top: 9px;padding-left:10px"><img
                        src="${pageContext.request.contextPath }/imgs/search.png" alt="" style="width: 18px
;height: 18px"></div>
                <span>
                <input type="text" name="search" placeholder="&nbsp搜索菜单">
            </span>
            </div>
            <div class="user">
                <span class="sp">用户管理</span>
                <ul class="left-menu">
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/yhlb1.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <a
                                style="text-decoration: none;color: #FFFFFF" id="yhlb">用户列表</a>
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/yhcx1.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <span id="yhcx">用户查询</span>
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/yhsz1.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <span id="yhsz">用户设置</span>
                    </li>
                </ul>
            </div>
            <div class="user">

                <span class="sp">商品管理</span>
                <ul class="left-menu">
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/splb.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <span id="splb">商品列表</span>
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/spcx.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <span id="spcx" class="sp">商品查询</span>
                        <ul class="left-menu">
                            <li><span id="idcx">Id查询</span></li>
                            <li><span id="namecx">name查询</span></li>
                        </ul>
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/spsz.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <span id="spsz">商品设置</span>
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/spsz.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <span id="spzj">商品增加</span>
                    </li>
                </ul>
            </div>
            <div class="user">
                <span class="sp">订单管理</span>
                <ul class="left-menu">
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/ddlb.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <span id="ddlb">订单列表</span>
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/ddcx.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <span id="ddcx">订单查询</span>
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/ddsz.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        订单设置
                    </li>
                </ul>
            </div>
            <div class="user">
                <span class="sp">设置界面</span>
                <ul class="left-menu">
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/sz.png" alt=""
                             style="width: 18px;height: 18px;margin-right: 10px">
                        密码设置
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/sz.png" alt=""
                             style="width: 18px;height: 18px;margin-right: 10px">
                        页面设置
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/sz.png" alt=""
                             style="width: 18px;height: 18px;margin-right: 10px">
                        关于我们
                    </li>
                </ul>
            </div>
            <div class="user">
                <span class="sp">报表管理</span>
                <ul class="left-menu">
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/sz.png" alt=""
                             style="width: 18px;height: 18px;margin-right: 10px">
                        查看报表
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/sz.png" alt=""
                             style="width: 18px;height: 18px;margin-right: 10px">
                        修改报表
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/sz.png" alt=""
                             style="width: 18px;height: 18px;margin-right: 10px">
                        报表上报
                    </li>
                </ul>
            </div>
            <div class="user">
                <span class="sp">后台中心</span>
                <ul class="left-menu">
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/sz.png" alt=""
                             style="width: 18px;height: 18px;margin-right: 10px">
                        修改密码
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/sz.png" alt=""
                             style="width: 18px;height: 18px;margin-right: 10px">
                        插件控制
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/sz.png" alt=""
                             style="width: 18px;height: 18px;margin-right: 10px">
                        问题提交
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div style="width: 80%" id="right">
        <div id="right-top">
            <div id="img2">
                <img src="${pageContext.request.contextPath }/imgs/tongzhi.png" alt=""
                     style="width: 20px;height: 20px;margin-left: 20px">
                <img src="${pageContext.request.contextPath }/imgs/jinggao.png" alt=""
                     style="width: 20px;height: 20px;margin-left: 20px">
                <img src="${pageContext.request.contextPath }/imgs/bangzhu.png" alt=""
                     style="width: 20px;height: 20px;margin-left: 20px">
            </div>
            <div id="day">
                <div class="dh">
                    <img src="${pageContext.request.contextPath }/imgs/rl.png" alt=""
                         style="width: 20px;height:20px;margin-left: 5px">
                    <span class="dayspan" id="showday"></span>
                </div>
                <div class="dh">
                    <img src="${pageContext.request.contextPath }/imgs/sj.png" alt=""
                         style="width: 20px;height:20px;margin-left: 5px">
                    <span class="dayspan" id="showtime"></span>
                </div>
                <div class="dh">
                    <img src="${pageContext.request.contextPath }/imgs/tq.png" alt=""
                         style="width: 20px;height: 20px;margin-left: 5px">
                    <span class="dayspan" id="showtq">晴</span>
                </div>

            </div>
            <div id="touxiang">
                <img src="${pageContext.request.contextPath }/imgs/10.jpg" alt="">
            </div>
            <a href="" id="hello">hi,${user.uname}</a>
            <b class="bb"></b>
            <div id="tuichu">
                <img src="${pageContext.request.contextPath }/imgs/tuichu.png" alt="" style="width: 20px;height: 20px">
                <a href="http://localhost:8080/" id="logout"> Log out</a>
            </div>
        </div>
        <div id="right-bottom">
            <div class="rb">
                <div id="sanjiao">
                </div>
                <div id="search_right">
                    <ul id="breadcrumb">
                        <li>
                            <img src="${pageContext.request.contextPath }/imgs/home1.png" alt=""
                                 style="width: 20px;height: 20px;margin-right: 10px">
                            <a href="homedemo.jsp" title="Sample page 1" id="aa"
                               style="text-decoration: none;color: #9EA7B3; padding-right: 0;">Home</a>
                        </li>
                        <li class="pull-right">
                            <div id="search_right1">
                                <input style="border-radius:15px" type="text" placeholder="Search..."
                                       class="form-control" id="pd-inp">
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div id="ee">
                <div class="rb3">
                    <h3><span class="rb3span" id="s1">今日销量</span></h3>
                    <span id="s11">999</span>
                </div>
                <div class="rb3">
                    <h3><span class="rb3span" id="s2">今日营业额</span></h3>
                    <span id="s22">666</span>
                </div>
                <div class="rb3">
                    <h3><span class="rb3span" id="s3">月销量</span></h3>
                    <span id="s33">888</span>
                </div>
                <div class="rb3">
                    <h3><span class="rb3span" id="s4">月营业额</span></h3>
                    <span id="s44">777</span>
                </div>
            </div>
            <div class="rb" id="rbrb">
                <table id="tab"></table>
                <div id="inp-nr"></div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
<%--//左侧菜单栏隐藏和显示--%>
<script>
    $(".sp").click(
        function () {
            $(this).next().slideToggle();
        }
    )
</script>
<script>
    <%--//用户列表--%>
    $("#yhlb").click(function () {
        // 发请求拿数据
        $.post(
            "/manage/user/list.do",
            function (dt) {
                if (dt.status != 0) {
                    alert(dt.mag)
                } else {
                    $("#tab").empty()
                    var tou = " <tr><th>用户序号</th><th>用户名称</th> <th>用户电话</th> <th>用户类型</th><th>用户状态</th></tr>"
                    $("#tab").append(tou);
                    for (var i = 0; i < dt.data.length; i++) {
                        var s = "<tr>" +
                            "<td>" + dt.data[i].id + "</td>" +
                            "<td>" + dt.data[i].uname + "</td>" +
                            "<td>" + dt.data[i].tel + "</td>" +
                            "<td>" + dt.data[i].type + "</td>" +
                            "<td>" + dt.data[i].stats + "</td>" +
                            "</tr>"
                        $("#tab").append(s);
                    }
                }
            },
            "json"
        )
    })
    <%--//商品列表--%>
    $("#splb").click(function () {
        // 发请求拿数据
        $.post(
            "/manage/product/list.do",
            function (dt) {
                if (dt.status != 0) {
                    alert(dt.mag)
                } else {
                    $("#tab").empty()
                    var tou = " <tr><th>商品序号</th><th>商品名称</th> <th>商品题目</th> <th>商品状态</th><th>商品价格</th></tr>"
                    $("#tab").append(tou);
                    for (var i = 0; i < dt.data.length; i++) {
                        var s = "<tr>" +
                            "<td>" + dt.data[i].id + "</td>" +
                            "<td>" + dt.data[i].name + "</td>" +
                            "<td>" + dt.data[i].subtitle + "</td>" +
                            "<td>" + dt.data[i].status + "</td>" +
                            "<td>" + dt.data[i].price + "</td>" +
                            "</tr>"
                        $("#tab").append(s);
                    }
                }
            },
            "json"
        )
    })
    <%--//订单列表--%>
    $("#ddlb").click(function () {
        // 发请求拿数据
        $.post(
            "/manage/order/list.do",
            function (dt) {
                if (dt.status != 0) {
                    alert(dt.mag)
                } else {
                    $("#tab").empty()
                    var tou = " <tr><th>商品序号</th><th>付款</th>" +
                        " <th>付款类型</th> <th>邮费</th>" +
                        "<th>状态</th><th>statusDesc</th>" +
                        "<th>付款时间</th><th>发送时间</th>" +
                        "<th>结束时间</th><th>关闭时间</th><th>创建时间</th></tr>"
                    $("#tab").append(tou);
                    for (var i = 0; i < dt.data.length; i++) {
                        var s = "<tr>" +
                            "<td>" + dt.data[i].orderNo + "</td>" +
                            "<td>" + dt.data[i].payment + "</td>" +
                            "<td>" + dt.data[i].paymentType + "</td>" +
                            "<td>" + dt.data[i].postage + "</td>" +
                            "<td>" + dt.data[i].status + "</td>" +
                            "<td>" + dt.data[i].statusDesc + "</td>" +
                            "<td>" + dt.data[i].paymentTime + "</td>" +
                            "<td>" + dt.data[i].sendTime + "</td>" +
                            "<td>" + dt.data[i].endTime + "</td>" +
                            "<td>" + dt.data[i].closeTime + "</td>" +
                            "<td>" + dt.data[i].createTime + "</td>" +
                            "</tr>"
                        $("#tab").append(s);
                    }
                }
            },
            "json"
        )
    })
    <%--//用户根据name模糊查询--%>
    $("#yhcx").click(function () {
        $("#pd-inp").keyup(function () {
            if (event.keyCode == 13) {
                var keyword = $("#pd-inp").val();
                $.post(
                    "/manage/user/find.do",
                    {key: keyword},
                    function (dt) {
                        if (dt.status != 0) {
                            alert(dt.mag)
                        } else {
                            $("#tab").empty()
                            $("#inp-nr").empty()
                            var tou = " <tr><th>用户序号</th><th>用户名称</th> <th>用户电话</th> <th>用户类型</th><th>用户状态</th></tr>"
                            $("#tab").append(tou);
                            for (var i = 0; i < dt.data.length; i++) {
                                var s = "<tr>" +
                                    "<td>" + dt.data[i].id + "</td>" +
                                    "<td>" + dt.data[i].uname + "</td>" +
                                    "<td>" + dt.data[i].tel + "</td>" +
                                    "<td>" + dt.data[i].type + "</td>" +
                                    "<td>" + dt.data[i].stats + "</td>" +
                                    "</tr>"
                                $("#tab").append(s);
                            }
                        }
                    }
                )
            }

        })
    })
    <%--//商品根据name模糊查询--%>
    $("#namecx").click(function () {
        $("#pd-inp").keyup(function () {
            if (event.keyCode === 13) {
                var keyword = $("#pd-inp").val();
                $.post(
                    "/manage/product/find.do",
                    {key: keyword},
                    function (dt) {
                        if (dt.status != 0) {
                            alert(dt.mag)
                        } else {
                            $("#tab").empty()
                            $("#inp-nr").empty()
                            var tou = " <tr><th>商品序号</th><th>商品名称</th> <th>商品题目</th> <th>商品状态</th><th>商品价格</th></tr>"
                            $("#tab").append(tou);
                            for (var i = 0; i < dt.data.length; i++) {
                                var s = "<tr>" +
                                    "<td>" + dt.data[i].id + "</td>" +
                                    "<td>" + dt.data[i].name + "</td>" +
                                    "<td>" + dt.data[i].subtitle + "</td>" +
                                    "<td>" + dt.data[i].status + "</td>" +
                                    "<td>" + dt.data[i].price + "</td>" +
                                    "</tr>"
                                $("#tab").append(s);
                            }
                        }
                    }
                )
            }

        })
    })
    <%--//商品根据id查询--%>
    $("#idcx").click(function () {
        $("#pd-inp").keyup(function () {
            if (event.keyCode === 13) {
                var keyword = $("#pd-inp").val();
                $.post(
                    "/manage/product/search.do",
                    {productId: keyword},
                    function (dt) {
                        if (dt.status != 0) {
                            alert(dt.mag)
                        } else {
                            $("#tab").empty()
                            $("#inp-nr").empty()
                            var tou = " <tr><th>商品序号</th><th>商品名称</th> <th>商品题目</th> <th>商品状态</th><th>商品价格</th><th>货物ID</th></tr>"
                            $("#tab").append(tou);
                            var s = "<tr>" +
                                "<td>" + dt.data.id + "</td>" +
                                "<td>" + dt.data.name + "</td>" +
                                "<td>" + dt.data.subtitle + "</td>" +
                                "<td>" + dt.data.status + "</td>" +
                                "<td>" + dt.data.price + "</td>" +
                                "<td>" + dt.data.categoryId + "</td>" +
                                "</tr>"
                            $("#tab").append(s);
                        }
                    }
                )
            }

        })
    })
    <%--//订单根据id查询--%>
    $("#ddcx").click(function () {
        $("#pd-inp").keyup(function () {
            if (event.keyCode === 13) {
                var keyword = $("#pd-inp").val();
                $.post(
                    "/manage/order/search.do",
                    {orderNo: keyword},
                    function (dt) {
                        alert("wewewe")
                        if (dt.status != 0) {
                            alert(dt.mag)
                        } else {
                            $("#tab").empty()
                            $("#inp-nr").empty()
                            var tou = " <tr><th>商品序号</th><th>付款</th>" +
                                " <th>付款类型</th> <th>邮费</th>" +
                                "<th>状态</th><th>statusDesc</th>" +
                                "<th>付款时间</th><th>发送时间</th>" +
                                "<th>结束时间</th><th>关闭时间</th><th>创建时间</th></tr>"
                            $("#tab").append(tou);
                            for (var i = 0; i < dt.data.length; i++) {
                                var s = "<tr>" +
                                    "<td>" + dt.data[i].orderNo + "</td>" +
                                    "<td>" + dt.data[i].payment + "</td>" +
                                    "<td>" + dt.data[i].paymentType + "</td>" +
                                    "<td>" + dt.data[i].postage + "</td>" +
                                    "<td>" + dt.data[i].status + "</td>" +
                                    "<td>" + dt.data[i].statusDesc + "</td>" +
                                    "<td>" + dt.data[i].paymentTime + "</td>" +
                                    "<td>" + dt.data[i].sendTime + "</td>" +
                                    "<td>" + dt.data[i].endTime + "</td>" +
                                    "<td>" + dt.data[i].closeTime + "</td>" +
                                    "<td>" + dt.data[i].createTime + "</td>" +
                                    "</tr>"
                                $("#tab").append(s);
                            }
                        }
                    }
                )
            }

        })
    })
    <%--//禁用用户--%>
    $("#yhsz").click(function () {
        // 发请求拿数据
        $.post(
            "/manage/user/list.do",
            function (dt) {
                if (dt.status != 0) {
                    alert(dt.mag)
                } else {
                    $("#tab").empty()
                    var tou = " <tr><th>用户序号</th><th>用户名称</th> <th>用户电话</th> <th>用户类型</th><th>用户状态</th><th>禁用操作</th></tr>"
                    $("#tab").append(tou);
                    for (var i = 0; i < dt.data.length; i++) {
                        var s = "<tr>" +
                            "<td>" + dt.data[i].id + "</td>" +
                            "<td>" + dt.data[i].uname + "</td>" +
                            "<td>" + dt.data[i].tel + "</td>" +
                            "<td>" + dt.data[i].type + "</td>" +
                            "<td>" + dt.data[i].stats + "</td>" +
                            "<td>\n" +
                            "<button type=\"button\" id=\"kq\" value=" + dt.data[i].id + " onclick=\"kaiqi(this)\" onclick=\"kkq\">开启</button>" +
                            "<button type=\"button\" id=\"jy\" value=" + dt.data[i].id + " onclick=\"jinyong(this)\" >禁用</button>" +
                            "</td>" +
                            "</tr>"
                        $("#tab").append(s);
                    }
                }
            },
            "json"
        )
    });
    <%--//根据商品ID进行商品上下架--%>
    $("#spsz").click(function () {
        // 发请求拿数据
        $.post(
            "/manage/product/list.do",
            function (dt) {
                if (dt.status != 0) {
                    alert(dt.mag)
                } else {
                    $("#tab").empty()
                    var tou = " <tr><th>商品序号</th><th>商品名称</th> <th>商品题目</th> <th>商品状态</th><th>商品价格</th><th>货物ID</th></tr>"
                    $("#tab").append(tou);
                    for (var i = 0; i < dt.data.length; i++) {
                        var s = "<tr>" +
                            "<td>" + dt.data[i].id + "</td>" +
                            "<td>" + dt.data[i].name + "</td>" +
                            "<td>" + dt.data[i].subtitle + "</td>" +
                            "<td>" + dt.data[i].status + "</td>" +
                            "<td>" + dt.data[i].price + "</td>" +
                            "<td>" + dt.data[i].categoryId + "</td>" +
                            "<td>\n" +
                            "<button type=\"button\" id=\"sj\" value=" + dt.data[i].categoryId + " onclick=\"shangjia(this)\">上架</button>" +
                            "<button type=\"button\" id=\"xj\" value=" + dt.data[i].categoryId + " onclick=\"xiajia(this)\" >下架</button>" +
                            "</td>" +
                            "</tr>"
                        $("#tab").append(s);
                    }
                }
            },
            "json"
        )
    })
    <%--//用户禁用模块的开启按钮  禁用按钮--%>
    //开启按钮，
    function kaiqi(kqq) {
        $.post(
            "/manage/user/ableuser.do?uid=" + kqq.value,
            function (kqqs) {
                if (kqqs.status == 100) {
                    alert(kqqs.mag)
                    $.post(
                        "/manage/user/list.do",
                        function (dtt) {
                            $("#tab").empty()
                            var tou = " <tr><th>用户序号</th><th>用户名称</th> <th>用户电话</th> <th>用户类型</th><th>用户状态</th><th>禁用操作</th></tr>"
                            $("#tab").append(tou);
                            for (var i = 0; i < dtt.data.length; i++) {
                                var s = "<tr>" +
                                    "<td>" + dtt.data[i].id + "</td>" +
                                    "<td>" + dtt.data[i].uname + "</td>" +
                                    "<td>" + dtt.data[i].tel + "</td>" +
                                    "<td>" + dtt.data[i].type + "</td>" +
                                    "<td>" + dtt.data[i].stats + "</td>" +
                                    "<td>\n" +
                                    "<button type=\"button\" id=\"kq\" value=" + dtt.data[i].id + " onclick=\"kaiqi(this)\" onclick=\"kkq\">开启</button>" +
                                    "<button type=\"button\" id=\"jy\" value=" + dtt.data[i].id + " onclick=\"jinyong(this)\" >禁用</button>" +
                                    "</td>" +
                                    "</tr>"
                                $("#tab").append(s);
                            }
                        }, "json"
                    )
                } else if (kqqs.status == 122) {
                    alert(kqqs.mag)
                } else if (kqqs.status == 123) {
                    alert(kqqs.mag)
                }
            },
            "json"
        )
    }

    //禁用按钮
    function jinyong(kqq) {
        $.post(
            "/manage/user/disableuser.do?uid=" + kqq.value,
            function (kqqs) {
                if (kqqs.status == 100) {
                    alert(kqqs.mag)
                    $.post(
                        "/manage/user/list.do",
                        function (dtt) {
                            $("#tab").empty()
                            var tou = " <tr><th>用户序号</th><th>用户名称</th> <th>用户电话</th> <th>用户类型</th><th>用户状态</th><th>禁用操作</th></tr>"
                            $("#tab").append(tou);
                            for (var i = 0; i < dtt.data.length; i++) {
                                var s = "<tr>" +
                                    "<td>" + dtt.data[i].id + "</td>" +
                                    "<td>" + dtt.data[i].uname + "</td>" +
                                    "<td>" + dtt.data[i].tel + "</td>" +
                                    "<td>" + dtt.data[i].type + "</td>" +
                                    "<td>" + dtt.data[i].stats + "</td>" +
                                    "<td>\n" +
                                    "<button type=\"button\" id=\"kq\" value=" + dtt.data[i].id + " onclick=\"kaiqi(this)\" onclick=\"kkq\">开启</button>" +
                                    "<button type=\"button\" id=\"jy\" value=" + dtt.data[i].id + " onclick=\"jinyong(this)\" >禁用</button>" +
                                    "</td>" +
                                    "</tr>"
                                $("#tab").append(s);
                            }
                        }, "json"
                    )
                } else if (kqqs.status == 120) {
                    alert(kqqs.mag)
                } else if (kqqs.status == 121) {
                    alert(kqqs.mag)
                }
            },
            "json"
        )
    }

    <%--//商品上下架的开启按钮  禁用按钮--%>
    //上架按钮，
    function shangjia(sj) {
        $.post(
            "/manage/product/set_sale_status.do?status=0&productId=" + sj.value,
            function (sjs) {
                if (sjs.status == 200) {
                    alert(sjs.mag)
                    $.post(
                        "/manage/product/list.do",
                        function (dt) {
                            $("#tab").empty()
                            var tou = " <tr><th>商品序号</th><th>商品名称</th> <th>商品题目</th> <th>商品状态</th><th>商品价格</th><th>货物ID</th></tr>"
                            $("#tab").append(tou);
                            for (var i = 0; i < dt.data.length; i++) {
                                var s = "<tr>" +
                                    "<td>" + dt.data[i].id + "</td>" +
                                    "<td>" + dt.data[i].name + "</td>" +
                                    "<td>" + dt.data[i].subtitle + "</td>" +
                                    "<td>" + dt.data[i].status + "</td>" +
                                    "<td>" + dt.data[i].price + "</td>" +
                                    "<td>" + dt.data[i].categoryId + "</td>" +
                                    "<td>\n" +
                                    "<button type=\"button\" id=\"sj\" value=" + dt.data[i].categoryId + " onclick=\"shangjia(this)\">上架</button>" +
                                    "<button type=\"button\" id=\"xj\" value=" + dt.data[i].categoryId + " onclick=\"xiajia(this)\" >下架</button>" +
                                    "</td>" +
                                    "</tr>"
                                $("#tab").append(s);
                            }
                        },
                        "json"
                    )
                } else if (sjs.status == 221) {
                    alert(sjs.mag)
                } else if (sjs.status == 222) {
                    alert(sjs.mag)
                }
            },
            "json"
        )
    }

    //下架按钮
    function xiajia(xj) {
        $.post(
            "/manage/product/set_sale_status.do?status=1&productId=" + xj.value,
            function (xjs) {
                if (xjs.status == 201) {
                    alert(xjs.mag)
                    $.post(
                        "/manage/product/list.do",
                        function (dttt) {
                            $("#tab").empty()
                            var touu = " <tr><th>商品序号</th><th>商品名称</th> <th>商品题目</th> <th>商品状态</th><th>商品价格</th><th>货物ID</th></tr>"
                            $("#tab").append(touu);
                            for (var aa = 0; aa < dttt.data.length; aa++) {
                                var ss = "<tr>" +
                                    "<td>" + dttt.data[aa].id + "</td>" +
                                    "<td>" + dttt.data[aa].name + "</td>" +
                                    "<td>" + dttt.data[aa].subtitle + "</td>" +
                                    "<td>" + dttt.data[aa].status + "</td>" +
                                    "<td>" + dttt.data[aa].price + "</td>" +
                                    "<td>" + dttt.data[aa].categoryId + "</td>" +
                                    "<td>\n" +
                                    "<button type=\"button\" id=\"sj\" value=" + dttt.data[aa].categoryId + " onclick=\"shangjia(this)\">上架</button>" +
                                    "<button type=\"button\" id=\"xj\" value=" + dttt.data[aa].categoryId + " onclick=\"xiajia(this)\" >下架</button>" +
                                    "</td>" +
                                    "</tr>"
                                $("#tab").append(ss);
                            }
                        },
                        "json"
                    )
                } else if (xjs.status == 222) {
                    alert(xjs.mag)
                } else if (xjs.status == 220) {
                    alert(xjs.mag)
                }
            },
            "json"
        )
    }
</script>
<%--//增加商品--%>
<script>
    //当点击“商品增加”时，出现这些输入框
    $("#spzj").click(
        function () {
            $("#rbrb").empty()
            var a = "<input type=\"text\" placeholder=\"请输入货物ID\" id=\"pid\">"
            var b = "<input type=\"text\" placeholder=\"请输入货物name\" id=\"pname\">"
            var c = "<input type=\"text\" placeholder=\"请输入货物sustitle\" id=\"psus\">"
            var d = "<input type=\"text\" placeholder=\"请输入货物status\" id=\"psta\">"
            var e = "<input type=\"text\" placeholder=\"请输入货物price\" id=\"ppri\">"
            var f = "<input type=\"submit\" value=\"添加\" id=\"tj\">"
            $("#rbrb").append(a)
            $("#rbrb").append(b)
            $("#rbrb").append(c)
            $("#rbrb").append(d)
            $("#rbrb").append(e)
            $("#rbrb").append(f)
        }
    )
    //当点击添加时，发送请求
    $("#tj").click(
        function () {
            var pid = $("#pid").val()
            var pname = $("#pname").val()
            var psus = $("#psus").val()
            var psta = $("#psta").val()
            var ppri = $("#ppri").val()

            $.post(
                "manage/product/save.do?",
                {},
                {},
                function (dy) {
                    if (dy.status!=0) {
                        alert(dt.mag)
                    }else{
                        alert(dt.mag)
                    }
                }
                ,"json"
            )

        }
    )
</script>
<script>
    $("#spzj").click(function () {
        // 发请求拿数据
        $.post(
            "/manage/product/save.do?categoryId=?&name=?&subtitle=?&price=?&status=?",
            function (dt) {
                if (dt.mag = 1) {
                    alert(dt.mag)
                } else {
                    $("#tab").empty()
                    var tou = " <tr><th>商品序号</th><th>商品名称</th> <th>商品题目</th> <th>商品状态</th><th>商品价格</th></tr>"
                    $("#tab").append(tou);
                }
            },
            "json"
        )
    })
</script>
<%--//动态显示时间--%>
<script>
    var timer = null;

    function displayClock(num) {//num是传入的startClock中的值,给他一个样式
        if (num < 10) {
            return "0" + num;
        }
        else {
            return num;
        }
    }

    //停止计时
    // function stopClock() {
    //     clearTimeout(timer);
    // }

    //开始计时
    function startClock() {
        var time = new Date();
        var day1 = "上午"
        var day2 = "下午"
        var hours = displayClock(time.getHours()) + ":";
        var minutes = displayClock(time.getMinutes()) + ":";
        var seconds = displayClock(time.getSeconds());
        //显示时间
        if (hours <= 12) {
            showtime.innerHTML = day1 + hours + minutes + seconds;
        } else {
            showtime.innerHTML = day2 + hours + minutes + seconds;
        }
        //在id为showtime显示
        timer = setTimeout("startClock()", 1000);//计时器
    }
</script>
<%--//显示年月日，星期--%>
<script>
    var myDate = new Date();
    var year = myDate.getFullYear();    //获取完整的年份(2019)
    var month = myDate.getMonth() + 1;       //获取当前月份(0-11,0代表1月)
    var date = myDate.getDate();        //获取当前日(1-31)
    console.log(year + "-" + month + "-" + date)
    var str = "星期" + "日一二三四五六".charAt(new Date().getDay());
    console.log(str)
    $("#showday").text(year + "-" + month + "-" + date + " " + str)
</script>
<%--//显示天气--%>
<script>
</script>
</html>
