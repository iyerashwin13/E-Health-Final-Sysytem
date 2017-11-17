
<%@page import="org.springframework.context.ApplicationContext" %>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext" %>
<%@page import="com.demo.AppointmentPojo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.demo.AppointmentDao"%>
<%@page import="java.sql.*,model.Database"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!  
    int pid = 0;
    int pinc = 100;
%>
<%
    try {
        Connection con = Database.dataConnection();
        Statement stmt = con.createStatement();
        String str = "select * from appointmentpojo";
        ResultSet rs = stmt.executeQuery(str);
        while (rs.next()) {
            pid = rs.getInt(1);
            pinc = pid + 1;
        }
    } catch (Exception e) {
    }
%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>E-Health</title>

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
						<a href="index.jsp" class="site_title"><i class="fa fa-paw"></i>
							<span>E-Health</span></a>
					</div>
					<div class="clearfix"></div>


					<%
                            try {
                                String user = (String) session.getAttribute("hospRegNo");
                                Connection con = Database.dataConnection();
                                Statement stmt = con.createStatement();
                                String str = "Select * from hospital where hospRegNum = '" + user + "'";
                                ResultSet res = stmt.executeQuery(str);
                                if (res.next()) {
                                	
                        %>

					<div class="profile">
						<div class="profile_pic">
							<img src=<%= session.getAttribute("image")%> alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome</span>
							<h2><%= res.getString(2)%></h2>
						</div>
					</div>
					<!-- /menu prile quick info -->

					<% } else {
                        %>

					<!-- menu prile quick info -->
					<div class="profile">
						<div class="profile_pic">
							<img src='<%=session.getAttribute("image") %>' alt="..."
								class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome</span>

							<h2><%= session.getAttribute("hospName")%>
							</h2>
						</div>
					</div>
					<!-- /menu prile quick info -->

					<% }
                        %>
					<br />

					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">

						<div class="menu_section">


							<ul class="nav side-menu">

								<li><a href="HospitalProfile.jsp"><i class="fa fa-home"></i>
										Home </a></li>
					

								<li><a><i class="fa fa-users"></i>Appointment <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" style="display: none">
											<li><a href="#">Appointment List</a> </li>
                                            
									</ul></li>


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

                                        if (pic1.next()) {%> <a
								href="javascript:;" class="user-profile dropdown-toggle"
								data-toggle="dropdown" aria-expanded="false"> <img
									src=<%= session.getAttribute("image")%> alt=""><%= session.getAttribute("hospName")%>
									<span class=" fa fa-angle-down"></span>
							</a> <%
                                    } else {
                                    %> <a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img
									src=<%= session.getAttribute("image")%> alt=""> <%= session.getAttribute("hospName")%>
									<span class=" fa fa-angle-down"></span>
							</a> <%
                                        }
                                    %>

								<ul
									class="dropdown-menu dropdown-usermenu animated fadeInDown pull-right">
									<li><a href="DoctorProfile.jsp"> Profile</a></li>

									<li><a href="#">Help</a></li>
									<li><a href="Logout.html"><i
											class="fa fa-sign-out pull-right"></i> Log Out</a></li>
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
					<h1 style="color: red">APPOINTMENT LIST</h1>
				</div>
				<div class="row">

					<div class="table-responsive">
						<table class="table ">


							<th>Appointment Id</th>
							<th>Patient Name</th>
							<th>Doctor Name</th>
							<th>Disease</th>
							<th>Appointment Date</th>
							<th>Time Slot</th>
							<th>Status</th>

							<%!
								String dname = "";
                            	String puser = "";
                             %>

							<%
								String user = (String) session.getAttribute("hospRegNum");
								ApplicationContext app=new ClassPathXmlApplicationContext("bean.xml");
								AppointmentDao ap=(AppointmentDao)app.getBean("AppointmentDao");
								
								
								ArrayList<AppointmentPojo> myapp=(ArrayList<AppointmentPojo>)ap.getAppoinmentsByHospital(user);
									
								for (AppointmentPojo rss : myapp) {
								%>
							<form method="post" action="ApproveAppontmentController.html">

								<input type="hidden" name="apid" value="<%= rss.getAppId()%>" readonly="true"
									style="outline: none; border: none; border-style: none; background-color: #f0f0f0">

								<input type="hidden" name="did" value="" readonly="true" 
										style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
										
								<input type="hidden" name="dname" value="<%= rss.getHospRegNum().getHospName()%>" readonly="true"
									style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
								<tr>


									<td><input type="text" name="pid"
										value="<%= rss.getAppId()%>" readonly="true"
										style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
									</td>

									<td><input type="text" name="pname"
										value="<%= rss.getEmail().getFname()%>" readonly="true"
										style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
									</td>
									<td><input type="text" name="dname"
										value="<%= rss.getDoctRegNum().getDoctName()%>" readonly="true"
										style="outline: none; border: none; border-style: none; background-color: #f0f0f0">
									</td>
									<td><input type="text" name="disease"
										value="<%= rss.getDisease()%>" readonly="true"
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

									</td><!-- 
									<td><input type="submit" 	value="Approve"
										class="btn btn-warning" /></td> -->

								</tr>
							</form>
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
					</div>
				</div>


				<!-- footer content -->


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
