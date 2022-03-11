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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">
        <title>Select Campus</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
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
                    <button type="submit" class="btn btn-primary">Next</button>
                </form>
            </div>
        </div>
    </body>
</html>
