<%--
  Created by IntelliJ IDEA.
  User: jwmcnay
  Date: 11/3/20
  Time: 1:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Please login</title>
</head>
<body>

<%
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
    boolean isNull = (userName == null || password == null);

    request.setAttribute("userName", userName);
    request.setAttribute("password", password);
    request.setAttribute("isNull", isNull);

    if (!isNull) {
        request.setAttribute("condition", userName.equalsIgnoreCase("admin") && password.equals("password"));
    } else {
        request.setAttribute("condition", false);
    }
%>

<form method="post">
    <label for="userName">Name:</label>
    <input name="userName" id="userName" type="text" value="${userName}" autofocus>
    <label for="password">Password:</label>
    <input name="password" id="password" type="password">
    <input type="submit">
</form>

    <c:if test="${condition}">
        <meta http-equiv="Refresh" content="0; url='/profile.jsp'" />
    </c:if>
    <c:if test="${!isNull}">
        <h4 style="color: red;">Login failed!</h4>
    </c:if>
</body>
</html>
