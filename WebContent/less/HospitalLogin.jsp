

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css">

        

    </head>

    <body>

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="logo span4">
                        <h1><a href="index.jsp"> <span class="red">E-Health</span></a></h1>
                    </div>
                  
                </div>
            </div>
        </div>

        <div class="register-container container">
            <div class="row">
                <div class="register span6">
                    <form action="ValidateHospital.html" method="post">
                        <h2>LOGIN <span class="red"><strong>E-Health</strong></span></h2>
                        
                        <label for="huname">Hospital Id</label>
                        <input type="number" id="huname" name="huname" placeholder="Enter Username">
                        
                        <label for="password">Password</label>
                        <input type="password" id="password" name="password" placeholder="Enter Password">
                        <button type="submit">LOGIN</button>
                        
                        <br><hr>
                        For new Account<a href="HospitalRegistration.jsp" class="links"> Register here</a>
                    </form>
                   
                </div>
            </div>
        </div>

        <!-- JavaScript -->
        <script src="js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/scripts.js"></script>

    </body>

</html>

