<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<h2>Список пользователей</h2>

<table border="1" cellpadding="5">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Lastname</th>
        <th>Age</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>

    <c:forEach var="u" items="${users}">
        <tr>
            <td>${u.id}</td>
            <td>${u.name}</td>
            <td>${u.lastname}</td>
            <td>${u.age}</td>
            <td>
                <form action="${pageContext.request.contextPath}/users/edit" method="get">
                    <input type="hidden" name="id" value="${u.id}">
                    <input type="submit" value="Edit">
                </form>
            </td>
            <td>
                <form action="${pageContext.request.contextPath}/users/delete" method="post">
                    <input type="hidden" name="id" value="${u.id}">
                    <input type="submit" value="Delete">
                </form>
            </td>
        </tr>
    </c:forEach>
</table>

<h2>Добавить пользователя</h2>

<form action="${pageContext.request.contextPath}/users/add" method="post">
    Name: <input type="text" name="name" required><br><br>
    Lastname: <input type="text" name="lastname" required><br><br>
    Age: <input type="number" name="age" required><br><br>
    <input type="submit" value="Add user">
</form>

</body>
</html>