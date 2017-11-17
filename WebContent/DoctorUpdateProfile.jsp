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
          String doctRegNo=(String)session.getAttribute("doctRegNo");
          if(doctRegNo==null || doctRegNo.length()==0) 
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
                                String user = (String) session.getAttribute("doctRegNo");
                                Connection con = Database.dataConnection();
                                Statement stmt = con.createStatement();
                                String str = "Select * from doctor where doctRegNo = '" + user + "'";//dprofile
                                ResultSet pic = stmt.executeQuery(str);
                                if (pic.next()) {
                        %>
                        <!-- menu prile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src="<%= session.getAttribute("image")%>" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome</span>
                                <h2><%= pic.getString(3)%></h2>
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

                                <h2><%= session.getAttribute("user")%> </h2>
                               <!--  <h3><a href="dUpdateProfile.jsp">Fill Your Profile</a></h3>
                          -->
                     	   </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <% }
                        %>
                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                            <div class="menu_section">

                        <%--         <h3><br>UserID:  <%= session.getAttribute("user")%></h3>
 --%>

                                <ul class="nav side-menu">

     <br><br><br><br>
                                       <li> <a href="DoctorProfile.jsp"><i class="fa fa-home"></i> Home</a> </li>
                                    		
										<li><a><i class="fa fa-user-md"></i>Profile <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">
                                            <li><a href="DoctorUpdateProfile.jsp">Profile Update</a>
                                            </li>
                                            <li><a href="DoctorProfileUpdated.jsp">Complete Profile</a>
                                            </li>

                                        </ul>
                                    </li>
										


                                    <li><a><i class="fa fa-users"></i>Appointment <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">
                                            <li><a href="DoctorApproveAppointment.jsp">New Appointment List</a>
                                            </li>
                                            <li><a href="DoctorConfirmAppointment.jsp">Approved Appointment </a>
                                            </li>

                                        </ul>
                                    </li>

                                     <li><a><i class="fa fa-medkit"></i>Prescription <span class="fa fa-chevron-down"></span></a>
                                        <ul class="nav child_menu" style="display: none">
                                    <li><a href="DoctorPrescription.jsp"> Prescription </a> </li>
											         <li><a href="DoctorPrescriptionDetails.jsp">View Prescription </a>
                                            </li>

                                        </ul>
                                    </li>
                                
                                </ul>

                            </div>


                        </div>
                        <!-- /sidebar menu -->

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
                                        <img src='<%=session.getAttribute("image") %>'  alt=""><%= session.getAttribute("doctName")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                    } else {
                                    %>

                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src='<%=session.getAttribute("image") %>'  alt=""><%= session.getAttribute("doctName")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                        }
                                    %>

                                    <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                        <li><a href="DoctorProfile.jsp">Profile</a>
                                        </li>
                                        
                                        <li>
                                            <a href="help.jsp">Help</a>
                                        </li>
                                        <li><a href="Logout.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
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
      String doctRegNo = "";
      String doctName = ""; 
      String dHospName = "";
      String mobnum = "";
      String email = "";
      String gender="";
      String bdGroup="";
      String marStatus="";
      String degree="";
      String specIn="";

   %>
        <% 
        doctRegNo = (String)session.getAttribute("doctRegNo");
        Connection con = Database.dataConnection();
        String str = "Select * from doctor where doctRegNo = '"+doctRegNo+"'";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(str);
        while(rs.next())
               {
        	doctRegNo = rs.getString(1);
        	doctName = rs.getString(3);
        	dHospName = rs.getString(2);
        	degree=rs.getString(4);
        	mobnum = rs.getString(6);
        	specIn=rs.getString(5);
        	gender=rs.getString(7);
            bdGroup=rs.getString(8);
            marStatus=rs.getString(9);
            email=rs.getString(10);
}
%>         
      
          
          
  <div class="row">
      <div class="col-lg-12">
          <div class="panel panel-warning">
              <div class="panel-heading">
                  <b> Doctor Update Profile</b>
              </div>
             <div class="container">
            
           <div class="panel-body">
              <div class="row">
                 <div class="col-md-12 form-group has-success">
          
    	      <div class="panel-body">
        	    
             
             <!-- New DIV start Here -->
              <div class="row" align="center">
                 <h4>Personal Information </h4>
					<br>
					<form action="InsertDoctorProfile.html" method="get">
				
					
					<div class="col-md-6 form-group has-success">
                       <label for="name">Doctor User Name</label>
                       <input type="text" name="userName" class="form-control" id="userName"placeholder="Doctor User Name">
                     </div>	
					<div class="col-md-6 form-group has-success">
                       <label for="adhar">Social Security Number</label>
                       <input type="number" name="adharNo" class="form-control" id="adharNo"placeholder="Social Security Number">
                     </div>
                   
                   <div class="col-md-6 form-group has-success">
                       <label for="dob">Date of Birth</label>
                       <input type="date" name="dob" class="form-control" id="dob" placeholder="Date of Birth">
                     </div>
                 
                 <div class="col-md-6 form-group has-success">
                  	  <label for="addr">Address</label>
                      <input type="text" name="addr" class="form-control" id="addr" placeholder="Address">
                  </div>
                  
                   <div class="col-md-6 form-group has-success">
                       <label for="height">Height</label>
                       <input type="number" name="height" class="form-control" id="height"placeholder="Height" min=120>
                     </div>
                     
                  <div class="col-md-6 form-group has-success">
                     <label for="weight">Weight</label>     
                      <input type="number" name="weight" class="form-control" id="weight" placeholder="Weight" min=1>
                   </div>
                   
                    <div class="col-md-6 form-group has-success">
                         <label for="doctRegNo">Doctor Registration No</label>  
                         <input type="number" name="doctRegNo" class="form-control" id="doctRegNo" value="<%= doctRegNo %>" readonly="true">
                 </div>
                
              	    
               <div class="col-md-10 ">
                 <center>
                     
                     <input type="submit" value="ADD"  class="btn btn-success">
                            <input type="reset" value="RESET"  class="btn btn-warning">
                          
                 </center>
                            
             </div>
          
              </form>
              
              </div>
            </div>
                  
             <br><br>
             </div></div>
        
       </div>
     </div>
             </div></div></div></div>         

        

     
            </div>
      <!-- /page content -->

    </div>
  
  <script src="js/bootstrap.min.js"></script>

  
  <script src="js/custom.js"></script>


  <!-- /footer content -->
</body>

</html>
<% }%>