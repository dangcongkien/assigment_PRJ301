<%-- 
    Document   : listregister
    Created on : Mar 9, 2022, 8:49:58 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">
        <link href="../style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="container-form">
                <h1>List Student </h1>
                <nav class="navbar navbar-expand-lg navbar-light bg-light">
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item active">
                                <a class="nav-link" href="ShowListStudentRegisterServlet">Student Register<span class="sr-only">(current)</span></a>
                            </li>
                        </ul>
                    </div>
                </nav>
                <hr>
                <ul class="list-group">
                    <c:forEach var="student" items="${listStudents}">
                        <form action="ShowRegisterController" method="POST">
                            <li class="list-group-item">${student.firstName} ${student.lastName}
                                <input type="hidden" value="${student.id}" name="studentId" />
                                <button type="submit" class="btn btn-info">Check</button>
                            </li>
                        </form>
                    </c:forEach>
                                
                                            
                </ul>
            </div>
        </div>
    </body>
</html>
