<!Doctype html>
<html>
    <head>
        <title>E-Health | Home :: </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Anesthesia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        
        <!meta charset utf="8">
    
    <!--fonts-->
    <link href='//fonts.googleapis.com/css?family=Monda:400,700' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Roboto+Slab:400,300,100,700' rel='stylesheet' type='text/css'>
    <!--fonts-->
    <!--owlcss-->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <!--bootstrap-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--coustom css-->
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <!--default-js-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!--bootstrap-js-->
    <script src="js/bootstrap.min.js"></script>
    <!--script-->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <!--script-->
    
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Open+Sans|Raleway|Candal">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
    <div class="header_nav" id="home">
        <nav class="navbar navbar-default chn-gd">
            <div class="container">
                <!-- For better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand logo-st" href="index.jsp">E-Health</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <li>
                            <a href="#home" class="scroll">
                                <span class="glyphicon glyphicon-home icn_pos hm" aria-hidden="true"></span><br>
                                Home
                            </a>
                        </li>
                        <!---->
                        <li>
                            <a href="#features" class="scroll">
                                <span class="glyphicon glyphicon-cog icn_pos" aria-hidden="true"></span><br>
                                Features
                            </a>
                        </li>
                        <!---->
                        <li>
                            <a href="NearBySearch.jsp" class="">
                                <span class="glyphicon glyphicon-briefcase icn_pos" aria-hidden="true"></span><br>
                                Emergency Services
                            </a>
                        </li>
                        <!---->
                        <li>
                            <a href="#Login" class="scroll">
                                <span class="glyphicon glyphicon-user icn_pos hm2" aria-hidden="true"></span><br>
                                Login/Sign Up
                            </a>
                        </li>
                        <!---->
                        <li>	
                            <a href="help.jsp" class="">
                                <span class="glyphicon glyphicon-envelope icn_pos" aria-hidden="true"></span><br>
                                Help
                            </a>
                        </li>
                        <!---->
                        <!--script-->
                        <script type="text/javascript">
                            jQuery(document).ready(function($) {
                                $(".scroll").click(function(event){		
                                    event.preventDefault();
                                    $('html,body').animate({scrollTop:$(this.hash).offset().top},900);
                                });
                            });
                        </script>
                        <!--script-->
                    </ul>
                </div><!-- /.navbar-collapse -->
                <div class="clearfix"></div>
            </div><!-- /.container-fluid -->
        </nav>
    </div>
    <div class="header_banner">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active  image-wid">
                    <img src="./images/Front1.jpg" alt="..." class="img-responsive">
                    <div class="carousel-caption">

                        <!-- Slider Photo descriptions -->
                        <h3>Medical Check Up Instruments</h3>
                        <p>Free Medical CheckUp</p>
                    </div>
                </div>
                <div class="item  image-wid">
                    <img src="./images/Front2.jpg" alt="..." class="img-responsive">
                    <div class="carousel-caption">
                        <h3>Drugs  For Required Dose</h3>
                        <p>Providing Prescription History to patient</p>
                    </div>
                </div>
                <div class="item  image-wid">
                    <img src="./images/Front4.jpg" alt="..." class="img-responsive">
                    <div class="carousel-caption">
                        <h3>Doctors Advice</h3>
                        <p>Communicate with your Doctor </p>
                    </div>
                </div>
                <div class="item  image-wid">
                    <img src="./images/Front3.jpg" alt="..." class="img-responsive">
                    <div class="carousel-caption">
                        <h3>Nearby Services</h3>
                        <p>Allowing to locate nearby Hospital</p>
                        <button type="button" class="btn btn-info sld">Read more</button>
                    </div>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div><br><br><br><br><br>

    <div class="content"> 


        <div class="service_features" id="features">
            <div class="container">
                <div class="col-md-4 ser-fet">
                    <br>   
                    <h3>About</h3>
                    <br>                   
                    <p>Services Provided:</p>
                    <span class="line"></span>
                    <div class="services">
                        <div class="menu-grid">
                            <ul class="menu_drop">

                                <li class="item1 plus"><a href="#" class="active">Digitization<span class="caret"></span></a>
                                    <ul>
                                        <li class="subitem1">
                                            <p> Allow user to store all information Digitally </p>	
                                        </li>
                                    </ul>
                                </li>

                                <li class="item2 plus"><a href="#" class="active">Near by Search<span class="caret"></span></a>
                                    <ul>
                                        <li class="subitem1">
                                            <p> Nearby hospital and blood bank searches are provided.</p>                                       

                                        </li>
                                    </ul>
                                </li>
                                <li class="item3 plus"><a href="#" class="active">Appointment<span class="caret"></span></a>
                                    <ul>
                                        <li class="subitem1">
                                            <p> The online appointment facility is provided.</p>

                                        </li>
                                    </ul>
                                </li>
                                <li class="item4 plus"><a href="#" class="active">Lab Test & Reports:<span class="caret"></span></a>
                                    <ul>
                                        <li class="subitem1">
                                            <p> Patients reports are uploaded and available to doctor.</p>
                                        </li>
                                    </ul>
                                </li>

                            <!-- script for tabs -->
                            <script type="text/javascript">
                                $(function() {
                                    var menu_ul = $('.menu_drop > li > ul'),
                                    menu_a  = $('.menu_drop > li > a');
                                    menu_ul.hide();
                                    menu_a.click(function(e) {
                                        e.preventDefault();
                                        if(!$(this).hasClass('active')) {
                                            menu_a.removeClass('active');
                                            menu_ul.filter(':visible').slideUp('normal');
                                            $(this).addClass('active').next().stop(true,true).slideDown('normal');
                                        } else {
                                            $(this).removeClass('active');
                                            $(this).next().stop(true,true).slideUp('normal');
                                        }
                                    });
                                });
                            </script>
                            <!-- script for tabs -->
                        </div>
                    </div>
                </div><br>
                <div class="col-md-8 ser-fet">
                    <h3>Our Features</h3>
                    <br>
                    <p>Our Aim</p>
                    <span class="line"></span>
                    <div class="features">
                        <div class="col-md-6 fet-pad">
                            <div class="div-margin">
                                <div class="col-md-3 fet-pad wid">
                                    <span class="glyphicon glyphicon-user aim-icn" aria-hidden="true"></span>
                                </div>
                                <div class="col-md-9 fet-pad wid2">
                                    <h4>Patient:</h4>
                                    <p>Patient Profile information and notification precisely Managed. </p>

                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="div-margin">
                                <div class="col-md-3 fet-pad wid">
                                    <span class="glyphicon glyphicon-screenshot aim-icn" aria-hidden="true"></span>
                                </div>
                                <div class="col-md-9 fet-pad wid2">
                                    <h4>Doctor:</h4>
                                    <p>Confirming Appointments according to time.</p>
                                    <p>Providing Prescription in suitable format.</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="div-margin">
                                <div class="col-md-3 fet-pad wid">
                                    <span class="glyphicon glyphicon-ok aim-icn" aria-hidden="true"></span>
                                </div>
                                <div class="col-md-9 fet-pad wid2">
                                    <h4>Hospital:</h4>
                                    <p>Managing all information of Patient and Doctor.</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="col-md-6 fet-pad">
                            <div class="div-margin">
                                <div class="col-md-3 fet-pad wid">
                                    <span class="glyphicon glyphicon-piggy-bank aim-icn" aria-hidden="true"></span>
                                </div>
                                <div class="col-md-9 fet-pad wid2">
                                    <h4>Lab Reports:</h4>
                                    <p>Uploading test & reports for patient convenience</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="div-margin">
                                <div class="col-md-3 fet-pad wid">
                                    <span class="glyphicon glyphicon-education aim-icn" aria-hidden="true"></span>
                                </div>
                                <div class="col-md-9 fet-pad wid2">
                                    <h4>Health Insurance</h4>
                                    <p>User avail the facility of medical claim and can update the insurance details</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="div-margin">
                                <div class="col-md-3 fet-pad wid">
                                    <span class="glyphicon glyphicon-heart aim-icn" aria-hidden="true"></span>
                                </div>
                                <div class="col-md-9 fet-pad wid2">
                                    <h4>Transparency</h4>
                                    <p>Everything is digitized.</p>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        
       <!-- <START THE REMAINING WORK> -->
       
       
       
    
                <div class="doctor-port" id="Login">
                    
                    <div class="style-label">
                        <div class="container top">
                            <ul class="box-shadow effect2">

                                <li class="col-md-4">
                                    <span class="glyphicon glyphicon-user flt" aria-hidden="true"></span>
                                    <div class="label-text">
                                        <h4> <a href="PatientLogin.jsp">  <b> Patient Login</b> </a>  </h4>
                                        <br>
                                        <p>The Reports,Prescriptions and Appointments access</p>

                                    </div>
                                </li>

                                <li class="col-md-4">
                                    <span class="glyphicon glyphicon-plus flt" aria-hidden="true"></span>
                                    <div class="label-text">
                                        <h4> <a href="DoctorLogin.jsp">  <b> Doctor Login</b> </a>  </h4>
                                        <br>
                                        <p>Communication with expert Doctor and Online prescription </p>

                                    </div>
                                </li>

                                <li class="col-md-4">
                                    <span class="glyphicon glyphicon-home flt" aria-hidden="true"></span>
                                    <div class="label-text">
                                        <h4>   <a href="HospitalLogin.jsp">  <b> Hospital Login</b> </a> </h4>
                                        <br>
                                        <p>Proper Management of All information of Patient, Doctor and Laboratory   </p>
                                    </div>
                                </li>

                                <div class="clearfix"></div>
                            </ul>
                        </div>
                    </div> 
             </div>      
       
       
