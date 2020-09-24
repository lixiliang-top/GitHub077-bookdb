<%--
  Created by IntelliJ IDEA.
  User: hp
  Date: 2020/9/24
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div align="center" style="background-color: aqua; width: 500px; height: 200px; margin-left: 700px; margin-top: 100px">
    <form action="/dologin" method="post">
        <table border="1" style="width: 300px; height: 100px;">
            <tr align="center">
                <td colspan="2"><h1>登录图书管理系统</h1></td>
            </tr>
            <tr>
                <td>用户名：</td>
                <td><input type="text" class="user" name="name"></td>
            </tr>
            <tr>
                <td>密码：</td>
                <td><input type="password" class="pwd" name="password"></td>
            </tr>
            <tr align="center">
                <td colspan="2"><input type="submit" value="登录"> </td>
            </tr>
        </table>
        <span>${error }</span>
    </form>
</div>
</body>
</html>
