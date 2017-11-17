		
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Statement"%>
<%-- <%@page import="model.Database"%> --%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">

   

    <head>

        <meta charset="utf-8">
        <title>Registration</title>
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
                    <form action="InsertDoctor.html" name="myform10" method="post" enctype="multipart/form-data">
                        <h2>REGISTER <span class="red"><strong>E-Health</strong></span></h2>
                        
                        
                        <label for="doctRegNo">Doctor Registration No</label>
                        <input type="number" id="doctRegNo" name="doctRegNo" placeholder="Doctor Registration Number" required="required" min=5>
                        
                        <label for="doctName">Doctor Name</label>
                        <input type="text" id="doctName" name="doctName" placeholder="Enter Doctor FullName" required="required">
                        
                        
                        <label for="dhospName">Hospital Name</label> 
                        <Select name="hospRegNum"> 
                                                    <option value="">Choose Hospital</option>
                                             <% 
                                                       try
                                                       {
														Class.forName("com.mysql.jdbc.Driver");
														Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
                                                           
                                                           Statement stmt1 = con1.createStatement();
                                                           String str1 = "select * from hospital";
                                                           ResultSet rs1 = stmt1.executeQuery(str1);
                                                           while(rs1.next())
                                                           {
                                                               %>                              
                              
                              
                       									       <option value="<%=rs1.getString(1)%>" %><%=rs1.getString(2)%></option>
                       
                                                           <%
                                                            }
                                                           %>
                                                           <%
                                                        }catch(Exception e)
                                                        {
                                                           
                                                       }
                                                       %>
                                                       
                                                  </Select> 
                        
                        <label for="">Degree In</label>
 							<select name="degreeIn">
 							   <option value="M.D.">M.D.</option>
 							   <option value="M.B.B.S">M.B.B.S.</option>
 							   <option value="B.M.S">B.M.S</option>
 							   <option value="B.H.M.S">B.H.M.S.</option>
 							   <option value="DO">DO</option>
 							   <option value="B.M.B.S.">B.M.B.S.</option>
 
 							</select>
 
                        <label for="">Specialist In</label>
 							<select name="specIn">
 							   <option value="Audiology & Speech Therapy">Audiology & Speech Therapy</option>
 							   <option value="Ayurvedic">Ayurvedic</option>
 							   <option value="Cardiologist">Cardiologist</option>
 							   <option value="Dentist">Dentist</option>
 							   <option value="Diabetologist">Diabetologist</option>
 							   <option value="Pediatrics Cardiac Surgeon">Pediatrics Cardiac Surgeon</option>
 							   <option value="Ophthalmology">Ophthalmology</option>
 							   <option value="Orthopedic Surgeon">Orthopedic Surgeon</option>
 
 							</select>
 
                        
                        <label for="">Mobile Number</label>
                        <input type="number" id="mobnum" name="mobnum" placeholder="Mobile Number" required="required" min=10>
                       
                       <label for="">Gender</label>
 							<select name="gender">
 							   <option value="Male">Male</option>
 							   <option value="female">Female</option>
 							</select>
 							
 						<label for="">Blood Group</label>
 							<select name="bdGroup">
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
 						
                        <label for="">E-Mail</label>
                        <input type="email" id="email" name="email" placeholder="E-Mail" required="required">
                        
                        <label for="">Password</label>
                        <input type="password" id="password" name="password" placeholder="Password" required="required">
                       
                        <label for="">Upload Photo</label>
                        <input type="file" id="image" name="image" accept="image/*" required="required">
                       
                       
                        <button type="submit">REGISTER</button>
                        <br><hr>
                          Back to<a href="DoctorLogin.jsp" class="links"> Login Page</a>
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

