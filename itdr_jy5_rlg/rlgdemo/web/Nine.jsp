<%--
  Created by IntelliJ IDEA.
  User: TurboNeo
  Date: 2019/8/13
  Time: 19:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>试炼：九层塔</title>
</head>
<body>
<div style="display: flex;justify-content: center;align-items: center; border: #45B6B0 1px solid;width: 400px;height: 400px;position: absolute;margin-left: 500px;margin-top: 200px" >
    <div id="hz"style="height: 200px;width: 200px;border: red 1px solid; ">
        <input type="text" placeholder="请输入正确答案" value="" id="daan">
        <br>
        <input type="text" placeholder="请输入您的答案" value="" id="anser">
        <input type="button" value="提交" id="tj">
    </div>
    <div id="df"></div>

</div>
</body>
<script src="${pageContext.request.contextPath}/js/jquery-3.3.1.js"></script>
<script>
    $("#tj").click(function () {
            //获取正确答案
            var trueda=$("#daan").val();
            //获取用户输入的答案
            var anwser=$("#anser").val();
            //不管用户输入什么都转换成小写
            var a=trueda.toLowerCase()
            var b=anwser.toLowerCase()
            //字符串处理,获得一个数组
            var aa=a.split("/");
            var bb=b.split("/");

            //遍历，计分数
            var count=0;
            for (var i = 0; i < aa.length; i++) {
                    if (aa[i] === bb[i]){
                        count=count+1;
                }
            }
            //得到分数以后显示出来
            $("#df").empty()
            var fs="<span>"+count+"</span>"
            $("#df").append(fs)
        }
    )
</script>
</html>
