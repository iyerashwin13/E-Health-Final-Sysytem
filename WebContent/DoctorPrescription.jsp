<%@page import="java.sql.*,model.Database" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@ page import="java.io.*,java.util.*" %>
<%@page import="java.util.*"%>

<%
              
               DateFormat dF=new SimpleDateFormat("yyyy-MM-dd");
               java.util.Date today_date=new java.util.Date();
               String today_dat = dF.format(today_date);
               %>
<%!
   int pid = 0;
   int pinc = 100;
   %>
  <%--  <%
   try
   {
       Connection con = Database.dataConnection();
       Statement stmt = con.createStatement();
       String str = "select * from prescriptionpojo";
       ResultSet rs = stmt.executeQuery(str);
       while(rs.next())
       {
           pid = rs.getInt(1);
           pinc = pid+1;
       }            
   } catch(Exception e)
   {
      
   }                    
   %> --%>
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

  

                        <div class="navbar nav_title" style="border: 0;">
                            <a href="#" class="site_title"><i class="fa fa-paw"></i> <span>E-Health</span></a>
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
                                <img src="<%= session.getAttribute("image")%>" alt="..." class="img-circle profile_img">
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
                                <img src="<%= session.getAttribute("image")%>" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome</span>

                                <h2><%= session.getAttribute("doctName")%> </h2>
                                
						  </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <% }
                        %>
                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                            <div class="menu_section">

                              <%--   <h3><br>UserID:  <%= session.getAttribute("user")%></h3>
 --%>

                                <ul class="nav side-menu">
<br><br><br><br><br>
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
                                        <img src="<%= session.getAttribute("image")%>" alt=""><%= session.getAttribute("doctName")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                    } else {
                                    %>

                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                        <img src="<%= session.getAttribute("image")%>" alt=""><%= session.getAttribute("doctName")%>
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
          
          
    
                           
  <div class="row">
    <div class="col-md-9">
     <div class="panel panel-warning">
         <div class="panel-heading">
             
              Prescription
          
         </div>
         
                       
     <div class="panel-body">
        <div class="container">
            <form method="post" name="myform12" action="dPrescription.html">
           <div class="row">
                     <div class="col-md-9 form-group has-success">  <br>
                                     
                     <label>Prescription ID</label>    <input type="number" name="pid"  placeholder="Prescription Id" class="form-control"><br>
                         <input type="text" name="email" placeholder="Patient UserName"  class="form-control"><br>

                         <input type="text" name="diseases" placeholder="Diseases/ Illness" class="form-control"><br>

                              <div class="col-md-11 form-group has-success">
                                      <div>
                                          <label>Medicine type</label><br>
                                                       <input type="radio" name="med" value="Tablet"/>Tablet
                                                       <input type="radio" name="med" value="Syrup"/>Syrup
                                       </div>
                               </div>
                      <input type="text" name="medname" placeholder="Medicine Name" class="form-control"><br>

                         <div class="col-md-11 form-group has-success">
                           <label>Dosage </label> <br>

                         
                        <label class="checkbox-inline"><input type="checkbox"  name="dose" value="Morning">Morning</label>
                        <label class="checkbox-inline"><input type="checkbox" name="dose" value="AfterNoon">AfterNoon</label>
                        <label class="checkbox-inline"><input type="checkbox" name="dose" value="Evening">Evening</label>
                         </div>
                         
                         <input type="text" name="medquantity" placeholder="Quantity" class="form-control"><br>
                          <textarea class="form-control" name="remark" placeholder="Remark"></textarea><br>
                          <input type="text" name="doctRegNo" readonly="true"  class="form-control" value="<%= session.getAttribute("doctRegNo") %> "><br>
                        <input type="text" name="prescrDate" class="form-control" id="fname" value="<%=today_dat%> "placeholder="Date">(YYYY-MM-DD)

                          <input type="submit" value="ADD"  class="btn btn-success">
                         <input type="reset" value="RESET"  class="btn btn-warning">
                         
                   </div>
                 </div>
        </form>                           
            </div> 
        </div>
     </div>

                            </div>
 </div>

        <!-- footer content -->

      
        <!-- /footer content -->
 
      </div>
      <!-- /page content -->

    </div>

  </div>

  <script src="js/bootstrap.min.js"></script>

  
  <script src="js/custom.js"></script>


  <!-- /footer content -->
</body>

</html>
