    <%@page import="java.text.SimpleDateFormat"%>
	<%@page import="java.text.DateFormat"%>
    <%@page import="java.sql.ResultSet"%>
    <%@page import="java.sql.Statement"%>
    <%@page import="model.Database"%>
    <%@page import="java.sql.Connection"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    
    <%!
    int pid = 0;
    int pinc = 100;
    String user = "";
    String hname = "";
 
    DateFormat dF = new SimpleDateFormat("yyyy-MM-dd");
    java.util.Date today_date = new java.util.Date();
    String today_dat = dF.format(today_date);
%>


    
    
    <%
    try
    {
       Connection con = Database.dataConnection();
       Statement stmt = con.createStatement();
       String str = "select *from billingpojo";
       ResultSet rs = stmt.executeQuery(str);
       while(rs.next())
       {
           pid = rs.getInt(1);
           pinc = pid+1;
       }            
    } catch(Exception e)
    {

    }                    
    %>
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
                            <a href="hIndex.jsp" class="site_title"><i class="fa fa-hospital-o"></i> <span>E-Health</span></a>
                        </div>
                        <div class="clearfix"></div>

<%
                            try {
                               user = (String) session.getAttribute("hospRegNum");
                                Connection con = Database.dataConnection();
                                Statement stmt = con.createStatement();
                                String strs = "select * from hospital where hospRegNum = '"+user+"'";
                                ResultSet rss = stmt.executeQuery(strs); 
                                while(rss.next())
                                {
                                    hname=rss.getString(1);
                                }
                                
                                String str = "Select * from hospital where hospRegNum = '" + user + "'";
                                ResultSet pic = stmt.executeQuery(str);
                                if (pic.next()) {
                        %>                        
                        
                        
                        
                        <!-- menu prile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src="hImage" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>
                                <h2><%=hname%></h2>
                            </div>
                           
                            <h3></h3>
                        </div>
                        <!-- /menu prile quick info -->
                        <br />
                        <%
                                               }else{

%>

                         <div class="profile">
                            <div class="profile_pic">
                                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>
                                <h2><%=user%></h2>
                            </div>
                           
                            <h3></h3>
                        </div>
                        <!-- /menu prile quick info -->
                        <br />
<% }
                        %>
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
                                    <li><a href="HospitalAppointment.jsp"><i class="fa fa-users"></i> Appointments </a>

                                    </li>
                                    <li><a href="HospitalPatientDetails.jsp"><i class="fa fa-user"></i>Patient </a>

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
                                        <img src="hImage" alt=""><%= session.getAttribute("user")%>
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
                                        <li><a href="hProfile.jsp">  Profile</a>
                                        </li>
                                       
                                        <li>
                                            <a href="help.jsp;">Help</a>
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

        <br><br> <br><br> 
            <div class="col-md-10">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title"> Billing Section </h3>
                    </div>
                                
                    <div class="panel-body">
                                         <div class="container">
                                           <form action="BillingController.html" method="post">
                                                <div class="row">
                                                    <div class="col-md-6 form-group has-success">  <br>
                                                         <center>

                                                        <div class="col-md-6">
                                                             <label>Bill ID</label>
                                                        <input type="text" name="billId"  value=" "><br><br>

                                                        </div>
                                                       
                                                        <div class="col-md-6">
                                                            <label>Hospital</label>
                                                            <input type="text" name="hospRegNum" value="<%= session.getAttribute("hospRegNum")%>" readonly="true" required=""><br><br>
                                                        
                                                        </div>
                                                         </center> 
                                                        <br><hr>
                                                        <input type="email" name="email" id=username placeholder="Enter user name" class="form-control"><br>

                                                        <input type="text" name="chargeFor" placeholder="charge For" class="form-control"><br>

                                                        <label><h4> Date</h4></label><br>
                                                        From <input type="date" name="fromDate" class="form-control" required=""><br>
                                                        <%  %>
                                                        To <input type="date" name="toDate" class="form-control"required=""><br>

                                                               <input type="text" name="amount" id=amount placeholder="Enter Amount " class="form-control"><br>
                                                               <center>
                                                         <input type="submit" value="ADD"  class="btn btn-success">
                                                         <input type="reset" value="RESET"  class="btn btn-warning">

                                                         <input type="button" value="PRINT"  class="btn btn-warng1" onclick="myfun()">
                                                         
                                                         </center> 
                                                         <script>
                                                             function myfun()
                                                             {
                                                                 window.print();
                                                             }

                                                         </script>
                                                    </div>
                                                    </div>
                                        </form>
                                        </div> 
                                    </div>

                                    </div>
                                </div>



      </div>
      <!-- /page content -->

    </div>

    </div>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    
    

<!-- <script type="text/javascript">

var frmvalidator  = new Validator("myform9");

frmvalidator.addValidation("username","req","Please enter Username");
frmvalidator.addValidation("username","minlen=5","Username:Min length is 5");
frmvalidator.addValidation("username","maxlen=20", "Max length for  Username is 20");
frmvalidator.addValidation("username","alnum","Invalid username");

frmvalidator.addValidation("chargeFor","req","Please enter chargeFor");
frmvalidator.addValidation("chargeFor","minlen=3","chargeFor:Min length is 3");
frmvalidator.addValidation("chargeFor","maxlen=40", "Max length for chargeFor 40");
frmvalidator.addValidation("chargeFor","alpha_s","Alphabetic character only");

frmvalidator.addValidation("charge","req","Please enter charge");
frmvalidator.addValidation("charge","numeric","Numeric only");

frmvalidator.addValidation("charge","minlen=5","charge:Min length is 5");
frmvalidator.addValidation("charge","maxlen=50", "Max length for charge is 50");
frmvalidator.addValidation("charge","numeric","Numeric only");

</script>    


 -->
    <!-- /footer content -->
    </body>

    </html>
