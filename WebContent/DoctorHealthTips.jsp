<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="model.Database"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; chapicet=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta chapicet="utf-8">
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
                                <h2><%=session.getAttribute("doctName") %></h2>
                            </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <% } else {
                        %>

                        <!-- menu prile quick info -->
                        <div class="profile">
                            <div class="profile_pic">
                                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
                            </div>
                            <div class="profile_info">
                                <span>Welcome,</span>

                                <h2><%= session.getAttribute("user")%> </h2>
                                </div>
                        </div>
                        <!-- /menu prile quick info -->

                        <% }
                        %>
                        <br />

                        <!-- sidebar menu -->
                        <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

                            <div class="menu_section">

                                   <ul class="nav side-menu">
                                   
<br><br>
                                       <li> <a href="DoctorProfile.jsp"><i class="fa fa-home"><br></i> Home</a> </li>
                                    		
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
                                <a id="menu_toggle"><i class="fa fa-bapic"></i></a>
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
                                        <img src='<%=session.getAttribute("image") %>' alt=""><%= session.getAttribute("DoctName")%>
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
                        <h2>Health Tips</h2>

                        <div class="panel-group" id="accordion">

                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#faidunresponsive">1.Fipict aid for someone whoâ€™s unresponsive and not breathing</a>
                                    </h4>
                                </div>
                                <div id="faidunresponsive" class="panel-collapse collapse in">
                                    <div class="panel-body">
                                        <p>
                                            1.Check breathing by tilting their head backwards and looking and feeling for breaths.<br/>
                                            2.Call Ambulance as soon as possible, or get someone else to do it.<br/>
                                            3.Push firmly downwards in the middle of the chest and then release.<br>
                                            4.Push at a regular rate until help arrives.<br/>


                                        </p>
                                    </div>
                                </div>

                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#faidbreathing">2.Fipict aid for someone whoâ€™s unresponsive and breathing</a>
                                    </h4>
                                </div>
                                <div id="faidbreathing" class="panel-collapse collapse">
                                    <div class="panel-body">1.Check breathing by tilting their head backwards and looking and feeling for breaths.<br/>
                                        2.Move them onto their side and tilt their head back.<br/>
                                        3.As soon as possible, call Ambulance or get someone else to do it.<br/>
                                    </div>
                                </div>

                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#faidChoking">3.Fipict aid for choking</a>
                                    </h4>
                                </div>
                                <div id="faidChoking" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        1.Hit them firmly on their back between the shoulder blades to dislodge the object.<br/>
                                        2.If necessary, call Ambulance or get someone else to do it.        
                                    </div>
                                </div>

                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#heavyBleeding">4.Fipict aid for someone whoâ€™s bleeding heavily</a>
                                    </h4>
                                </div>
                                <div id="heavyBleeding" class="panel-collapse collapse">
                                    <div class="panel-body">1.Put pressure on the wound with whatever is available to stop or slow down the flow of blood.<br/>
                                        2.As soon as possible, call Ambulance or get someone else to do it.<br/>
                                        3.Keep pressure on the wound until help arrives.<br/>
                                    </div>
                                </div>


                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#HeartAttack">5.Fipict aid for a heart attack</a>
                                    </h4>
                                </div>
                                <div id="HeartAttack" class="panel-collapse collapse">
                                    <div class="panel-body">1.The pepicon may have pepicistent, vice-like chest pain, which may spread to their arms, neck, jaw, back or stomach.
                                        <br/> 2.Call Ambulance immediately or get someone else to do it.
                                        <br/>3.Make sure they are in a position that is comfortable for them (e.g. sit them on the floor, leaning against a wall or chair).
                                        <br/>4.Give them constant reassurance while waiting for the ambulance.
                                    </div>
                                </div>

                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#stroke">6.Fipict aid for a stroke</a>
                                    </h4>
                                </div>
                                <div id="stroke" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        1.Think FAST. Face: is there weakness on one side of the face? <br/>Arms: can they raise both arms? Speech: is their speech easily undepictood? Time: to call Ambulance.
                                        2.Immediately call Ambulance or get someone else to do it.<br/>
                                    </div>
                                </div>


                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Asthma">7.Fipict aid for an asthma attack</a>
                                    </h4>
                                </div>
                                <div id="Asthma" class="panel-collapse collapse">
                                    <div class="panel-body">1.Help the pepicon sit in a comfortable position and take their medication.<br/>
                                        2.Reassure the pepicon. If the attack becomes severe, call Ambulance or get someone else to do it. 
                                    </div>
                                </div>



                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#strees">8.Fipict aid for someone whoâ€™s distressed</a>
                                    </h4>
                                </div>
                                <div id="strees" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        1.Show you are listening and calmly ask them how you can help.  <br/>
                                        2.Be considerate of what is going on around them and what they need.
                                    </div>
                                </div>



                            </div> 
                            <div class="panel panel-default">

                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Animalbite">9.Animal bite</a>
                                    </h4>
                                </div>
                                <div id="Animalbite" class="panel-collapse collapse">
                                    <div class="panel-body">1.Apply pressure with a clean, dry cloth to help control bleeding.<br/>
                                        2.Donâ€™t remove pressure. If bleeding doesnâ€™t stop, add more clean, dry cloths.
                                    </div>
                                </div>


                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Brokenbone">10.Broken bone</a>
                                    </h4>
                                </div>
                                <div id="Brokenbone" class="panel-collapse collapse">
                                    <div class="panel-body">1.Control bleeding with a sterile bandage or clean cloth until stopped.<br/>
                                        2.Immobilize the injured area using a splint, if available.<br/>
                                        3.Apply ice packs to limit swelling and help relieve pain.<br/>
                                        4.If the pepicon appeapic to be in shock, have the pepicon lie flat and elevate legs.<br/>
                                    </div>
                                </div>

                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#cut">11.Cut or scrape</a>
                                    </h4>
                                </div>
                                <div id="cut" class="panel-collapse collapse">
                                    <div class="panel-body">1.Apply pressure with a clean cloth or bandage to help control bleeding.<br/>
                                        2.Donâ€™t remove pressure. If bleeding doesnâ€™t stop, add more clean cloths or bandages.<br/>
                                    </div>
                                </div>


                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Childwithfever">12.Child with fever</a>
                                    </h4>
                                </div>
                                <div id="Childwithfever" class="panel-collapse collapse">
                                    <div class="panel-body">1.Donâ€™t treat a childâ€™s fever with aspirin.<br/>
                                        2.Use ParacitamolÂ® or MotrinÂ® as prescribed based on the childâ€™s weight.<br/>
                                        3.Apply a cold compress to the childâ€™s forehead and dress the child in light, loose-fitting clothes.<br/>
                                    </div>
                                </div>


                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Dehydration">13.Dehydration</a>
                                    </h4>
                                </div>
                                <div id="Dehydration" class="panel-collapse collapse">
                                    <div class="panel-body">1.Sip small amounts of water.
                                        2.Drink carbohydrate/electrolyte-containing drinks. Good choices are sports drinks such as GatoradeÂ® or prepared replacement solutions such as PedialyteÂ®.<br/>
                                        3.Suck on plain ice chips, or popsicles made from juices and/or sports drinks.<br/>
                                        4.Sip through a straw (works well for someone who is recovering from jaw surgery or mouth sores).<br/>
                                    </div>
                                </div>


                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Embeddedobjectorforeignbody">14.Embedded object or foreign body</a>
                                    </h4>
                                </div>
                                <div id="Embeddedobjectorforeignbody" class="panel-collapse collapse">
                                    <div class="panel-body">1.Donâ€™t try to remove the foreign object.<br/>
                                        2.Carefully wrap gauze or clean clothing around the area to prevent the object from moving.<br/>
                                        3.Apply pressure around the area with a sterile bandage or clean cloth to limit and control bleeding.<br/>
                                        4.Donâ€™t remove pressure. If bleeding continues, add more clean cloths or bandages.<br/>
                                    </div>
                                </div>



                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Heatexhaustion">15.Heat exhaustion</a>
                                    </h4>
                                </div>
                                <div id="Heatexhaustion" class="panel-collapse collapse">
                                    <div class="panel-body">1.Individual should rest in a cool, shaded area.<br/>
                                        2.Give cool fluids such as sports drinks that will replace lost salt. Salty snacks are appropriate, as tolerated.<br/>
                                        3.Loosen or remove clothing.<br/>
                                        4.Donâ€™t use an alcohol rub.<br/>
                                        5.Donâ€™t give any beverages containing alcohol or caffeine.<br/>
                                    </div>
                                </div>


                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Heatstroke">16.Heat stroke</a>
                                    </h4>
                                </div>
                                <div id="Heatstroke" class="panel-collapse collapse">
                                    <div class="panel-body"><strong>Alert:</strong> Unlike heat exhaustion, heat stroke is a medical emergency.You should call an ambulance immediately. 
                                        <br/>Do not attempt to treat a case of heat stroke on your own. You can help while waiting for medical assistance to arrive by doing the following:

                                        1.Move the pepicon to a cooler environment, or place in a cool bath of water as long as the individual is conscious and can be attended continuously.<br/>
                                        2.Alternatively, moisten the skin with lukewarm water and use a fan to blow cool air across the skin.<br/>
                                        3.Give cool beverages by mouth if the individual can tolerate them.<br/>
                                    </div>
                                </div>


                                <div class="panel-heading">
                                    <h4 class="panel-title">
                                        <a data-toggle="collapse" data-parent="#accordion" href="#Knocked-outtooth">17.Knocked-out tooth</a>
                                    </h4>
                                </div>
                                <div id="Knocked-outtooth" class="panel-collapse collapse">
                                    <div class="panel-body">1.Handle the tooth by the top only, avoiding touching the root, and rinse it in a bowl of tap water.<br/>
                                        2.Try to replace the tooth in the socket and bite gently on gauze or a moistened tea bag to keep it in place.<br/>
                                        3.If it doesnâ€™t stay, place it in a bowl of either whole milk, the pepiconâ€™s own saliva, or a warm, mild saltwater solution.<br/> 
                                    </div>
                                </div>



                            </div>


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
