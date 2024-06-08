<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>我的违期</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js" ></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        })
    </script>
</head>
<body background="img/lizhi.jpg" style=" background-repeat:no-repeat ;
background-size:100% 100%;
background-attachment: fixed;">
<div id="header"></div>
<div style="position: relative;top: 10%">
    <c:if test="${!empty succ}">
        <div class="alert alert-success alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${succ}
        </div>
    </c:if>
    <c:if test="${!empty error}">
        <div class="alert alert-danger alert-dismissable">
            <button type="button" class="close" data-dismiss="alert"
                    aria-hidden="true">
                &times;
            </button>
                ${error}
        </div>
    </c:if>
</div>

<div class="panel panel-default" style="width: 90%;margin-left: 5%;margin-top: 5%">
    <div class="panel-heading">
        <h3 class="panel-title">
            我的罚款日志
        </h3>
    </div>
    <div class="panel-body">
        <table class="table table-hover">
            <thead>
            <tr>
                <th>违期号</th>
                <th>图书</th>
                <th>应还日期</th>
                <th>归还日期</th>
                <th>逾期天数</th>
                <th>罚款金额</th>
                <th>缴款</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list}" var="alog">
                <tr>
                    <td><c:out value="${alog.overdue_id}"></c:out></td>
                    <td><c:out value="${alog.name}"></c:out></td>
                    <td><c:out value="${alog.due_date}"></c:out></td>
                    <td><c:out value="${alog.return_date}"></c:out></td>
                    <td><c:out value="${alog.overdue_days}"></c:out></td>
                    <td><c:out value="${alog.fine_amount}"></c:out></td>
                    <td>
                        <a href="deleteoverdue.html?id=<c:out value='${alog.overdue_id}'></c:out>">
                            <button type="button" class="btn btn-danger btn-xs">缴纳罚款</button>
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