

<%--Make your login servlet actually log in users from your database--%>

<%--There are some comments marked TODO inside the LoginServlet to help you get started.--%>

<%--Don't allow raw user input in your HTML pages. Escape anything that is coming from our users.--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Adlister!</h1>
    </div>
</body>
</html>
