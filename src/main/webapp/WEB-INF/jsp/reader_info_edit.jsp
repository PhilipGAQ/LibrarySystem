<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit ${readerinfo.name}'s Information</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <script src="js/jquery-3.2.1.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(function () {
            $('#header').load('reader_header.html');
        });
    </script>
    <style>
        .panel-title, .form-group label {
            font-size: 16px;
            font-weight: bold;
        }
    </style>
</head>
<body background="img/ustclibrary.jpg" style="background-repeat: no-repeat; background-size: 100% 100%; background-attachment: fixed;">
<div id="header" style="padding-bottom: 80px;"></div>
<c:if test="${not empty succ}">
    <div class="alert alert-success alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            ${succ}
    </div>
</c:if>
<c:if test="${not empty error}">
    <div class="alert alert-danger alert-dismissable">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
            ${error}
    </div>
</c:if>
<div style="padding-top: 70px;"></div>
<div class="col-xs-5 col-md-offset-3">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                Edit ${readerinfo.name}'s Information
            </h3>
        </div>
        <div class="panel-body">
            <form action="reader_edit_do_r.html" method="post">
                <input type="hidden" name="readerId" value="${readerinfo.readerId}">
                <div class="form-group">
                    <label for="name" style="font-size: 16px;">Name</label>
                    <input type="text" class="form-control" name="name" id="name" value="${readerinfo.name}">
                </div>
                <div class="form-group">
                    <label for="sex" style="font-size: 16px;">Gender</label>
                    <input type="text" class="form-control" name="sex" id="sex" value="${readerinfo.sex}">
                </div>
                <div class="form-group">
                    <label for="birth" style="font-size: 16px;">Birth Date</label>
                    <input type="text" class="form-control" name="birth" id="birth" value="${readerinfo.birth}">
                </div>
                <div class="form-group">
                    <label for="address" style="font-size: 16px;">Address</label>
                    <input type="text" class="form-control" name="address" id="address" value="${readerinfo.address}">
                </div>
                <div class="form-group">
                    <label for="phone" style="font-size: 16px;">Phone</label>
                    <input type="text" class="form-control" name="phone" id="phone" value="${readerinfo.phone}">
                </div>
                <div class="form-group">
                    <label for="profile_picture" style="font-size: 16px;">profile_picture</label>
                    <input type="text" class="form-control" name="profile_picture" id="profile_picture" value="${readerinfo.profile_picture}">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
