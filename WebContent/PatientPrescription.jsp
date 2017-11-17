<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,model.Database" %>
<%!
   String email="";
   String fname="";
%>
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

</head>


<body class="nav-md">

  <div class="container body">


    <div class="main_container">

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

                    <div class="navbar nav_title" style="border: 0;">
                            <a href="pDashboard..jsp" class="site_title"><i class="fa fa-paw"></i> <span>E-Health</span></a>
                        </div>
                        <div class="clearfix"></div>
                        <%
                            try {
                                String user = (String) session.getAttribute("email");
                                Connection con = Database.dataConnection();
                                Statement stmt = con.createStatement();
                                String str = "Select * from patient where email = '" + user + "'";
                                ResultSet pic = stmt.executeQuery(str);
                                if (pic.next()) {
                        %>

                        <!-- menu prile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src='<%=session.getAttribute("image") %>' alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span><b>Welcome</b></span>
                                <h2><%= pic.getString(2)%></h2>


                            </div>
                        </div>

                        <%

                        } else {%>

                        <div class="profile">
                            <div class="profile_pic">
                                <img src='<%=session.getAttribute("image") %>' alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome</span>
                                <h4> <%= session.getAttribute("user")%> </h4>
<!--                                 <a href="pupdateProf.jsp">Fill Profile</a>
 -->
                            </div>
                        </div>

                        <%
                            }
                        %>
                        <!-- /menu prile quick info -->


                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

  <div class="menu_section">

<%--                                 <h3><br>UserID:  <%= session.getAttribute("email")%></h3>
 --%>

                                <ul class="nav side-menu">
									<br><br><br><br><br>
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
                                        <img src='<%=session.getAttribute("image") %>' alt=""><%= session.getAttribute("email")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                    } else {
                                    %>

                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src='<%=session.getAttribute("image") %>' alt=""><%= session.getAttribute("email")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                        }
                                    %>

                                    <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                        <li><a href="DoctorProfile.jsp">Profile</a>
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
          
        
            <div class="box-heading">
                <h2>	Prescriptions</h2>
            </div>
            <div class="row" >
                
                <div class="table-responsive">
            <table  class="table " >
            <thead style="background-color:#FFF" class="border-dark" >
          
           <th> Diseases </th>
           <th> Medicine Type </th>
           <th> Medicine Name </th>
           <th> Dosage </th>
           <th> Quantity </th>
           <th> Remark </th>
       
           <th> Prescription Date </th>
           
            </thead> 
           <tbody > 
            
          <%
 try
 {
     String userid = (String)session.getAttribute("email");
      Connection con1 = Database.dataConnection();
      Statement stmt1 = con1.createStatement();
      String str1 = "Select * from prescriptionpojo where email ='"+userid+"';";
      ResultSet rss1 = stmt1.executeQuery(str1);
     
     
      while(rss1.next())
                   {
         
          %>
           
          <tr style="background-color:ghostwhite" >
                
                     <td > 
                    <%= rss1.getString(4) %>
                  </td>
                  
                     <td >
                      <%= rss1.getString(5) %>
                  </td>
                     <td >
                      <%= rss1.getString(6) %>
                  </td>
                    <td>
                      <%= rss1.getString(7) %>
                  </td>
                   <td>
                      <%= rss1.getString(8) %>
                  </td>
                  <td> 
                      <%= rss1.getString(9) %>
                  </td>
                  
                  
                  
                  
                   <td>
                      <%= rss1.getDate(10) %>
                  </td>
              </tr>
              
       <%   
      }
      
      
          
         // response.sendRedirect("pPrdcription.jsp?");
   %>
            
      
      
      <%
 }catch(Exception e)
 {
     
     
 }                           
           %>
        </tbody>     
            </table>
            
       </div>           
    </div>

            
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
