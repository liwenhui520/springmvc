<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Rest风格的CRUD操作案例</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/script/jquery-3.6.0.min.js"></script>
    <style type="text/css">
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: "Microsoft YaHei", "PingFang SC", sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 40px 20px;
        }
        .container {
            max-width: 700px;
            margin: 0 auto;
        }
        h1 {
            text-align: center;
            color: #fff;
            font-size: 28px;
            margin-bottom: 30px;
            text-shadow: 0 2px 4px rgba(0,0,0,0.2);
        }
        .card {
            background: #fff;
            border-radius: 12px;
            padding: 24px 28px;
            margin-bottom: 20px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: transform 0.2s;
        }
        .card:hover {
            transform: translateY(-2px);
        }
        .card-title {
            font-size: 18px;
            color: #333;
            margin-bottom: 16px;
            padding-bottom: 10px;
            border-bottom: 2px solid #667eea;
        }
        .card-title .tag {
            display: inline-block;
            font-size: 12px;
            padding: 2px 8px;
            border-radius: 4px;
            margin-left: 8px;
            vertical-align: middle;
        }
        .tag-get { background: #e3f2fd; color: #1976d2; }
        .tag-post { background: #e8f5e9; color: #388e3c; }
        .tag-put { background: #fff3e0; color: #f57c00; }
        .tag-delete { background: #ffebee; color: #d32f2f; }

        /* 表单样式 */
        .form-group {
            margin-bottom: 14px;
        }
        .form-group label {
            display: inline-block;
            width: 60px;
            color: #555;
            font-size: 14px;
        }
        .form-group input[type="text"] {
            width: 260px;
            padding: 8px 12px;
            border: 1px solid #ddd;
            border-radius: 6px;
            font-size: 14px;
            outline: none;
            transition: border-color 0.2s;
        }
        .form-group input[type="text"]:focus {
            border-color: #667eea;
        }

        /* 按钮样式 */
        .btn {
            display: inline-block;
            padding: 8px 20px;
            border: none;
            border-radius: 6px;
            font-size: 14px;
            cursor: pointer;
            text-decoration: none;
            color: #fff;
            transition: opacity 0.2s;
        }
        .btn:hover { opacity: 0.85; }
        .btn-get { background: #1976d2; }
        .btn-post { background: #388e3c; }
        .btn-put { background: #f57c00; }
        .btn-delete { background: #d32f2f; }

        /* 链接按钮样式 */
        .link-btn {
            color: #d32f2f;
            text-decoration: none;
            font-size: 14px;
        }
        .link-btn:hover {
            text-decoration: underline;
        }
    </style>

    <script type="text/javascript">
        $(function (){
            $("#deleteBook").click(function (){
                var href = this.href;
                $("#hiddenForm").attr("action", href);
                $(":hidden").val("DELETE");
                $("#hiddenForm").submit();
                return false;
            });
        });
    </script>
</head>
<body>

<div class="container">
    <h1>Rest 风格的 CRUD 操作案例</h1>

    <!-- 查询 -->
    <div class="card">
        <div class="card-title">
            查询书籍 <span class="tag tag-get">GET</span>
        </div>
        <a href="${pageContext.request.contextPath}/bookHandler/book/100" class="btn btn-get">点击查询书籍 (ID: 100)</a>
    </div>

    <!-- 添加 -->
    <div class="card">
        <div class="card-title">
            添加书籍 <span class="tag tag-post">POST</span>
        </div>
        <form action="${pageContext.request.contextPath}/bookHandler/book" method="post">
            <div class="form-group">
                <label>书名：</label>
                <input name="bookName" type="text" placeholder="请输入书籍名称">
            </div>
            <input type="submit" value="添加书籍" class="btn btn-post">
        </form>
    </div>

    <!-- 删除 -->
    <div class="card">
        <div class="card-title">
            删除书籍 <span class="tag tag-delete">DELETE</span>
        </div>
        <a href="${pageContext.request.contextPath}/bookHandler/bookDelete/100" id="deleteBook" class="btn btn-delete">删除指定ID的书籍 (ID: 100)</a>
        <form action="" method="post" id="hiddenForm">
            <input type="hidden" name="_method">
        </form>
    </div>

    <!-- 修改 -->
    <div class="card">
        <div class="card-title">
            修改书籍 <span class="tag tag-put">PUT</span>
        </div>
        <form action="${pageContext.request.contextPath}/bookHandler/bookUpdate/100" method="post">
            <input type="hidden" name="_method" value="PUT">
            <input type="submit" value="修改书籍 (ID: 100)" class="btn btn-put">
        </form>
    </div>

</div>

</body>
</html>