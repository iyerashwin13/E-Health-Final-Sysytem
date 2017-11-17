
<%@page import="java.sql.ResultSet"%>
<%@page import="model.Database"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
  <link href="css/icheck/flat/green.css" rel="stylesheet" />
  <link href="css/floatexamples.css" rel="stylesheet" type="text/css" />

  <script src="js/jquery.min.js"></script>
  <script src="js/nprogress.js"></script>

 

</head>


<body class="nav-md">

  <div class="container body">


    <div class="main_container">

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

       
      

                        <div class="navbar nav_title" style="border: 0;">
                            <a href="dDashboard.jsp" class="site_title"><i class="fa fa-paw"></i> <span>E-Health</span></a>
                        </div>
                        <div class="clearfix"></div>


                        <%
                            try {
                                String user = (String) session.getAttribute("doctRegNo");
                                Connection con = Database.dataConnection();
                                Statement stmt = con.createStatement();
                                String str = "Select * from doctor where doctRegNo = '" + user + "'";
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
                                <h2><%= session.getAttribute("doctName")%></h2>
                            </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <% } else {
                        %>

                        <!-- menu prile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src='<%=session.getAttribute("image") %>' alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>

                                <h2><%= session.getAttribute("doctName")%> </h2>
                                <!-- <h3><a href="dUpdateProfile.jsp">Fill Your Profile</a></h3>
                            --> </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <% }
                        %>
                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                            <div class="menu_section">

                                <h3><br>UserID:  <%= session.getAttribute("doctRegNo")%></h3>


                                <ul class="nav side-menu">
                                <br>

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
                                        <img src='<%=session.getAttribute("image") %>' alt=""><%= session.getAttribute("doctName")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                    } else {
                                    %>

                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src="images/img.jpg" alt=""><%= session.getAttribute("user")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                        }
                                    %>

                                    <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                        <li><a href="DoctorProfile.jsp">  Profile</a>
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
          
                
     <div class="container">
	<div class="row">
            <a href="updateReport.jsp" class="btn btn-success"> <i class="fa fa-medkit" ></i> ADD Report</a>
           
        <div class="col-sm-6 col-md-6 pull-right">
    		
           
                <div class="input-group col-sm-6 col-md-6">
                    <form method="post" action="dReport.jsp">
                    <input type="text" name="searchPat"class="form-control" placeholder="Patient Report Search" />
                    <input type="submit" value="Search"/>
                    
                    </form>
                </div>
           
        </div>
	</div>
</div>
                                    
  <div class="row">
  
     
      <div class="container">
          <div class="table-responsive">
      <table class="table ">
        <thead>
         <tr>
            <th> Doctor ID</th>
            <th>Patient Name </th>
            <th>Description</th>
            <th>Date</th>
            <th>Download</th>
            <th>View</th>
      
        </tr>
      </thead>
      
         <%
 try
 {
     String user = request.getParameter("searchPat");
      Connection con = Database.dataConnection();
      Statement stmt = con.createStatement();
      String str = "Select * from labreport where user = '"+user+"'";
      ResultSet rss = stmt.executeQuery(str );
      while(rss.next())
                   {
          %>
      
      <tbody>
          
          
        <tr style="background-color:ghostwhite">
            <td><b><%= rss.getString(1) %></b></td>
         <td><b><%= rss.getString(3) %></b></td>
         <td><b><%= rss.getString(4) %></b></td>
         <td><b><%= rss.getDate(5) %></b></td>
         <td>
             <a href="downdloadlabreport.jsp?<%= rss.getString(7) %>" class=" btn btn-primary"><i class="fa fa-download"> Download Now</i>
             </a>  
         </td>
          <td>
              <a href="viewlabreport.jsp?<%= rss.getString(7) %>" class="btn btn-warning"><i class="fa fa-openid">  View Now</i>
             </a>
         </td>
          <%   
      }
      %>
      <%
 }catch(Exception e)
 {
     
 }                           
           %>
        
      </tr>
    </tbody>
   </table>
   </div>
 </div>
</div>
     
      

        <!-- start footer content -->

        <!-- /footer content -->
      </div>
      <!-- /page content -->

    </div>

  </div>

  <script src="js/bootstrap.min.js"></script>

  <!-- bootstrap progress js -->
  <script src="js/progressbar/bootstrap-progressbar.min.js"></script>
  <script src="js/nicescroll/jquery.nicescroll.min.js"></script>
  <!-- icheck -->
  <script src="js/icheck/icheck.min.js"></script>
  <!-- daterangepicker -->
  <script type="text/javascript" src="js/moment/moment.min.js"></script>
  <script type="text/javascript" src="js/datepicker/daterangepicker.js"></script>
  
  <script src="js/custom.js"></script>

 
 
  <!-- /footer content -->
</body>

</html>
