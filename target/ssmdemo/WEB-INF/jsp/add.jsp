<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
    <title>添加页面</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap.min.js"></script>

    <style type="text/css">
        .col-center-block {
            margin-left: 40%;
            margin-top: 25%;
        }

    </style>
</head>

<body>
<div class="container">
    <div class="col-xs-4 col-md-3 col-center-block">
        <form class="form-horizontal" role="form" id="form1" action="${pageContext.request.contextPath}/emp/doAdd"
              method="post">
            <div class="input-group">
                <span class="input-group-addon">姓名</span>
                <input type="text" class="form-control" placeholder="请输入姓名" required autofocus name="name">
            </div>
            <div class="input-group">
                <span class="input-group-addon">工资</span>
                <input type="text" class="form-control" placeholder="请输入工资" required name="salary">
            </div>
            <button class="btn btn-lg btn-primary btn-block"
                    onclick="document.getElementById('form1').submit()">提交
            </button>
        </form>
    </div>
</div>
</body>
</html>