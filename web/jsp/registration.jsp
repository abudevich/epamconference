<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 22.01.2018
  Time: 15:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html><head><title>Registration</title></head>
<body>
<form name="registrationForm">
    <input type="hidden" name="command" value="registration" />
    Login:<br/>
    <input type="text" name="login" value=""/>
    <br/>Password:<br/>
    <input type="password" name="password" value=""/>
    <br/>Email:<br/>
    <input type="text" name="email" value=""/>
    <br/>
    <input type="submit" value="Registration" formaction="controller" formmethod="post"/>
</form><hr/>
</body></html>
