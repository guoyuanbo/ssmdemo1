<%@ page language="java" pageEncoding="utf-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head>
    <title>企业信息展示</title>

    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/jslib/jquery-2.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/jslib/bootstrap.min.js"></script>

    <script type="text/javascript">
        function del() {
            var msg = "您确定要删除此条数据吗？";
            if (confirm(msg) == true) {
                return true;
            } else {
                return false;
            }
        }
    </script>

</head>


<body>
<nav class="navbar navbar-default" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                class="icon-bar"></span><span class="icon-bar"></span></button>
        <a class="navbar-brand" href="${pageContext.request.contextPath}/emp/list">首页</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
        <ul class="nav navbar-nav">
            <li class="active">
                <a href="#">连接</a>
            </li>
            <li>
                <a href="#">帮助</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">注册/登陆<strong class="caret"></strong></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">注册</a>
                    </li>
                    <li>
                        <a href="#">登陆</a>
                    </li>
                    <li>
                        <a href="#">安全控件下载</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">友情链接</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">报告错误</a>
                    </li>
                </ul>
            </li>
        </ul>
        <form class="navbar-form navbar-left" role="search">
            <div class="form-group">
                <input type="text" class="form-control"/>
            </div>
            <button type="submit" class="btn btn-default">搜索</button>
        </form>
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="#">分享本站</a>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">关于本站<strong class="caret"></strong></a>
                <ul class="dropdown-menu">
                    <li>
                        <a href="#">说明</a>
                    </li>
                    <li>
                        <a href="#">联系方式</a>
                    </li>
                    <li>
                        <a href="#">位置</a>
                    </li>
                    <li class="divider">
                    </li>
                    <li>
                        <a href="#">合作渠道</a>
                    </li>
                </ul>
            </li>
        </ul>
    </div>
</nav>

<h2 class="text-center text-info">中国银行BPM系统
    <button type="button" class="btn btn-link">Beta 1.0</button>
</h2>

<div class="row clearfix" style="margin-bottom: 2%;"></div>

<table class="table table-hover table-striped table-bordered">
    <thead>
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>工资</th>
        <th>操作</th>
        <th><a href="${pageContext.request.contextPath }/emp/toAdd">添加</a></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${emps}" var="emp">
        <tr>
            <td>${emp.id}</td>
            <td>${emp.name}</td>
            <td>${emp.salary}</td>
            <td><a href="${pageContext.request.contextPath }/emp/load/${emp.id}">修改</a></td>
            <td><a href="${pageContext.request.contextPath }/emp/remove/${emp.id}"  onclick="return del()">删除</a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>