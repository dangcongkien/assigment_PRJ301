<%-- 
    Document   : selectcampus
    Created on : Feb 28, 2022, 9:20:50 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <title>JSP Page</title>
        <link href="../style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="container-form">
                <h4 class="error">${error}</h4>
                <h1>FPT University</h1>
                <hr/>
                <form action="campus" method="POST">
                    <div class="form-group">
                        <label>Select Campus</label>
                        <select class="form-control" name="campusId">
                            <option value="5">FU-Hòa Lạc</option>
                            <option value="6">FU-Hồ Chí Minh</option>
                            <option value="7">FU-Đà Năng</option>
                            <option value="8">FU-Cần Thơ</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primay my-botton">Next</button>
                </form>
            </div>
        </div>
    </body>
</html>
