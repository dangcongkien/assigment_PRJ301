<%-- 
    Document   : inforregister
    Created on : Mar 9, 2022, 10:01:00 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <div class="container-form">
                <h1>Information Register</h1>
                <hr>
                <form action="inforregister" method="POST">
                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" class="form-control input-student" value="${student.firstName}" name="firstName">
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" class="form-control input-student" value="${student.lastName}" name="lastName">
                    </div>
                    <div class="form-group">
                        <label>Date Of Birth</label>
                        <input type="date" class="form-control input-student" value="${student.dob}" name="dob">
                    </div>
                    <div class="form-group">
                        <label>Gender</label>
                        <div>
                            <input type="radio" name="gender" value="1" class="gender"<c:if test="${student.gender == true}">checked</c:if>> Male
                            <input type="radio" name="gender" value="0" class="gender"<c:if test="${student.gender == false}">checked</c:if>>Female
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Address</label>
                            <input type="text" class="form-control input-student" value="${student.address}" name="address">
                    </div>
                    <div class="form-group">
                        <label>Phone number</label>
                        <input type="text" class="form-control input-student" value="${student.phoneNumber}" name="phoneNumber">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control input-student" value="${student.email}" name="email">
                    </div>
                    <div class="form-group">
                        <label>Specialized</label>
                        <select class="form-control input-student" name="specialized">
                            <option value="SE" <c:if test="${student.specializedId == 4}">selected</c:if>>Software engineering</option>
                            <option value="AI" <c:if test="${student.specializedId == 5}">selected</c:if>>Artificial intelligence</option>
                            <option value="BA" <c:if test="${student.specializedId == 6}">selected</c:if>>Business administration</option>
                            </select>
                        </div>
                        <br>
                        <h3>Acadamic Staff</h3><hr>
                        <div class="form-group">
                            <label>Roll Number</label>
                            <input type="text" class="form-control input-student" value="${campusName}${student.id}" name="rollNumber" disabled>
                        </div>
                        
                        <div class="form-group">
                            <label>Member Code</label>
                            <input type="text" class="form-control"  name="membercode" value="${nameStudent}${specialized}${student.id}">
                        </div>
                        <div class="form-group">
                            <label>Enroll Date</label>
                            <input type="date" class="form-control"  name="enrolldate">
                        </div>
                        <div class="form-group">
                            <label>Mode</label>
                            <input type="text" class="form-control"  name="mode">
                        </div>
                        <input type="hidden" name="studentId" value="${student.id}"/>
                        <button type="submit" class="btn btn-success botton-academic" >Accept</button>
                        <button type="submit" class="btn btn-danger botton-academic btn-reject" formaction="RejectRegisterController">Reject</button>
                </form>
            </div>
        </div>
    </body>
</html>
