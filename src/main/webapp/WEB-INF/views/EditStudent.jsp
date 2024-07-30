<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Student</title>
</head>
<body>
    <h2>Edit Student</h2>
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
            <input type="submit" value="Update" />
        </div>
    </form:form>
    <a href="/">Back</a>
</body>
</html>
