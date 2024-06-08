<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>${readercard.name}的主页</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        });
    </script>
    <style>
        .vertical-navbar-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            background-color: rgba(255, 255, 255, 0); /* 背景颜色，可以根据需要调整透明度 */
            z-index: 998; /* 确保在最顶层显示 */
        }
        .vertical-navbar {
            width: 250px; /* 导航栏宽度增大 */
            background-color: rgba(255, 255, 255, 0.76); /* 导航栏背景颜色 */
            padding-top: 20px; /* 调整顶部内边距 */
            border-radius: 10px; /* 添加边框圆角 */
            /* 新增样式以调整位置 */
            margin-left: 700px; /* 向左偏移，使其更靠近中间 */
        }
        .vertical-navbar ul {
            list-style: none;
            padding-left: 0;
        }
        .vertical-navbar li {
            margin-bottom: 10px;
        }
        .vertical-navbar a {
            display: block;
            padding: 10px;
            color: #333;
            text-decoration: none;
            font-weight: bold; /* 字体加粗 */
            font-size: 16px; /* 字体大小增加 */
        }
        .vertical-navbar a:hover {
            background-color: #e9ecef;
        }
    </style>
</head>
<body background="img/ustclibrary.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">

<div id="header"></div>

<div class="vertical-navbar-container">
    <div class="vertical-navbar">
        <ul>
            <li><a href="reader_books.html">All Books</a></li>
            <li><a href="reader_info.html">My Info</a></li>
            <li><a href="mylend.html">Lending Logs</a></li>
            <li><a href="myoverdue.html">Overdue Logs</a></li>
            <!-- Add more links as needed -->
        </ul>
    </div>
</div>

</body>
</html>
