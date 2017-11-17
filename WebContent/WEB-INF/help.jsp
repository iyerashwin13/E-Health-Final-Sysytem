
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
                            <a href="plogin.jsp" class="scroll">
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
          <div class="panel-body">1.On the <a href="index.jsp">Index page</a> click on Login/Signup .<br/>
                                2.Select the type as Patient,Doctor or Hospital.<br/>
                                3.On the Login page click on Register.<br>
                                4.Fill the details and hit Register button,You are now registered to E-Health.<br/>

</div>
      </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#htlogin">2.How to login</a>
        </h4>
      </div>
      <div id="htlogin" class="panel-collapse collapse">
          <div class="panel-body">1.Goto <a href="index.jsp">Index page</a>, Click on Login / Signup.<br/>
                                 2.Select your type as Patient,Doctor or Hospital.<br/>
                                 3.Enter E-Mail and password.<br/>
                                 4.Click on Login button, You are now logged in.
 </div>
    </div>
    <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#serhosp">3.How to search a hospital</a>
        </h4>
      </div>
      <div id="serhosp" class="panel-collapse collapse">
        <div class="panel-body">
                                  1.You Search First City
                                  2. After That we found number of hospitals in city
                                  3. You can view area which available all hospital List
        </div>
    </div>
      
      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#BookAppo">4.How to book a Appointment</a>
        </h4>
      </div>
      <div id="BookAppo" class="panel-collapse collapse">
          <div class="panel-body">1.Login using your User name and Password on <a href="plogin.jsp"> Login page</a>.<br/>
                                   2.Goto <a href="PatientBookAppointment.jsp">Book Appointment</a>, In the Appointment option.<br/>
                                   3.Enter Doctor ID,And hit BOOK NOW.<br/>
                                   4.Enter the disease or Symptoms and click on Book Appointment.<br/>
                                   5.Select Date and hit BOOK NOW button.<br/>
                                   
        </div>
    </div>
      
      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#confappo">5.Check Confirmed Appointment</a>
        </h4>
      </div>
      <div id="confappo" class="panel-collapse collapse">
        <div class="panel-body">1.Login using your User name and Password on <a href="plogin.jsp"> Login page</a>.<br/>
                                 2.After Login check the Confirmed Appointment blog on the Dashboard.<br/>
                                 3.Also you can check the same from <a href="PatientBookAppointment.jsp"> Appointment History</a> in the Appointment option .<br/>
                                 
        </div>
    </div>
      <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#AddHis">6.Add Family History</a>
        </h4>
      </div>
      <div id="AddHis" class="panel-collapse collapse">
        <div class="panel-body"> 
        
        </div>
    </div>
  </div> 
</div>

     
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#LabRepo">7.Check Lab Report</a>
        </h4>
      </div>

     
            
             <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#cmed">8.Check Current Medication</a>
        </h4>
      </div>
      <div id="cmed" class="panel-collapse collapse">
        <div class="panel-body">
                            1.Login using your User name and Password on <a href="Patientlogin.jsp"> Login page</a>.<br/>
                            2.Click on Medication and in that click on <a href="PatientPrescription.jsp"> Prescriptions </a>.
  </div>
    </div>
     
             <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#dcheckapp">9.Check Appointment List</a>
        </h4>
      </div>
      <div id="dcheckapp" class="panel-collapse collapse">
        <div class="panel-body">
                                   1.Login using your User name and Password on <a href="Patientlogin.jsp"> Login page</a>.<br/>
                                    2.Appointments for same day are on the right corner of Dasboard.<br/>
                                    3.Also you can check the same from <a href="DoctorAppointmentList.jsp">Appointment List</a> option in Appointment.<br/>
                                    4.To approve an Appointment Request goto Requested Appointment</a> option in Appointment.<br/>
                                    
       
        </div>
    </div>
     
             <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#givpres">10. Give Prescription</a>
        </h4>
      </div>
      <div id="givpres" class="panel-collapse collapse">
        <div class="panel-body">
                               1.Login using your User name and Password on <a href="Patientlogin.jsp"> Login page</a>.<br/>
                                2.Click prescription option in the left navigation tab.<br/>
                                 3.Enter Patient Id,Patient Name and other details and hit the ADD button.<br/>
                                 4.To add another follow the same process.<br/>
        </div>
    </div>
     
             <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#tdapp">11.Add Lab Report</a>
        </h4>
      </div>
      <div id="tdapp" class="panel-collapse collapse">
        <div class="panel-body">
             1.Login using your User name and Password on <a href="Patientlogin.jsp"> Login page</a>.<br/>
              2.Click on Report option in left navigation bar.<br/>
              3.Click on ADD Report,Enter Patient User Name,Patient Name,Description,Date.<br/>
              4.Upload the file and hit the ADD button.<br/>
        </div>
    </div>
     
             <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#Childwithfever">12.Update Patient History</a>
        </h4>
      </div>
      <div id="Childwithfever" class="panel-collapse collapse">
        <div class="panel-body">1.Login using your User name and Password on <a href="Patientlogin.jsp"> Login page</a>.<br/>
            2.Click on <a href="hUpdatePatHist.jsp"> Patient History</a> option in left sidebar .<br/>
            3.Search the patient using Patient Id.<br/>
            4.Add Major illness or/and Add surgeries.
        </div>
    </div>
     
             <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#addplan">13.Add Treatment Plan</a>
        </h4>
      </div>
      <div id="addplan" class="panel-collapse collapse">
        <div class="panel-body">1.Login using your User name and Password on <a href="Patientlogin.jsp"> Login page</a>.<br/>
                                2.Click on <a href="hTreatmentPlan.jsp"> Treatment Plan </a> in the left navigation bar.<br/>
                               3.Search Patient using Patient Id.<br/>
                               4.Add Treatment for,Start and End date, Notes and Advice Choose Doctor Name.<br/>
        </div>
    </div>
     
             <div class="panel panel-default">
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#bill">14.Generate Bill</a>
        </h4>
      </div>
      <div id="bill" class="panel-collapse collapse">
        <div class="panel-body">1.Login using your User name and Password on <a href="plogin.jsp"> Login page</a>.<br/>
            2.Click on <a href="hBilling.jsp">Patient Billing</a> in left navigation bar.<br/>
                                 3.Enter Patient name,Charge for, Dates and Amount.<br/>
                                 4.Click ADD to add and PRINT to take the printout.<br/>
        </div>
    </div>
     
     
            
      <div class="panel-heading">
        <h4 class="panel-title">
          <a data-toggle="collapse" data-parent="#accordion" href="#Event">15.Generate Events</a>
        </h4>
      </div>
      <div id="Event" class="panel-collapse collapse">
        <div class="panel-body">1.Login using your User name and Password on <a href="plogin.jsp"> Login page</a>.<br/>
            2.Click on <a href="hEvent.jsp">Generate Events</a> in left navigation bar .<br/>
                                 3.Add Notification Labeland Description, Also add Date and Image.<br/>
                                 4.To add Click on ADD and PRINT to take the Printout.<br/>
                                 5.This will notify all the Patient and Doctors under your Hospital.<br/>
        </div>
    </div>
     
     
             </div></div>
        
        
        
        <!-- -->
            
        </div>
        
    
    </div>

</div>






        
</body>
</html>
