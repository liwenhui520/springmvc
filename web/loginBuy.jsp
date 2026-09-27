<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
    <style>
        /* 全局重置与字体设置 */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
        }

        body {
            /* 高端渐变背景 */
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: #333;
        }

        /* 登录卡片容器 */
        .login-card {
            background: rgba(255, 255, 255, 0.95);
            padding: 40px 50px;
            border-radius: 16px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
            transition: transform 0.3s ease;
        }

        .login-card:hover {
            transform: translateY(-5px);
        }

        /* 标题样式 */
        .login-header h2 {
            margin-bottom: 10px;
            color: #333;
            font-weight: 600;
            font-size: 28px;
        }

        .login-header p {
            color: #888;
            font-size: 14px;
            margin-bottom: 30px;
        }

        /* 表单组样式 */
        .form-group {
            margin-bottom: 20px;
            text-align: left;
            position: relative;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            font-size: 14px;
            color: #555;
            font-weight: 500;
        }

        /* 输入框样式 */
        .form-input {
            width: 100%;
            padding: 12px 15px;
            border: 2px solid #e1e1e1;
            border-radius: 8px;
            font-size: 16px;
            outline: none;
            transition: all 0.3s ease;
            background-color: #f9f9f9;
        }

        .form-input:focus {
            border-color: #667eea;
            background-color: #fff;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
        }

        /* 提交按钮样式 */
        .submit-btn {
            width: 100%;
            padding: 14px;
            background: linear-gradient(to right, #667eea, #764ba2);
            color: white;
            border: none;
            border-radius: 8px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: opacity 0.3s ease, transform 0.2s ease;
            margin-top: 10px;
        }

        .submit-btn:hover {
            opacity: 0.9;
            transform: scale(1.02);
        }

        .submit-btn:active {
            transform: scale(0.98);
        }

        /* 底部版权或链接 */
        .footer-text {
            margin-top: 20px;
            font-size: 12px;
            color: #aaa;
        }
    </style>
</head>
<body>

<div class="login-card">
    <div class="login-header">
        <h2>Buy</h2>
        <p>请输入你的购买信息</p>
    </div>

    <form action="loginBuy" method="post">
        <div class="form-group">
            <label for="username">购买人</label>
            <input id="username" class="form-input" name="username" type="text" placeholder="请输入用户名" required autocomplete="off">
        </div>

        <div class="form-group">
            <label for="password">购买数量</label>
            <input id="password" class="form-input" name="password" type="text" placeholder="请输入密码" required>
        </div>

        <button type="submit" class="submit-btn">立即购买</button>
    </form>

    <!-- 动态时间部分 -->
    <%--    <div class="footer-text">--%>
    <%--        <span>当前时间：</span>--%>
    <%--        <span id="clock-display" class="time-highlight">加载中...</span>--%>
    <%--    </div>--%>
    <%--</div>--%>
    <!-- 动态时间部分 -->
    <div class="footer-text">
        <%
            // 创建日期格式化对象
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
            String currentTime = sdf.format(new Date());
        %>
        当前系统时间：<span class="time-highlight"><%= currentTime %></span>
    </div>

    <%--<script>--%>
    <%--    // 定义更新时间函数--%>
    <%--    function updateClock() {--%>
    <%--        const now = new Date();--%>

    <%--        // 获取年月日时分秒--%>
    <%--        const year = now.getFullYear();--%>
    <%--        const month = String(now.getMonth() + 1).padStart(2, '0');--%>
    <%--        const day = String(now.getDate()).padStart(2, '0');--%>
    <%--        const hours = String(now.getHours()).padStart(2, '0');--%>
    <%--        const minutes = String(now.getMinutes()).padStart(2, '0');--%>
    <%--        const seconds = String(now.getSeconds()).padStart(2, '0');--%>

    <%--        // 格式化字符串--%>
    <%--        const timeString = `${year}-${month}-${day} ${hours}:${minutes}:${seconds}`;--%>

    <%--        // 更新页面元素--%>
    <%--        document.getElementById('clock-display').textContent = timeString;--%>
    <%--    }--%>

    <%--    // 页面加载完成后立即执行一次，避免等待1秒才显示--%>
    <%--    window.onload = function() {--%>
    <%--        updateClock();--%>
    <%--        // 设置定时器，每1000毫秒（1秒）执行一次--%>
    <%--        setInterval(updateClock, 1000);--%>
    <%--    };--%>
    <%--</script>--%>

</body>
</html>
