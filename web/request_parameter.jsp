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
    <title>测试 request parameter</title>
    <style>
        /* ========== 全局重置与基础 ========== */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', 'PingFang SC', 'Microsoft YaHei', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 40px 20px;
            color: #333;
        }

        /* ========== 页面容器 ========== */
        .container {
            max-width: 720px;
            margin: 0 auto;
        }

        /* ========== 页面标题 ========== */
        .page-header {
            text-align: center;
            margin-bottom: 40px;
        }

        .page-header h1 {
            font-size: 2.2em;
            color: #fff;
            text-shadow: 0 2px 10px rgba(0, 0, 0, 0.15);
            letter-spacing: 2px;
        }

        .page-header p {
            color: rgba(255, 255, 255, 0.8);
            margin-top: 8px;
            font-size: 1em;
        }

        /* ========== 卡片通用样式 ========== */
        .card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 28px 32px;
            margin-bottom: 24px;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-4px);
            box-shadow: 0 12px 40px rgba(0, 0, 0, 0.15);
        }

        .card-title {
            font-size: 1.25em;
            font-weight: 600;
            color: #4a4a6a;
            margin-bottom: 18px;
            padding-bottom: 10px;
            border-bottom: 2px solid #eee;
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .card-title .icon {
            font-size: 1.3em;
        }

        /* ========== 链接按钮 ========== */
        .link-btn {
            display: inline-block;
            padding: 10px 24px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: #fff;
            text-decoration: none;
            border-radius: 8px;
            font-size: 0.95em;
            font-weight: 500;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(102, 126, 234, 0.3);
        }

        .link-btn:hover {
            background: linear-gradient(135deg, #5a6fd6, #6a4190);
            box-shadow: 0 6px 18px rgba(102, 126, 234, 0.45);
            transform: translateY(-2px);
        }

        .link-btn:active {
            transform: translateY(0);
        }

        /* ========== 表单样式 ========== */
        .form-group {
            margin-bottom: 16px;
        }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-size: 0.9em;
            color: #5a5a7a;
            font-weight: 500;
        }

        .form-group input[type="text"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px 14px;
            border: 2px solid #e0e0e0;
            border-radius: 8px;
            font-size: 0.95em;
            transition: border-color 0.3s ease, box-shadow 0.3s ease;
            outline: none;
            background: #fafafa;
        }

        .form-group input:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.15);
            background: #fff;
        }

        .form-row {
            display: flex;
            gap: 16px;
        }

        .form-row .form-group {
            flex: 1;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: linear-gradient(135deg, #667eea, #764ba2);
            color: #fff;
            border: none;
            border-radius: 8px;
            font-size: 1em;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            box-shadow: 0 4px 12px rgba(102, 126, 234, 0.3);
            margin-top: 8px;
        }

        .submit-btn:hover {
            background: linear-gradient(135deg, #5a6fd6, #6a4190);
            box-shadow: 0 6px 18px rgba(102, 126, 234, 0.45);
            transform: translateY(-2px);
        }

        .submit-btn:active {
            transform: translateY(0);
        }

        /* ========== 子标题（宠物/主人分组） ========== */
        .sub-title {
            font-size: 0.85em;
            color: #999;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin: 16px 0 10px 0;
            font-weight: 600;
        }

        /* ========== 响应式 ========== */
        @media (max-width: 500px) {
            .form-row {
                flex-direction: column;
                gap: 0;
            }

            .card {
                padding: 20px 18px;
            }

            .page-header h1 {
                font-size: 1.6em;
            }
        }
    </style>
</head>
<body>

<div class="container">

    <!-- 页面标题 -->
    <div class="page-header">
        <h1>📡 Request Parameter 测试</h1>
        <p>Spring MVC 参数绑定演示</p>
    </div>

    <!-- 卡片1：获取超链接参数 -->
    <div class="card">
        <div class="card-title">
            <span class="icon">🔗</span> 获取超链接参数值
        </div>
        <a class="link-btn" href="${pageContext.request.contextPath}/vote/vote01?name=lwhedu">
            获取超链接参数 →
        </a>
    </div>

    <!-- 卡片2：获取请求头参数 -->
    <div class="card">
        <div class="card-title">
            <span class="icon">📨</span> 获取请求头里面的参数
        </div>
        <a class="link-btn" href="${pageContext.request.contextPath}/vote/vote02">
            获取请求头参数 →
        </a>
    </div>

    <!-- 卡片3：提交 Master & Pet（嵌套对象） -->
    <div class="card">
        <div class="card-title">
            <span class="icon">🐾</span> 提交 Master &amp; Pet
        </div>
        <form action="${pageContext.request.contextPath}/vote/vote03" method="post">
            <div class="sub-title">主人信息</div>
            <div class="form-row">
                <div class="form-group">
                    <label for="masterId1">主人号</label>
                    <input type="text" id="masterId1" name="id" placeholder="请输入主人号">
                </div>
                <div class="form-group">
                    <label for="masterName1">主人名</label>
                    <input type="text" id="masterName1" name="name" placeholder="请输入主人名">
                </div>
            </div>
            <div class="sub-title">宠物信息</div>
            <div class="form-row">
                <div class="form-group">
                    <label for="petId1">宠物号</label>
                    <input type="text" id="petId1" name="pet.id" placeholder="请输入宠物号">
                </div>
                <div class="form-group">
                    <label for="petName1">宠物名</label>
                    <input type="text" id="petName1" name="pet.name" placeholder="请输入宠物名">
                </div>
            </div>
            <button type="submit" class="submit-btn">提交 Master &amp; Pet</button>
        </form>
    </div>

    <!-- 卡片4：提交用户信息 -->
    <div class="card">
        <div class="card-title">
            <span class="icon">👤</span> 提交用户信息
        </div>
        <form action="${pageContext.request.contextPath}/vote/vote04" method="post">
            <div class="form-group">
                <label for="username">用户名</label>
                <input type="text" id="username" name="username" placeholder="请输入用户名">
            </div>
            <div class="form-group">
                <label for="pwd">密码</label>
                <input type="password" id="pwd" name="pwd" placeholder="请输入密码">
            </div>
            <button type="submit" class="submit-btn">提交用户信息</button>
        </form>
    </div>

    <!-- 卡片5：提交 Master & Pet（重复测试） -->
    <div class="card">
        <div class="card-title">
            <span class="icon">🐾</span> 提交 Master &amp; Pet（备用）
        </div>
        <form action="${pageContext.request.contextPath}/vote/vote05" method="post">
            <div class="sub-title">主人信息</div>
            <div class="form-row">
                <div class="form-group">
                    <label for="masterId2">主人号</label>
                    <input type="text" id="masterId2" name="id" placeholder="请输入主人号">
                </div>
                <div class="form-group">
                    <label for="masterName2">主人名</label>
                    <input type="text" id="masterName2" name="name" placeholder="请输入主人名">
                </div>
            </div>
            <div class="sub-title">宠物信息</div>
            <div class="form-row">
                <div class="form-group">
                    <label for="petId2">宠物号</label>
                    <input type="text" id="petId2" name="pet.id" placeholder="请输入宠物号">
                </div>
                <div class="form-group">
                    <label for="petName2">宠物名</label>
                    <input type="text" id="petName2" name="pet.name" placeholder="请输入宠物名">
                </div>
            </div>
            <button type="submit" class="submit-btn">提交 Master &amp; Pet</button>
        </form>
    </div>

    <div class="card">
        <div class="card-title">
            <span class="icon">🐾</span> 提交 Master &amp; Pet（session域中）
        </div>
        <form action="${pageContext.request.contextPath}/vote/vote08" method="post">
            <div class="sub-title">主人信息</div>
            <div class="form-row">
                <div class="form-group">
                    <label for="masterId2">主人号</label>
                    <input type="text" id="masterId3" name="id" placeholder="请输入主人号">
                </div>
                <div class="form-group">
                    <label for="masterName2">主人名</label>
                    <input type="text" id="masterName3" name="name" placeholder="请输入主人名">
                </div>
            </div>
            <div class="sub-title">宠物信息</div>
            <div class="form-row">
                <div class="form-group">
                    <label for="petId2">宠物号</label>
                    <input type="text" id="petId3" name="pet.id" placeholder="请输入宠物号">
                </div>
                <div class="form-group">
                    <label for="petName2">宠物名</label>
                    <input type="text" id="petName3" name="pet.name" placeholder="请输入宠物名">
                </div>
            </div>
            <button type="submit" class="submit-btn">提交 Master &amp; Pet</button>
        </form>
    </div>


</div>

</body>
</html>