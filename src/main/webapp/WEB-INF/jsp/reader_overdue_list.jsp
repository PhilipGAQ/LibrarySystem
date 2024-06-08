<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>My Overdue</title>
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
            padding-top: 0;
        }

        #header {
            position: fixed;
            top: 0;
            width: 100%;
            z-index: 1000;
        }

        .panel {
            margin-top: 5%;
            width: 90%;
            margin-left: 5%;
        }

        .panel-title {
            font-size: 24px;
            font-weight: bold;
        }

        .table th, .table td {
            font-size: 18px;
        }

        .btn-xs {
            font-size: 14px;
        }

        .alert {
            position: relative;
            top: 10%;
        }
    </style>
</head>
<body>

<div id="header"></div>

<div>
    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                ${error}
        </div>
    </c:if>
</div>

<div style="padding-top: 70px;"></div>

<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">
            My Overdue Log
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>Overdue ID</th>
                <th>Book</th>
                <th>Due Date</th>
                <th>Return Date</th>
                <th>Overdue Days</th>
                <th>Fine Amount</th>
                <th>Pay Fine</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="alog">
                <tr>
                    <td><c:out value="${alog.overdue_id}"></c:out></td>
                    <td><c:out value="${alog.name}"></c:out></td>
                    <td><fmt:formatDate value="${alog.due_date}" pattern="yyyy-MM-dd" /></td>
                    <td><fmt:formatDate value="${alog.return_date}" pattern="yyyy-MM-dd" /></td>
                    <td><c:out value="${alog.overdue_days}"></c:out></td>
                    <td><c:out value="${alog.fine_amount}"></c:out></td>
                    <td>
                        <a href="deleteoverdue.html?id=<c:out value='${alog.overdue_id}'></c:out>">
                            <button type="button" class="btn btn-danger btn-xs">Pay Fine</button>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

</body>
</html>
