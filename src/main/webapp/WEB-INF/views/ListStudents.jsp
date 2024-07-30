<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student List</title>
</head>
<body>
    <h2>Students</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="student" items="${listStudents}">
            <tr>
                <td>${student.id}</td>
                <td>${student.name}</td>
                <td>${student.email}</td>
                <td>
                    <a href="showFormForUpdate/${student.id}">Edit</a>
                    <a href="deleteStudent/${student.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="showNewStudentForm">Add New Student</a>
</body>
</html>
