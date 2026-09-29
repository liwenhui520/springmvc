<%--
  Created by IntelliJ IDEA.
  User: 20702
  Date: 2026/9/29
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>测试 request parameter</title></head>
<body>
<h2>获取到超链接参数值</h2>
<br>
<a href="${pageContext.request.contextPath}/vote/vote01?name=lwhedu">获取超链接参数</a>
<br>
<hr>
<h1>获取请求头里面的参数</h1>
<a href="${pageContext.request.contextPath}/vote/vote02">获取请求头里面的参数</a>
<br>
<hr>

<form action="${pageContext.request.contextPath}/vote/vote03" method="post">
    主人号：<input type="text" name="id"><br>
    主人名: <input type="text" name="name"><br>
    宠物号: <input type="text" name="pet.id"><br>
    宠物名: <input type="text" name="pet.name"><br>
    <input type="submit" value="提交master and pet">
</form>
<br>
<hr>
<form action="${pageContext.request.contextPath}/vote/vote04" method="post">
    用户名：<input type="text" name="username"><br>
    密 码：<input type="password" name="pwd"><br>
    <input type="submit" value="提交用户信息">
</form>


</body>
</html>
