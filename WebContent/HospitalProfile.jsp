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
                                    <li><a href="HospitalProfile.jsp"><i class="fa fa-home"></i> Home </a>
                                    </li>
                                    <li><a href="HospitalAppointment.jsp"><i class="fa fa-users"></i> Appointments </a>

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
      String hospRegNum = "";
      String hospName = ""; 
      String hospAdd = "";
      String hospCity= "";
      String area = "";
      String spec="";
      String email="";
      String hContact="";
      String pinCode="";
   %>
        <% 
        hospRegNum = (String)session.getAttribute("hospRegNum");
        Connection con = Database.dataConnection();
        String str = "Select * from hospital where hospRegNum = '"+hospRegNum+"'";
        Statement stmt = con.createStatement();
        ResultSet rs = stmt.executeQuery(str);
        while(rs.next())
               {
        	hospRegNum = rs.getString(1);
        	hospName = rs.getString(2);
        	hospAdd = rs.getString(3);
        	hospCity = rs.getString(4);
        	area=rs.getString(5);
        	pinCode=rs.getString(6);
        	spec=rs.getString(7);
        	hContact=rs.getString(8);
        	email=rs.getString(9);
        	
}
%>                   
          
<!--  Start Patient History Code..-->

  <div class="row">
      <div class="col-lg-12">
          <div class="panel panel-warning">
              <div class="panel-heading">
                 <h2> <b> HOSPITAL PROFILE</b> </h2>
              </div>
             <div class="container">
             
           <div class="panel-body">
              <div class="row">
                 <div class="col-md-12 form-group has-success">
          
    	      <div class="panel-body">
        	        <div class="row">
                   
            	      <div class="col-md-6 form-group has-success">
                         <label for="pName">Hospital Name</label>
                      <input type="text" name="patientName" class="form-control" value="<%= hospName %>" readonly="true">
                       </div>
                
                     <div class="col-md-6 form-group has-success">
                       <label for="marStatus">Hospital Registration Number</label>
                       <input type="number" name="hospRegNum" class="form-control" id="hospRegNum" value="<%= hospRegNum %>" readonly="true">
                     </div>
                  	
                	     <div class="col-md-6 form-group has-success">
                         <label for="email"> Hospital E-Mail</label>  
                         <input type="email" name="email" class="form-control" id="email" value="<%= email %>" readonly="true">
                      </div>
                    <br>
                    
                    
                  <div class="col-md-6 form-group has-success">
                	  <label for="mobnum">Hospital Specialization</label>
                      <input type="text" name="spec" class="form-control" id="spec" value="<%= spec %>" readonly="true">
                  </div>
                
             </div>   
             
             
             <!-- New DIV start Here -->
              <div class="row">
                 <h4 align="left">Hospital Contact Details </h4>
					
					<div class="col-md-6 form-group has-success">
                       <label for="name">Hospital Name</label>
                       <input type="text" name="hospName" class="form-control" id="adhar" value="<%= hospName %>" readonly="true">
                     </div>
                   
                   <div class="col-md-6 form-group has-success">
                       <label for="height">Hospital Address</label>
                       <input type="text" name="addr" class="form-control" id="addr" value="<%= hospAdd %>" readonly="true">
                     </div>
                 
                 <div class="col-md-6 form-group has-success">
                  	  <label for="addr">Hospital City</label>
                      <input type="text" name="city" class="form-control" id="city" value="<%= hospCity %>" readonly="true">
                  </div>
                                       
                  <div class="col-md-6 form-group has-success">
                     <label for="occupation">Area</label>     
                      <input type="text" name="area" class="form-control" id="area" value="<%= area %>" readonly="true">
                   </div>
                     
                   <div class="col-md-6 form-group has-success">
                       <label for="height">Pin Code</label>
                       <input type="number" name="pinCode" class="form-control" id="pinCode" value="<%= pinCode %>" readonly="true">
                    </div>
            
           </div>
        </div>
      
        
       </div>
     </div>
   </div></div></div>
     


            </div>
      <!-- /page content -->

    </div>
  
  <script src="js/bootstrap.min.js"></script>

  
  <script src="js/custom.js"></script>


  <!-- /footer content -->
</body>

</html>
<% } %>