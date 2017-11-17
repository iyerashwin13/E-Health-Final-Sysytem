
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
        <link rel="stylesheet" href="assets/css/style.css">
                <script src="gen_validatorv4.js" type="text/javascript"> </script>
                
<!--                 <script type="text/javascript">

			function showlocation() {
				
				navigator.geolocation.getCurrentPosition(callback);
			}

			function  callback(position) {
				alert("getting location")
				document.getElementById('txt1').value=position.coords.longitude;
				document.getElementById('txt2').value=position.coords.latitude;

				alert(position.coords.longitude)
				alert(position.coords.latitude)
				alert('done');
				document.getElementById('1').submit();
			}
                </script>
 -->
    </head>

    <body>

        <div class="header">
            <div class="container">
                <div class="row">
                    <div class="logo span4">
                        <h1><a href="index.jsp">  <span class="red">E-Health</span></a></h1>
                    </div>
                   
                </div>
            </div>
        </div>

        <div class="register-container container">
            <div class="row">
                <div class="register span6">
                    <form action="InsertHospital.html" name="myform4" method="post" id="1" enctype="multipart/form-data">
                        <h2>REGISTER <span class="red"><strong>E-Health</strong></span></h2>
                        
                        <label for="hospRegNum">Registration Number</label>
                        <input type="number" id="hospRegNum" name="hospRegNum" placeholder="Registration Number" min=5 required="required">
                        
                        <label for="hospName">Hospital Name</label>
                        <input type="text" id="hospName" name="hospName" placeholder="Enter Hospital Name" required="required">
                                        
                        <label for="hospAdd">Hospital Address</label>
                        <input type="text" id="hospAdd" name="hospAdd" placeholder="Enter Hospital Address" required="required">
  
                        <label for="hospCity">City</label>
                        <input type="text" id="hospCity" name="hospCity" placeholder="City" required="required">
  
                        <label for="area">Area</label>
                        <input type="text" id="area" name="area" placeholder="Hospital Area" required="required">
  							
  						 <label for="area">Pin Code</label>
                        <input type="number" id="pinCode" name="pinCode" placeholder="Hospital Pin Code" required="required"  min=6>
  
                         <label for="specialization">Specialization</label>
                         <input type="text" id="spec" name="spec" placeholder="Hospital Specialization" required="required">
                             
                        <label for="hContact">Contact Number </label>
                        <input type="number" id="hContact" name="hContact" placeholder="Hospital Contact Number" required="required" min=10>
                        
                        <label for="email">E-Mail</label>
                        <input type="email" id="email" name="email" placeholder="E-Mail" required="required">
                        
                        <label for="">Password</label>
                        <input type="password" id="password" name="password" placeholder="Password" required="required">
                        
                        <label for="">Upload Image</label>
                        <input type="file" id="image" name="image" accept="image/*" placeholder="Image" >

						<input type="hidden" name="longitude" id="txt1"> <br>
						<input type="hidden" name="latitude" id="txt2"> <br>
						                         
                        <button type="submit" value="REGISTER" >REGISTER</button>
                        
                        <br><hr>
						Back to<a href="HospitalLogin.jsp" class="links"> Login Page</a>
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