<!--                 <div class="doctor-port" id="Emergency">
                    
                    <div class="style-label">
                        <div class="container top">
                            <ul class="box-shadow effect2">

                                <li class="col-md-4">
                                    <span class="glyphicon glyphicon-user flt" aria-hidden="true"></span>
                                    <div class="label-text">
                                        <h4> <a href="PatientLogin.jsp">  <b> Appointment Booking</b> </a>  </h4>
                                        <br>
                                        <p>The Reports,Prescriptions and Appointments access</p>

                                    </div>
                                </li>

                                <li class="col-md-4">
                                    <span class="glyphicon glyphicon-plus flt" aria-hidden="true"></span>
                                    <div class="label-text">
                                        <h4> <a href="NearBySearch.jsp">  <b> Emergency Case </b> </a>  </h4>
                                        <br>
                                        <p>Communication with expert Doctor and Online prescription </p>

                                    </div>
                                </li>


                    </div> 
                </div> -->
<!-- Footer start -->
             <div class="social-label" id="contact">
                    <div class="col-md-4 text-label">
                        <p>Follow, Like, Share us on Social.</p>
                    </div>
                    <div class="col-md-8 social-icn">
                        <ul>
                            <li>
                                <a href="#" class="face"></a>
                            </li>
                            <li>
                                <a href="#" class="twit"></a>
                            </li>
                            <li>
                                <a href="#" class="gplus"></a>
                            </li>
                            <li>
                                <a href="#" class="inst"></a>
                            </li>
                            <li>
                                <a href="#" class="drib"></a>
                            </li>
                            <li>
                                <a href="#" class="in"></a>
                            </li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="contact">

                    <div class="contact-form">
                        <div class="container">
                            <div class="col-md-3 pd Address">
                                <h3>Address</h3>
                                <ul>
                                    <li>E-Health</li>
                                    <li>20 Herbert Place,</li>
                                    <li>Jersey City,</li>
                                    <li>NJ-07306</li>
                                    <li>United States</li>
                                </ul>
                            </div>
                            <div class="col-md-6 pd contact-us">
                                <h3>contact us</h3>
                                <form>
                                    <textarea value="Enter your text here..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your text here...';}">Enter your text here...</textarea>
                                    <br>
                                    <input class="name" type="text" name="name" value="Your name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your name';}">
                                    <input class="nuber" type="text" name="Phone number" value="Phone Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone Number';}">
                                    <button type="button" class="btn btn-info sub1">Send</button>
                                </form>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>
                <div class="footer">
                    <div class="container">
                        <div class="footer-text">
                            <h3><a href="index.jsp">E-Health</a></h3>
                            <p>&#169; 2017 E-Health. All rights reserved | Design by <a href="https://www.linkedin.com/in/iyerashwin01" target="_blank">Ashwin Iyer</a></p>
                        </div>
                    </div>
                </div>
                <a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
                              
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.easing.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/custom.js"></script>
    <script src="contactform/contactform.js"></script>
    
                </body>
                </html>