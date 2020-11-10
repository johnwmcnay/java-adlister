<%--Refactor to use prepared statements--%>

<%--Refactor your MySQLAdsDao to use prepared statements. Test these changes and ensure everything still works.--%>

<%--Create an implementation for the Users interface--%>

<%--Create a class named MySQLUsersDao that implements Users. Add functionality to the DaoFactory class to return an instance of the users data access object.--%>

<%--Allow users to create an account in your application--%>

<%--Create a form for users registration named register.jsp.--%>
<%--Create a servlet named RegisterServlet and write the necessary logic.--%>
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
