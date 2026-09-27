<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录成功</title>

    <style>
        body {
            text-align: center;
            background: linear-gradient(135deg, #ffecd2, #fcb69f);
            font-family: "微软雅黑", sans-serif;
            padding: 20px;
        }

        h1 {
            color: #d63031;
            animation: bounceIn 1s ease;
        }

        /* ===== 3D卡片容器 ===== */
        .card {
            width: 300px;
            margin: 40px auto;
            perspective: 1000px;
            cursor: pointer;
        }

        .card-inner {
            position: relative;
            width: 100%;
            height: 400px;
            transform-style: preserve-3d;
            transition: transform 0.8s;
        }

        .card.flip .card-inner {
            transform: rotateY(180deg);
        }

        .card-front,
        .card-back {
            position: absolute;
            width: 100%;
            height: 100%;
            backface-visibility: hidden;
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }

        .card-back {
            transform: rotateY(180deg);
        }

        .card-img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* 标题动画 */
        @keyframes bounceIn {
            0%   { transform: scale(0.3); opacity: 0; }
            50%  { transform: scale(1.05); }
            70%  { transform: scale(0.95); }
            100% { transform: scale(1); opacity: 1; }
        }

        /* 音乐按钮 */
        .music-btn {
            position: fixed;
            top: 15px;
            right: 15px;
            width: 45px;
            height: 45px;
            border-radius: 50%;
            background: #d63031;
            color: white;
            border: none;
            font-size: 20px;
            cursor: pointer;
            animation: spin 3s linear infinite;
            box-shadow: 0 4px 10px rgba(214,48,49,0.4);
        }

        @keyframes spin {
            100% { transform: rotate(360deg); }
        }

        .music-btn.paused {
            animation-play-state: paused;
        }

        .tip {
            color: #636e72;
            margin-top: 15px;
            font-size: 14px;
        }
    </style>
</head>

<body>

<!-- 背景音乐 -->
<audio id="bgm" loop>
    <source src="${pageContext.request.contextPath}/images/music.mp3" type="audio/mpeg">
</audio>

<!-- 音乐按钮 -->
<button class="music-btn" id="musicBtn">🎵</button>

<h1>反转图片查看商品</h1>

<!-- ===== 3D翻转卡片 ===== -->
<div class="card" id="card">
    <div class="card-inner">

        <!-- 正面 -->
        <div class="card-front">
            <img src="${pageContext.request.contextPath}/images/g1.jpg" class="card-img">
        </div>

        <!-- 背面 -->
        <div class="card-back">
            <img id="backImg"
                 src="${pageContext.request.contextPath}/images/g2.jpg"
                 class="card-img">
        </div>

    </div>
</div>

<p class="tip">👉 点击卡片翻转 & 随机切换图片</p>

<script>
    // ===== 音乐控制 =====
    const bgm = document.getElementById('bgm');
    const btn = document.getElementById('musicBtn');

    window.addEventListener('load', function() {
        bgm.play().then(() => {
            btn.classList.remove('paused');
        }).catch(() => {
            btn.classList.add('paused');
        });
    });

    btn.addEventListener('click', function() {
        if (bgm.paused) {
            bgm.play();
            btn.classList.remove('paused');
        } else {
            bgm.pause();
            btn.classList.add('paused');
        }
    });

    // ===== 3D翻转 + 随机图片 =====
    const card = document.getElementById("card");
    const backImg = document.getElementById("backImg");

    const total = 6;
    let current = 2;

    card.addEventListener("click", function () {

        let next;
        do {
            next = Math.floor(Math.random() * total) + 1;
        } while (next === current);

        current = next;

        backImg.src = "${pageContext.request.contextPath}/images/g" + current + ".jpg";

        card.classList.toggle("flip");
    });
</script>

</body>
</html>