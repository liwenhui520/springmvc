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

    /* 照片跳动动画 */
    .bounce-img {
      max-width: 300px;
      height: auto;
      border-radius: 12px;
      box-shadow: 0 8px 25px rgba(0,0,0,0.2);
      animation: bounce 0.8s ease infinite alternate;
      cursor: pointer;
    }

    /* 关键帧：上下弹跳 */
    @keyframes bounce {
      0%   { transform: translateY(0); }
      100% { transform: translateY(-20px); }
    }

    /* 标题弹入动画 */
    @keyframes bounceIn {
      0%   { transform: scale(0.3); opacity: 0; }
      50%  { transform: scale(1.05); }
      70%  { transform: scale(0.95); }
      100% { transform: scale(1); opacity: 1; }
    }

    /* 音乐播放按钮 */
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
      z-index: 999;
    }

    @keyframes spin {
      100% { transform: rotate(360deg); }
    }

    .music-btn.paused {
      animation-play-state: paused;
    }

    /* 提示文字 */
    .tip {
      color: #636e72;
      margin-top: 15px;
      font-size: 14px;
    }
  </style>
</head>
<body>

<!-- 背景音乐：替换 music.mp3 为你的音频文件名 -->
<audio id="bgm" loop>
  <source src="${pageContext.request.contextPath}/images/music.mp3" type="audio/mpeg">
</audio>

<!-- 音乐控制按钮（右上角旋转唱片） -->
<button class="music-btn" id="musicBtn" title="播放/暂停音乐">🎵</button>

<h1>你好啊美女师姐！</h1>

<!-- 跳动的照片 -->
<img src="${pageContext.request.contextPath}/images/p1.jpg"
     alt="照片"
     class="bounce-img"
     id="photo">

<p class="tip">💡 点击右上角 🎵 控制音乐播放/暂停</p>

<script>
  // 音乐播放控制
  const bgm = document.getElementById('bgm');
  const btn = document.getElementById('musicBtn');

  // 尝试自动播放（部分手机浏览器会拦截）
  window.addEventListener('load', function() {
    bgm.play().then(function() {
      btn.classList.remove('paused');
    }).catch(function() {
      // 如果自动播放被拦截，等用户点击任意位置后再播放
      btn.classList.add('paused');
      document.body.addEventListener('click', function playOnce() {
        bgm.play();
        btn.classList.remove('paused');
        document.body.removeEventListener('click', playOnce);
      }, { once: true });
    });
  });

  // 点击按钮切换播放/暂停
  btn.addEventListener('click', function() {
    if (bgm.paused) {
      bgm.play();
      btn.classList.remove('paused');
    } else {
      bgm.pause();
      btn.classList.add('paused');
    }
  });

  // 点击照片也可以暂停/恢复音乐（增加趣味性）
  document.getElementById('photo').addEventListener('click', function() {
    if (bgm.paused) {
      bgm.play();
      btn.classList.remove('paused');
    } else {
      bgm.pause();
      btn.classList.add('paused');
    }
  });
</script>
</body>
</html>