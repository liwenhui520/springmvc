<%--
  Created by IntelliJ IDEA.
  User: 20702
  Date: 2026/9/28
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>rest</title>
    <script type="text/javascript" src="/script/jquery-3.6.0.min.js"></script>
<%--    <script type="text/javascript">--%>
<%--        --%>
<%--    </script>--%>
</head>
<body>
<h3>Rest风格的crud操作案例</h3>
<br>
<hr>
<h3>rest风格的url查询数据[get]</h3>
<a href="bookHandler/book/100">点击查询书籍</a>
<br>
<hr>
<h3>rest风格的url添加书籍[post]</h3>
<form action="${pageContext.request.contextPath}/bookHandler/book" method="post">
    name:<input name="bookName" type="text"><br>
    <input type="submit" value="添加书籍">
</form>

</body>
</html>
