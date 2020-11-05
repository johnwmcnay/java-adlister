<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ads</title>
</head>
<body>

    <c:forEach var="ad" items="${ads}">
        <h5>${ad.getTitle()}</h5>
        <p>${ad.getDescription()}</p>
        <hr>
    </c:forEach>
</body>
</html>
