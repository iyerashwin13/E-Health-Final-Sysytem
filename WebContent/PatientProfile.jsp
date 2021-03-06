<%@page import="java.sql.*,model.Database" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>E-Health </title>

  <!-- Bootstrap core CSS -->

  <link href="css/bootstrap.min.css" rel="stylesheet">

  <link href="fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="css/animate.min.css" rel="stylesheet">

  <!-- Custom styling plus plugins -->
  <link href="css/custom.css" rel="stylesheet">
  
  <script src="js/jquery.min.js"></script>
   <script src="gen_validatorv4.js" type="text/javascript"> </script>


</head>


<body class="nav-md">

  <div class="container body">


    <div class="main_container">

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

          <%
          String email=(String)session.getAttribute("email");
          if(email==null || email.length()==0) 
          { 
          			response.sendRedirect("index.jsp");
          }else{
          	%>

                        <div class="navbar nav_title" style="border: 0;">
                            <a href="dDashboard.jsp" class="site_title"><i class="fa fa-paw"></i> <span>E-Health</span></a>
                        </div>
                        <div class="clearfix"></div>


                        <%
                            try {
                                String user = (String) session.getAttribute("email");
                                Connection con = Database.dataConnection();
                                Statement stmt = con.createStatement();
                                String str = "select * from patient where email = '" + email + "'";
                                ResultSet pic = stmt.executeQuery(str);
                                if (pic.next()) {
                        %>
                        <!-- menu prile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src='<%=session.getAttribute("image") %>' alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                            
                                <span>Welcome</span>
                                <h2><%= pic.getString(2)%></h2>
                            </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <% } else {
                        %>

                        <!-- menu prile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src="<%= session.getAttribute("image")%>" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome</span>

                                <h2><%= session.getAttribute("fname")%> </h2>
                                <h3><a href="PatientUpdateProfile">Fill Your Profile</a></h3>
                            </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <% }
                        %>
                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                            <div class="menu_section">

<%--                                 <h3><br>UserID:  <%= session.getAttribute("email")%></h3>
 --%>

                                <ul class="nav side-menu">
									<br><br><br><br>
                                    <li> <a href="PatientProfile.jsp"><i class="fa fa-home"></i> Dashboard</a> </li>
                                   
                                    <li><a><i class="fa fa-male"></i>Profile <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">
                                            <li><a href="PatientUpdateProfile.jsp">Update Patient Profile</a>
                                            </li>
                                            <li><a href="PatientCompleteProfile.jsp">View Patient Profile</a>
                                            </li>
                                            
                                        </ul>
                                    </li>	
                                   
                                    <li><a><i class="fa fa-medkit"></i> Medication <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">

                                            <li><a href="PatientPrescription.jsp">Prescriptions</a>
                                            </li>
                                            
                                        </ul>
                                    </li>


                                  
                                    <li><a><i class="fa fa-users"></i>Appointment <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">
                                            <li><a href="PatientAppointment.jsp">Book Appointment</a>
                                            </li>
                                            <li><a href="PatientBookAppointment.jsp">Appointment History</a>
                                            </li>
                                        </ul>
                                    </li>
                                   
                            </div>

                        </div>
                    </div>
                </div>

                <!-- top navigation -->
                <div class="top_nav">

                    <div class="nav_menu">
                        <nav class="" role="navigation">
                            <div class="nav toggle">
                                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                            </div>

                            <ul class="nav navbar-nav navbar-right">
                                <li class="">
                                           <%
                                        ResultSet pic1 = stmt.executeQuery(str);

                                        if (pic1.next()) {%>
                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src='<%=session.getAttribute("image") %>' alt=""><%= session.getAttribute("email")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                    } else {
                                    %>

                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src='<%=session.getAttribute("image") %>' alt=""><%= session.getAttribute("doctName")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                        }
                                    %>

                                    <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                        <li><a href="DoctorProfile.jsp">Profile</a>
                                        </li>
                                        
                                        <li><a href="help.jsp">Help</a>
                                        </li>
                                        
											<li><a href="Logout.html"><i class="fa fa-sign-out pull-right"></i>Log Out</a>
                                        </li>
                                    </ul>
                                </li>


                            </ul>

                        </nav>
                    </div>

                </div>
                <!-- /top navigation -->
                <%

                    } catch (Exception e) {
                        out.println(e);
                    }
                %>

      <!-- page content -->
      
       
      <div class="right_col" role="main">
          
   <div>
    <input type="hidden" value="YW5hbnRyYWouZ2Fpa3dhZEBnbWFpbC5jb20=" id="hiddenmsg" />  
    
          
        <!-- OUT Table End -->
    </div>  
     <%!
      String email = "";
      String fname = ""; 
      String mobnum = "";
      String gender= "";
      String bloodGroup = "";
	  String image="";
      String marStatus="";
   %>
        <% 
         email = (String)session.getAttribute("email");
        Connection con = Database.dataConnection();
        String str = "Select * from patient where email = '"+email+"'";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(str);
        while(rs.next())
               {
            email = rs.getString(1);
            fname = rs.getString(2);
            mobnum = rs.getString(3);
            gender = rs.getString(4);
            bloodGroup=rs.getString(5);
            marStatus=rs.getString(7);
            image=rs.getString(8);
}
%>                   
          
  <div class="row">
      <div class="col-lg-12">
          <div class="panel panel-warning">
              <div class="panel-heading">
                  <b> PATIENT PROFILE</b>
              </div>
             <div class="container">
             
             
        <form method="post" action="DupdateInsert" name="myform11" enctype="multipart/form-data">
    
           <div class="panel-body">
              <div class="row">
                 <div class="col-md-12 form-group has-success">
          
    	      <div class="panel-body">
        	        <div class="row">
                   
            	      <div class="col-md-6 form-group has-success">
                         <label for="pName">Patient Name</label>
                      <input type="text" name="patientName" class="form-control" value="<%= fname %>" readonly="true">
                       </div>
                	
                	     <div class="col-md-6 form-group has-success">
                         <label for="email">  E-Mail</label>  
                         <input type="email" name="email" class="form-control" id="email" value="<%= email %>" readonly="true">
                      </div>
                    <br>
                    
                    
                  <div class="col-md-6 form-group has-success">
                	  <label for="mobnum">Mobile Number</label>
                      <input type="number" name="mobnum" class="form-control" id="mobnum" value="<%= mobnum %>"readonly="true">
                  </div>
                 
                  <div class="col-md-6 form-group has-success">
                       <label for="marStatus">Marital Status</label>
                       <input type="text" name="marStatus" class="form-control" id="marStatus" value="<%= marStatus %>" readonly="true">
                     </div>
                  
                <div class="col-md-6 form-group has-success">
                	  <label for="dhospName">Gender</label>
                      <input type="text" name="gender" class="form-control" id="gender" value="<%= gender %>" readonly="true">
                 </div>
                 
                 <div class="col-md-6 form-group has-success">
                        <label for="dhospName">Blood Group</label>
                        <input type="text" name="bdGroup" class="form-control" id="bdGroup" value="<%= bloodGroup %>" readonly="true">
                 </div>
                
             </div>   
             
      <!-- /page content -->
</div></div></div></div></form></div></div></div></div></div></div>
    </div>
  
  <script src="js/bootstrap.min.js"></script>

  
  <script src="js/custom.js"></script>


  <!-- /footer content -->
</body>

</html>


<% }%>