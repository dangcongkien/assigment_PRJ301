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
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <div>
                <!--<h4 class="error">${error}</h4>-->
                <h1>FPT University</h1>
                <hr/>
                <form action="" method="POST">
                    <div>
                        <label>Select Campus</label>
                        <select name="campusId">
                            <option value="8">FU-Hòa Lạc</option>
                            <option value="9">FU-Hồ Chí Minh</option>
                            <option value="10">FU-Đà Năng</option>
                            <option value="11">FU-Cần Thơ</option>
                        </select>
                    </div>
                    <button type="submit">Next</button>
                </form>
            </div>
        </div>
    </body>
</html>
