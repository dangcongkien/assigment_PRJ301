<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
              crossorigin="anonymous">
        <link href="../style.css" rel="stylesheet" type="text/css"/>
    </head>
    
    <body>
        <div class="container">
            <div class="container-form">
                <h4 class="error">${error}</h4>
                <h1>Register Form</h1>
                <hr/>
                <form action="register" method="POST">
                    <div class="form-group">
                        <label>First name</label>
                        <input type="text" class="form-control" placeholder="Enter first name" name="firstName"/>
                    </div>
                    <div>
                        <label>Last name</label>
                        <input type="text" class="form-control" placeholder="Enter last name" name="lastName"/>
                    </div>
                    <div>
                        <label>Date of birth</label>
                        <input type="date" class="form-control" name="dob"/>
                    </div>
                    <div>
                        <label>Gender</label>
                        <div>
                            <input type="radio" name="gender" value="1" class="gender"/> Male
                            <input type="radio" name="gender" value="0" class="gender"/> Female
                        </div>
                    </div>
                    <div class="form-group" >
                        <label>Address</label>
                        <input type="text" class="form-control" placeholder="Enter address" name="address"/>
                    </div>
                    <div>
                        <label>Telephone number</label>
                        <input type="text" class="form-control" placeholder="Enter telephone number" name="phoneNumber"/>
                    </div>
                    <div>
                        <label>Email</label>
                        <input type="email" class="form-control" placeholder="Enter email" name="email"/>
                    </div>
                    <div class="form-group">
                        <label>Specialized</label>
                        <select class="form-control" name="specialized">
                            <option value="4">Software engineering</option>
                            <option value="5">Business administration</option>
                            <option value="6">Artificial intelligence</option>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary btn-register">register</button>
                </form>
            </div>
        </div>
    </body>
</html>
