<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit user</title>
</head>
<body>
<h2>Редактирование пользователя</h2>

<form action="${pageContext.request.contextPath}/users/update" method="post">
    <input type="hidden" name="id" value="${user.id}">

    Name: <input type="text" name="name" value="${user.name}" required><br><br>
    Surname: <input type="text" name="lastname" value="${user.lastname}" required><br><br>
    Age: <input type="number" name="age" value="${user.age}" required><br><br>

    <input type="submit" value="Update user">
</form>

<br>
<form action="${pageContext.request.contextPath}/users" method="get">
    <input type="submit" value="Back">
</form>

</body>
</html>