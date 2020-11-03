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
    <c:if test="${param.userName.equalsIgnoreCase(\"admin\") && param.password.equals(\"password\")}">
        <meta http-equiv="Refresh" content="0; url='/profile.jsp'" />
    </c:if>
</head>
<body>

<form method="post">
    <label for="userName">Name:</label>
    <input name="userName" id="userName" type="text">
    <label for="password">Password:</label>
    <input name="password" id="password" type="password">
    <input type="submit">
</form>

</body>
</html>
