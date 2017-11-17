<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <title>Register</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <script src="gen_validatorv4.js" type="text/javascript"> </script>
    </head>

    <body>

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="logo span4">
                        <h1><a href="index.jsp"><span class="red">E-Health</span> </a></h1>
                    </div>

                </div>
            </div>
        </div>

        <div class="register-container container">
            <div class="row">
                <div class="register span6">
                    <form name="myform" action="sign.html" method="post" enctype="multipart/form-data">
                        <h2>REGISTER<span class="red"><strong> E-Health</strong></span></h2>
                        <label for="">Name</label>
                        <input type="text" id="firstname" name="fname" placeholder="Enter Full Name" required="required">
                        
                        <label for="">E-Mail</label>
                        <input type="email" id="email" name="email" placeholder="Enter E-mail" required="required">
                        
                        <label for="mobnum">Mobile Number</label>
                        <input type="number" id="mobnum" name="mobnum" placeholder="Enter Mobile Number" min=10 required="required">
                        
                        <label for="">Gender</label>
 							<select name="gender">
 							   <option value="male">MALE</option>
 							   <option value="female">Female</option>
 							</select>
 							
 						<label for="">Blood Group</label>
 							<select name="bloodGroup">
 							   <option value="O+">O+</option>
 							   <option value="O-">O-</option>
 							   <option value="A+">A+</option>
 							   <option value="A-">A-</option>
 							   <option value="B+">B+</option>
 							   <option value="B-">B-</option>
 							   <option value="AB+">AB+</option>
 							   <option value="AB-">AB-</option>
 							    
 							</select>
 											
                        <label for="">Marital Status</label>
 							<select name="marStatus">
 							   <option value="Married">Married</option>
 							   <option value="Single">Single</option>
 							   <option value="divorce">Divorce</option>
 							</select>
 							
                        <label for="">Password</label>
                        <input type="password" id="password" name="password" placeholder="Enter Password" required="required">
                       
                         <label for="">Upload Photo</label>
                        <input type="file" id="image" name="image" accept="image/*" required="required">
                       
                        
                        <button type="submit">REGISTER</button>
                        <br><hr>
                        Back to<a href="PatientLogin.jsp" class="links"> Login Page</a>
                    </form>
        
                </div>
            </div>
        </div>

        <!-- Javascript -->
        <script src="js/jquery-1.8.2.min.js"></script>
        <script src="assets/bootstrap/js/bootstrap.min.js"></script>
        <script src="js/jquery.backstretch.min.js"></script>
        <script src="js/scripts.js"></script>

    </body>
</html>