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
            align-items: flex-start; /* 改为从顶部开始，防止内容过多时被裁切 */
            padding: 40px 20px;
            /* 增加内边距，方便小屏幕上下滑动 */
        }

        /* 外层容器，限制宽度并居中 */
        .container {
            max-width: 520px;
            width: 100%;
            display: flex;
            flex-direction: column;
            gap: 24px; /* 两个卡片之间的间距 */
        }

        .result-card {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 16px;
            padding: 32px;
            width: 100%;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.12);
        }

        .result-title {
            font-size: 1.4em;
            color: #4a4a6a;
            margin-bottom: 6px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .result-subtitle {
            color: #999;
            font-size: 0.9em;
            margin-bottom: 20px;
            padding-bottom: 12px;
            border-bottom: 2px solid #eee;
        }

        .data-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 12px 16px;
            margin-bottom: 8px;
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
            font-size: 0.9em;
            text-align: right;
            word-break: break-all;
            max-width: 60%;
        }

        .data-value.empty {
            color: #bbb;
            font-style: italic;
        }

        /* 针对小屏幕的响应式调整 */
        @media (max-width: 600px) {
            .result-card {
                padding: 20px;
            }
            .result-title {
                font-size: 1.2em;
            }
            .data-row {
                flex-direction: column;
                align-items: flex-start;
                gap: 6px;
            }
            .data-value {
                text-align: left;
                width: 100%;
            }
        }
    </style>
</head>
<body>

<div class="container">
    <!-- 第一个卡片：Request 域数据展示 -->
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

    <!-- 第二个卡片：Session 域数据展示 -->
    <div class="result-card">
        <div class="result-title"> Session 域数据展示</div>
        <div class="result-subtitle">存储在会话中的数据</div>

        <div class="data-row">
            <span class="data-label"> 主人名字</span>
            <span class="data-value ${empty sessionScope.master.name ? 'empty' : ''}">
                ${empty sessionScope.master.name ? '未获取到' : sessionScope.master.name}
            </span>
        </div>

        <div class="data-row">
            <span class="data-label"> 主人信息</span>
            <span class="data-value ${empty sessionScope.master ? 'empty' : ''}">
                ${empty sessionScope.master ? '未获取到' : sessionScope.master}
            </span>
        </div>
    </div>
</div>

</body>
</html>