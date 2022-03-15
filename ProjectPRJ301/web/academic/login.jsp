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
        <title>Login</title>
        <link rel="icon" href="../img/LogoFPT.jpg">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">
        <link href="../style.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <div class="container">
            <div class="container-login">
                <h4 class="error">${error}</h4>
                
                <div class="heading">
                    <h1>Login</h1>
                    <img src="../img/LogoFPT.jpg" alt="FPT logo" class="img-heading"/>
                </div>
                
                
                
                <form action="login" method="POST">
                    <div class="form-group form-general">
                        <label>Username</label>
                        <input type="text" class="form-control" placeholder="Enter username" name="username"/>
                    </div>
                    <div class="form-group form-general">
                        <label>Password</label>
                        <input type="password" class="form-control" placeholder="Enter password" name="password"/>
                    </div>
                    <button type="submit" class="btn btn-primary btn-login">Login</button>
                </form>
            </div>
        </div>
        
    </body>
</html>
