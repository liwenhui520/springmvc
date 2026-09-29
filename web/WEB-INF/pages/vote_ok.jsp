<%--
  Created by IntelliJ IDEA.
  User: 20702
  Date: 2026/9/29
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>vote_ok</title>
</head>
<body>
<h1>获取的的数据显示页面</h1>
<hr>
address:${address}<br>
主人的名字=${requestScope.master.name}<br>
主人的信息=${requestScope.master}<br>
宠物的名字=${requestScope.master.pet.name}<br>
</body>
</html>
