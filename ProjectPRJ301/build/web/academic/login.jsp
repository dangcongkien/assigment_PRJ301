<%-- 
    Document   : login
    Created on : Mar 9, 2022, 7:55:36 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
              crossorigin="anonymous">
        <link href="../style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="container-login">
                <h4 class="error">${error}</h4>
                <h1>Login</h1>
                <form action="login" method="POST">
                    <div class="form-group">
                        <label>Username</label>
                        <input type="text" class="form-control" placeholder="Enter username" name="username"/>
                    </div>
                    <div>
                        <label>Password</label>
                        <input type="password" class="form-control" placeholder="Enter password" name="password"/>
                    </div>
                    <button type="submit" class="btn-login btn btn-primary">Login</button>
                </form>
            </div>
        </div>
        
    </body>
</html>
