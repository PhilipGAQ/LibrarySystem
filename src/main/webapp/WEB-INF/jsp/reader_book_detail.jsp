<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>"${detail.name}"</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        })
    </script>
    <style>
        body {
            background-image: url("img/ustclibrary.jpg");
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
            padding-top: 0px; /* 腾出导航栏高度 */
            color: #fff; /* 修改字体颜色为白色 */
        }

        .panel {
            margin-top: 20px;
        }

        .container {
            padding-top: 20px; /* 腾出导航栏高度 */
            font-size: 20px; /* 增大整个表单的字体大小 */
        }

        .panel-title {
            font-size: 24px;
            font-weight: bold;
        }

        .table th {
            width: 15%;
        }

        .table td {
            font-size: 18px;
        }
    </style>
</head>
<body>

<div id="header"></div>
<div style="padding-top: 70px;"></div>
<div class="container">
    <div class="col-xs-6 col-md-offset-3">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">"${detail.name}"</h3>
            </div>
            <div class="panel-body">
                <form>
                    <div class="form-group">
                        <label for="title" style="color: black;">Title</label> <!-- 修改标题颜色为灰色 -->
                        <input type="text" class="form-control" id="title" value="${detail.name}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="author"style="color: black;">Author</label>
                        <input type="text" class="form-control" id="author" value="${detail.author}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="publisher"style="color: black;">Publisher</label>
                        <input type="text" class="form-control" id="publisher" value="${detail.publish}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="isbn"style="color: black;">ISBN</label>
                        <input type="text" class="form-control" id="isbn" value="${detail.isbn}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="introduction"style="color: black;">Introduction</label>
                        <textarea class="form-control" id="introduction" rows="3" readonly>${detail.introduction}</textarea>
                    </div>
                    <div class="form-group">
                        <label for="language"style="color: black;">Language</label>
                        <input type="text" class="form-control" id="language" value="${detail.language}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="price"style="color: black;">Price</label>
                        <input type="text" class="form-control" id="price" value="${detail.price}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="pubdate"style="color: black;">Publication Date</label>
                        <input type="text" class="form-control" id="pubdate" value="${detail.pubdate}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="classId"style="color: black;">Classification Number</label>
                        <input type="text" class="form-control" id="classId" value="${detail.classId}" readonly>
                    </div>
                    <div class="form-group">
                        <label for="quantity"style="color: black;">Quantity</label>
                        <input type="text" class="form-control" id="quantity" value="${detail.number}" readonly>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
