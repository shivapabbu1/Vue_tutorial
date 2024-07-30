<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Student</title>
</head>
<body>
    <h2>Create New Student</h2>
    <form:form action="saveStudent" modelAttribute="student" method="post">
        <div>
            <label>Name:</label>
            <form:input path="name" />
        </div>
        <div>
            <label>Email:</label>
            <form:input path="email" />
        </div>
        <div>
            <input type="submit" value="Save" />
        </div>
    </form:form>
    <a href="/">Back</a>
</body>
</html>
