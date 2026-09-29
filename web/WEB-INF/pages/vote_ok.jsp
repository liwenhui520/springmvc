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
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', 'PingFang SC', 'Microsoft YaHei', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        .result-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 36px 40px;
            max-width: 560px;
            width: 100%;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.12);
        }

        .result-title {
            font-size: 1.6em;
            color: #4a4a6a;
            margin-bottom: 8px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .result-subtitle {
            color: #999;
            font-size: 0.9em;
            margin-bottom: 24px;
            padding-bottom: 16px;
            border-bottom: 2px solid #eee;
        }

        .data-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 14px 16px;
            margin-bottom: 10px;
            background: #f8f9ff;
            border-radius: 10px;
            border-left: 4px solid #667eea;
            transition: background 0.3s ease;
        }

        .data-row:hover {
            background: #eef0ff;
        }

        .data-label {
            font-weight: 600;
            color: #5a5a7a;
            font-size: 0.95em;
            display: flex;
            align-items: center;
            gap: 6px;
        }

        .data-value {
            color: #333;
            font-size: 0.95em;
            text-align: right;
            word-break: break-all;
        }

        .data-value.empty {
            color: #bbb;
            font-style: italic;
        }
    </style>
</head>
<body>

<div class="result-card">
    <div class="result-title"> 获取的数据显示页面</div>
    <div class="result-subtitle">Request 域数据展示</div>

    <div class="data-row">
        <span class="data-label"> 地址</span>
        <span class="data-value ${empty address ? 'empty' : ''}">
            ${empty address ? '未获取到' : address}
        </span>
    </div>

    <div class="data-row">
        <span class="data-label"> 主人的名字</span>
        <span class="data-value ${empty requestScope.master.name ? 'empty' : ''}">
            ${empty requestScope.master.name ? '未获取到' : requestScope.master.name}
        </span>
    </div>

    <div class="data-row">
        <span class="data-label"> 主人的信息</span>
        <span class="data-value ${empty requestScope.master ? 'empty' : ''}">
            ${empty requestScope.master ? '未获取到' : requestScope.master}
        </span>
    </div>

    <div class="data-row">
        <span class="data-label"> 宠物的名字</span>
        <span class="data-value ${empty requestScope.master.pet.name ? 'empty' : ''}">
            ${empty requestScope.master.pet.name ? '未获取到' : requestScope.master.pet.name}
        </span>
    </div>

</div>

</body>
</html>