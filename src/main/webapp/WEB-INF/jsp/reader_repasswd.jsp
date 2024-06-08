<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Edit Profile</title>
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
            background-size: cover;
            background-attachment: fixed;
        }

        .alert {
            position: relative;
            top: 20px;
        }

        .panel {
            position: relative;
            top: 50px;
        }

        .panel-heading {
            background-color: #337ab7;
            color: white;
            text-align: center;
        }

        .panel-body {
            padding: 20px;
        }

        .form-control {
            margin-bottom: 10px;
            font-size: 16px;
        }

        #tishi {
            margin-top: 10px;
        }
    </style>
</head>
<body>

<div id="header"></div>
<div style="padding-top: 70px;"></div>
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

<div class="col-xs-6 col-md-offset-3">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">Edit Profile</h3>
        </div>
        <div class="panel-body">
            <form method="post" action="reader_edit_profile_do" id="editProfile">
                <div class="form-group">
                    <label for="oldPasswd" style="font-size: 16px;">Old Password</label>
                    <input type="password" id="oldPasswd" name="oldPasswd" class="form-control" placeholder="Old Password">
                </div>
                <div class="form-group">
                    <label for="newPasswd" style="font-size: 16px;">New Password</label>
                    <input type="password" id="newPasswd" name="newPasswd" class="form-control" placeholder="New Password">
                </div>
                <div class="form-group">
                    <label for="reNewPasswd" style="font-size: 16px;">Confirm New Password</label>
                    <input type="password" id="reNewPasswd" name="reNewPasswd" class="form-control" placeholder="Confirm New Password">
                </div>
                <em id="tishi" style="color: red"></em>
                <div class="form-group">
                    <input type="submit" value="Submit" class="btn btn-primary btn-block">
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    $(document).keyup(function () {
        if ($("#newPasswd").val() != $("#reNewPasswd").val() && $("#newPasswd").val() != "" && $("#reNewPasswd").val() != "" && $("#newPasswd").val().length == $("#reNewPasswd").val().length) {
            $("#tishi").text("New passwords do not match, please check!");
        } else {
            $("#tishi").text("");
        }
    })

    $("#editProfile").submit(function () {
        if ($("#oldPasswd").val() == '' || $("#newPasswd").val() == '' || $("#reNewPasswd").val() == '') {
            $("#tishi").text("Please fill in all fields!");
            return false;
        } else if ($("#newPasswd").val() != $("#reNewPasswd").val()) {
            $("#tishi").text("New passwords do not match, please check!");
            return false;
        }
    })
</script>

</body>
</html>
