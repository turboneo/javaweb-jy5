<%--
  Created by IntelliJ IDEA.
  User: TurboNeo
  Date: 2019/8/6
  Time: 10:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>睿乐购后台管理系统1.0</title>
    <style type="text/css">
        input, select, option, textarea {
            outline: none;
        }
    </style>
    <link rel="stylesheet" href="css/login.css">
</head>
<body>
<div id="wk">
    <div id="continue">
        <form action="${pageContext.request.contextPath }/manage/user/login.do" method="post" id="con-form">
            <h1 style="color: white;font-size: 40px">睿乐购后台管理系统
                <span style="font-size: 16px">v1.0</span>
            </h1>

            <input type="text" name="username" placeholder="&nbsp&nbsp请输入账户" id="inp" class="cf-f">
            <br>
            <input type="password" name="password" placeholder="&nbsp&nbsp请输入密码" id="inp2" class="cf-f">
            <span id="nrhz"></span>
            <br>

            <input type="button" value="登陆" id="cf-s">

            <p>&nbsp;</p>
            <div style="text-align:center;height: 40px">
                <h6 style="color:darkgray;">Copyright(C)2019 www.com All Rights Reserved<br/>
                    张鑫粉丝后援会 版权所有 津IP备6666666号</h6>
            </div>
        </form>
    </div>
</div>
</body>
<script src="js/jquery-3.3.1.js"></script>
<script>
    $("#cf-s").click(function () {
        var un = $("#inp").val();
        var pd = $("#inp2").val()
        $.post(
            "/manage/user/login.do",
            {username: un, password: pd},
            function (dt) {
                if (dt.status != 0) {
                    if (dt.status = 10) {
                        $("#nrhz").empty();
                        $("#nrhz").append("<p>" + dt.mag + "</p>")
                    }else if (dt.status = 11) {
                        $("#nrhz").empty();
                        $("#nrhz").append("<p>" + dt.mag + "</p>")
                    }else if (dt.status = 1) {
                        $("#nrhz").empty();
                        $("#nrhz").append("<p>" + dt.mag + "</p>")
                    }
                }else{
                    window.location.href = "homedemo.jsp"
                }

                // if (dt.status != 0) {
                //     $("#nrhz").empty();
                //     $("#nrhz").append("<p>" + dt.mag + "</p>")
                // } else {
                //     window.location.href = "homedemo.jsp"
                // }
            }
        )
    })
</script>
//当得到焦点时，nrhz消失
<script>
    document.getElementById("inp2").addEventListener("focus", myFunction);
    function myFunction() {
        if (document.getElementById("nrhz").hasChildNodes()){
            document.getElementById("nrhz").removeChild(childNodes)
        }
    }
</script>
</html>
