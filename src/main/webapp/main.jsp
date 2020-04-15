<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>main</title>
</head>
<body>
    <h1>this is main page.</h1>

    <shiro:authenticated>i am login successfully.</shiro:authenticated><p />

    <shiro:hasRole name="manager">i am a manager</shiro:hasRole><p />
    <shiro:hasRole name="guest">i am a guest</shiro:hasRole><p />


    <shiro:user>
        welcome back <shiro:principal/>!
        Not <shiro:principal/>? Click <a href="index.html">here</a> to login
    </shiro:user><p />



    <h3>拥有的权限：</h3>
    <shiro:hasPermission name="select">i can select</shiro:hasPermission><p />
    <shiro:hasPermission name="delete">i can delete</shiro:hasPermission><p />
    <shiro:hasPermission name="insert">i can insert</shiro:hasPermission><p />
    <shiro:hasPermission name="update">i can update</shiro:hasPermission><p />
</body>
</html>
