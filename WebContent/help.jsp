
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="model.Database"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


        <title>E-Health | Home :: </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Anesthesia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!meta charset utf="8">

    <!--owlcss-->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <!--bootstrap-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--coustom css-->
    <link href="css/style_layout.css" rel="stylesheet" type="text/css"/>
    <!--default-js-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!--bootstrap-js-->
    <script src="js/bootstrap.min.js"></script>
    <!--script-->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <!--script-->
</head>
<body>

	 <div class="header_nav" id="home">
        <nav class="navbar navbar-default chn-gd">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand logo-st" href="index.jsp">E-Health</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="index.jsp" class="scroll">
                                <span class="glyphicon glyphicon-home icn_pos hm" aria-hidden="true"></span><br>
                                Home
                            </a>
                        </li>

                        <li>
                            <a href="PatientLogin.jsp" class="scroll">
                                <span class="glyphicon glyphicon-user icn_pos hm2" aria-hidden="true"></span><br>
                                Patient Login
                            </a>
                        </li>
                        <!---->
                        <li>	
                            <a href="help.jsp" class="scroll">
                                <span class="glyphicon glyphicon-envelope icn_pos" aria-hidden="true"></span><br>
                                Help
                            </a>

                    </ul>
                </div><!-- /.navbar-collapse -->
                <div class="clearfix"></div>
            </div><!-- /.container-fluid -->
        </nav>
	</div>
    <br>        
<center></center>

<center>
     <br><br>
     <h2>User Help</h2>
</center>
     <br><br>
    <div class="container">
    <div class="row ">
        
        <div class="col-md-8">
        <!-- -->
        <div class="container">
  
  <div class="panel-group" id="accordion">
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#htregister">1.How to Register</a>
        </h4>
      </div>
      <div id="htregister" class="panel-collapse collapse in">
          <div class="panel-body">1.On the <a href="index.jsp">Index page</a> select Patient, Doctor or Hospital.<br/>
                             	3.Click Register if you don't have an account.<br>
                                4.Fill the details in order to register.<br/>

		  </div>
      </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#htlogin">2.How to Login</a>
        </h4>
      </div>
      <div id="htlogin" class="panel-collapse collapse">
          <div class="panel-body">1.Goto <a href="index.jsp">Index page</a>, select Patient, Doctor or Hospital.<br/>
                                 3.Enter E-mail id and Password.<br/>
                                 4.Click on Login button.
	      </div>
     </div>
    </div>
    
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#serhosp">3.How to search a Hospital</a>
        </h4>
      </div>
      
      <div id="serhosp" class="panel-collapse collapse">
        <div class="panel-body">
                                  1.Enter the name of City to search nearby hospitals. <br/>
                                  2.Select a particular area. <br/>
                                  3.Drop down list will appear with all the hospitals listed. <br/>
        </div>
      </div>
    </div>
      
      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#BookAppo">4.How to book an Appointment</a>
        </h4>
      </div>
      <div id="BookAppo" class="panel-collapse collapse">
          <div class="panel-body">1.Login with your credentials on <a href="Patientlogin.jsp"> Login page</a>.<br/>
                                   2.Click dropdown list from Appointment and select Book Appointment<br/>
                                   3.Search and select Hospital.<br/>
                                   4.Select Doctor and click Submit.<br/>
                                  
          </div>                    
        </div>
    </div>
      
      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#confappo">5.Check Confirmed Appointment</a>
        </h4>
      </div>
      <div id="confappo" class="panel-collapse collapse">
        <div class="panel-body">1.Login with your credentials on <a href="Patientlogin.jsp"> Login page</a>.<br/>
                                 2.Click dropdown list of Appointment and select Appointment History.<br/>                             
        </div>
      </div>  
    </div>       
            
     <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#cmed">6.Check Current Medication</a>
        </h4>
      </div>
      <div id="cmed" class="panel-collapse collapse">
        <div class="panel-body">
                            1.Login with your credentials <a href="Patientlogin.jsp"> Login page</a>.<br/>
                            2.Click Medication and select Prescriptions <br/>.
      </div>
     </div>
    </div>
    
      <div class="panel panel-default">
       <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#givpres">7. Generate Prescription for Doctors</a>
        </h4>
      </div>
      <div id="givpres" class="panel-collapse collapse">
        <div class="panel-body">
                               1.Login with your credentials on<a href="Patientogin.jsp"> Login page</a>.<br/>
                                2.Click Prescription from the dropdown list and select Prescription.<br/>
                                 3.Enter details and hit add.<br/>
                                 4.To add another follow the same process.<br/>
        </div>
       </div>
     </div>
           
     
     
       </div></div>
        
        
        
      <!-- -->
            
     </div>
        
    
   </div>

</div>






        
</body>
</html>
