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
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("#deleteBook").click(function (){
                alert("ok");
                var href = this.href;
                $("#hiddenForm").attr("action",href);
                $(":hidden").val("DELETE");
                $("#hiddenForm").submit();
                return false;
            });
        });
    </script>
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
<br>
<h3>rest风格的url ，删除一本书</h3>
<%--
    1,这里我们需要将删除方式（get）转换成delete的方式，需要使用过滤器和jquery来完成.
    2, name ="_method" 名字需要写成_method, 因为后台的HiddenHttpMethodFilter
就是按这个名字来获取hidden域的值，从而进行请求转换的
--%>
<a href="bookHandler/bookDelete/100" id="deleteBook">删除指定id 的书</a>
<form action="" method="post" id="hiddenForm">
    <input type="hidden" name="_method">
</form>
<br>
<h3>rest风格的url 修改书籍[put]</h3>
<form action="bookHandler/bookUpdate/100" method="post">
    <input type="hidden" name="_method" value="PUT">
    <input type="submit" value="修改书籍">
</form>

</body>
</html>
