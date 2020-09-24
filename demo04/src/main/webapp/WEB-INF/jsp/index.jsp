<%--
  Created by IntelliJ IDEA.
<<<<<<< HEAD
  User: shiyi
  Date: 2020/9/24
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<%@ page contentType="text/html;charset=UTF-8" %>

<html>
<head>
    <title>Title</title>
</head>

<script src="/statics/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="/statics/js/list.js"></script>
<body>
<form action="/" method="post">
    <table border="1" style="width:900px;height:300px;">

        <tr align="center" style="font-weight: bold;background-color:#88BEFE;">
            <td>书名</td>
            <td>作者</td>
            <td>出版社</td>
            <td>出版日期</td>
            <td>页数</td>
            <td>价格</td>
            <td>内容摘要</td>
            <td>操作</td>
        </tr>
        <c1:forEach items="${pageInfo}" var="item">
            <tr align="center">
                <td>${item.name }</td>
                <td>${item.author }</td>
                <td>${item.publish }</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd" value="${item.publishdate}" type="both"/></td>
                <td>${item.page }</td>
                <td>${item.price }</td>
                <td>${item.content }</td>
                <td><a href=" ">修改</a>  ||  <a href="javascript:void(0)" onclick="del(${item.id})">删除</a></td>
            </tr>
        </c1:forEach>
    </table>
    <table class="table" width="800" border="1" align="center">
        <tr align="center">
            <td class="zong">1</td>
            <td class="mei">1</td>
            <td><a href="javascript:void(0)" class="shou">首页</a></td>
            <td><a href="javascript:void(0)" class="shang">上一页</a></td>
            <td class="ye">1/1</td>
            <td><a href="javascript:void(0)" class="xia">下一页</a></td>
            <td><a href="javascript:void(0)" class="wei">尾页</a></td>
        </tr>
    </table>

</form>

<body>
<h1>${UserSession.nickname}</h1>

</body>
</html>
