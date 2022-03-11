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
        <title>Information Register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">
        <link href="../style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="container-form">
                <h1>Information Register</h1>
                <hr>
                <form action="inforregister" method="POST">
                    <div class="form-group">
                        <label>First Name</label>
                        <input type="text" class="form-control" value="${student.firstName}" name="firstName">
                    </div>
                    <div class="form-group">
                        <label>Last Name</label>
                        <input type="text" class="form-control" value="${student.lastName}" name="lastName">
                    </div>
                    <div class="form-group">
                        <label>Date Of Birth</label>
                        <input type="date" class="form-control" value="${student.dob}" name="dob">
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
                            <input type="text" class="form-control" value="${student.address}" name="address">
                    </div>
                    <div class="form-group">
                        <label>Phone number</label>
                        <input type="text" class="form-control" value="${student.phoneNumber}" name="phoneNumber">
                    </div>
                    <div class="form-group">
                        <label>Email</label>
                        <input type="email" class="form-control" value="${student.email}" name="email">
                    </div>
                    <div class="form-group">
                        <label>Specialized</label>
                        <select class="form-control" name="specialized">
                            <option value="SE" <c:if test="${student.specializedId == 4}">selected</c:if>>Software engineering</option>
                            <option value="AI" <c:if test="${student.specializedId == 5}">selected</c:if>>Artificial intelligence</option>
                            <option value="BA" <c:if test="${student.specializedId == 6}">selected</c:if>>Business administration</option>
                            </select>
                        </div>
                        <br>
                        <h3>Acadamic Staff</h3><hr>
                        <div class="form-group">
                            <label>Roll Number</label>
                            <input type="text" class="form-control" value="${campusName}${student.id}" name="rollNumber" disabled>
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
