
<%@page import="org.springframework.context.ApplicationContext" %>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@page import="com.demo.AppointmentPojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.demo.AppointmentDao"%>
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
          String hospName=(String)session.getAttribute("hospName");
          if(hospName==null || hospName.length()==0) 
          { 
          			response.sendRedirect("index.jsp");
          }else{
          	%>

                        <div class="navbar nav_title" style="border: 0;">
                            <a href="HospitalProfile.jsp" class="site_title"><i class="fa fa-paw"></i> <span>E-Health</span></a>
                        </div>
                        <div class="clearfix"></div>


                        <%
                            try {
                                String hospRegNum = (String) session.getAttribute("hospRegNum");
                                Connection con = Database.dataConnection();
                                Statement stmt = con.createStatement();
                                String str = "select * from hospital where hospRegNum = '" + hospRegNum + "'";
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
                            </div>
                        </div>
                        <!-- /menu quick info -->

                        <% } else {
                        %>

                        <!-- menu quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src='<%=session.getAttribute("image") %>' alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome</span>

                                <h2><%= session.getAttribute("hospName")%> </h2>
                                
                            </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <% }
                        %>
                       
                         <br />
	
                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
                        

                            <div class="menu_section">
                                <hr>
                                <br>
                                <h3><br> <%= session.getAttribute("hospName")%></h3>
                                <ul class="nav side-menu">
                                    <li><a href="index.jsp"><i class="fa fa-home"></i> Home </a>

                                    </li>
                                    <li><a href="HospitalProfile.jsp"><i class="fa fa-user-md"></i> Profile </a>

                                    </li>
                                    <li><a href="#"><i class="fa fa-users"></i> Appointments </a>

                                    </li>
                                    <li><a href="#"><i class="fa fa-user"></i>Patient </a>

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
                                        <img src='<%=session.getAttribute("image") %>' alt=""><%= session.getAttribute("hospName")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                    } else {
                                    %>

                                    <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                                  <img src='<%=session.getAttribute("image") %>' alt=""><%= session.getAttribute("hospName")%>
                                        <span class=" fa fa-angle-down"></span>
                                    </a>
                                    <%
                                        }
                                    %>

                                    <ul class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
                                        <li><a href="HospitalProfile.jsp">  Profile</a>
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
      String appId = "";
      String hospRegNum = ""; 
      String email = "";
      String doctRegNum= "";
      String disease = "";
      String appDate="";
      String appTime="";
      String status="";
      
   %>
        <% 
        appId = (String)session.getAttribute("appId");
        Connection con = Database.dataConnection();
        String str = "Select * from appointmentpojo where hospRegNum = '"+hospRegNum+"'";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(str);
        while(rs.next())
               {
        	appId = rs.getString(1);
        	hospRegNum = rs.getString(2);
        	email = rs.getString(3);
        	doctRegNum = rs.getString(4);
        	disease=rs.getString(5);
        	appDate=rs.getString(6);
        	appTime=rs.getString(7);
        	status=rs.getString(8);
        	
}
%>                   
          
<!--  Start Patient History Code..-->

      <!-- /page content -->


                    <div class="row">
                       
                            <div class="container table-responsive" >

								<table class="table ">

                                            <th> Appointment No </th>
                                            <th> Hospital Name </th>
                                            <th> Doctor Name </th>
                                            <th> Doctor Specialist </th>
                                            <th> Disease </th>
                                            <th> Appointment Date </th>
                                            <th> Appointment Time </th>
                                            <th> Appointment Status </th>

							<%! String dname = "";
                                    String puser = "";
                                %>

							<%
								String user = (String) session.getAttribute("email");
								ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");
								AppointmentDao ap=(AppointmentDao)app.getBean("AppointmentDao");
								ArrayList<AppointmentPojo> myapp=(ArrayList<AppointmentPojo>)ap.getAppoinmentsByPatient(user);

								for (AppointmentPojo rss : myapp) {
								%>

								<input type="hidden" name="apid" value="<%= rss.getAppId()%>"
									readonly="true"
									style="outline: none; border: none; border-style: none; background-color: #f0f0f0">

								<input type="hidden" name="did"
									value="<%= rss.getDoctRegNum().getDoctRegNo()%>"
									readonly="true"
									style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
								<input type="hidden" name="dname"
									value="<%= rss.getDoctRegNum().getDoctName()%>" readonly="true"
									style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
								<tr>


									<td><input type="text" name="pid"
										value="<%= rss.getEmail().getEmail()%>" readonly="true"
										style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
									</td>

									<td><input type="text" name="pname"
										value="<%= rss.getEmail().getFname()%>" readonly="true"
										style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
									</td>

									<td><input type="text" name="adate"
										value="<%= rss.getAppDate()%>" readonly="true"
										style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
									</td>

									<td><input type="text" name="slot"
										value="<%= rss.getAppTime()%>" readonly="true"
										style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
									</td>

									<td><input type="text" name="status"
										value="<%= rss.getStatus()%>" readonly="true"
										style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
									</td>

									<td>
										<div class="container col-md-6"></div>

									</td>
									<td><input type="submit" value="Approve"
										class="btn btn-warning" /></td>

								</tr>
						
							<script>
                                
                                   var newwindow;
                                   function poptastic(url)
                                   {
                                       newwindow=window.open(url,'name','height=700,width=300');
                                       if (window.focus) {newwindow.focus()}
                                   }
                               </script>

							<%
                                    }
                                 
                                %>
							<%
                                %>
						</table>
</div></div>
                  
</div></div>
    </div>
  
  <script src="js/bootstrap.min.js"></script>

  
  <script src="js/custom.js"></script>


  <!-- /footer content -->
</body>

</html>
<% } %>