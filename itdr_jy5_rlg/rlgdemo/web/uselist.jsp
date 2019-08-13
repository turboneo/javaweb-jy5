<%--
  Created by IntelliJ IDEA.
  User: TurboNeo
  Date: 2019/8/11
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body><%--
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
<body>
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
                        <a href="uselist.jsp"
                           style="text-decoration: none;color: #FFFFFF">用户列表</a>
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/yhcx1.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        用户查询
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/yhsz1.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        用户设置
                    </li>
                </ul>
            </div>
            <div class="user">

                <span class="sp">商品管理</span>
                <ul class="left-menu">
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/splb.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        <a href="productlist.jsp" id="splb">商品列表</a>
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/spcx.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        商品查询
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/spsz.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        商品设置
                    </li>
                </ul>
            </div>
            <div class="user">
                <span class="sp">订单管理</span>
                <ul class="left-menu">
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/ddlb.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        订单列表
                    </li>
                    <li style="text-align: left;" class="li">
                        <img src="${pageContext.request.contextPath }/imgs/ddcx.png" alt=""
                             style="width: 20px;height: 20px;margin-right: 10px">
                        订单查询
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
                <span class="dayspan">Fri,  9 August 2019</span>
                <span class="dayspan">上午12:00:00</span>
                <span class="dayspan">晴</span>
            </div>
            <div id="touxiang">
                <img src="${pageContext.request.contextPath }/imgs/10.jpg" alt="">
            </div>
            <a href="" id="hello">hi,${user.uname}</a>
            <b class="bb"></b>
            <div id="tuichu">
                <img src="${pageContext.request.contextPath }/imgs/tuichu.png" alt="" style="width: 20px;height: 20px">
                <a href="" id="logout"> Log out</a>
            </div>
        </div>
        <div id="right-bottom">
            <div class="rb">
                <div id="sanjiao">
                </div>
                <div id="search_right">
                    <ul id="breadcrumb">
                        <li><a href="#" title="Sample page 1">Home</a></li>
                        <li class="pull-right">
                            <div id="search_right1">
                                <input style="border-radius:15px" type="text" placeholder="Search..."
                                       class="form-control" id="pd-inp">
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="rb" id="rbrb">
                <table id="tab">
                </table>
                <div id="inp-nr">

                </div>
            </div>
        </div>
    </div>
</div>
</body>
<script src="${pageContext.request.contextPath }/js/jquery-3.3.1.js"></script>
<script>
    $(".sp").click(
        function () {
            $(this).next().slideToggle();
        }
    )
</script>
//商品列表
<script>
    $(function () {
        //发请求拿数据
        $.get(
            "/manage/user/list.do",
            function (dt) {
                if (dt.status != 0) {
                    alert(dt.mag)
                } else {
                    var tou = " <tr><th>用户序号</th><th>用户名称</th> <th>用户电话</th> <th>用户类型</th><th>用户状态</th></tr>"
                    $("#tab").append(tou);
                    for (var i = 0; i < dt.data.length; i++) {
                        var s = "<tr>" +
                            "<td>" + dt.data[i].id + "</td>" +
                            "<td>" + dt.data[i].uname + "</td>" +
                            "<td>" + dt.data[i].tel + "</td>" +
                            "<td>" + dt.data[i].type+ "</td>" +
                            "<td>" + dt.data[i].stats + "</td>" +
                            "</tr>"
                        $("#tab").append(s);
                    }
                }
            },
            "json"
        )
    })
//模糊查询
    $("#pd-inp").blur(function () {
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
                    $("#inp-nr").append("<ul></ul>");
                    for (var i = 0; i < dt.data.length; i++) {
                        var pname = dt.data[i].name;
                        var ss = "<li>"+pname+"</li>"
                        $("#inp-nr ul").append(ss)
                    }
                }
            }
        )
    })

</script>
</html>


</body>
</html>
