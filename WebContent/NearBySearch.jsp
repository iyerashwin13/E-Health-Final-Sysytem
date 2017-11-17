
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="model.Database"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>E-Health | Home :: </title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Anesthesia Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() {setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!meta charset utf="8">

    <!--owlcss-->
    <link href="css/owl.carousel.css" rel="stylesheet">
    <!--bootstrap-->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!--coustom css-->
    <link href="css/style_layout.css" rel="stylesheet" type="text/css"/>
    <!--default-js-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <!--bootstrap-js-->
    <script src="js/bootstrap.min.js"></script>
    <!--script-->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <!--script-->
</head>

<body>

    <div class="header_nav" id="home">
        <nav class="navbar navbar-default chn-gd">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
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
                            <a href="index.jsp" class="scroll">
                                <span class="glyphicon glyphicon-home icn_pos hm" aria-hidden="true"></span><br>
                                Home
                            </a>
                        </li>

                        <li>
                            <a href=PatientLogin.jsp class="scroll">
                                <span class="glyphicon glyphicon-user icn_pos hm2" aria-hidden="true"></span><br>
                                Patient Login
                            </a>
                        </li>
                        <!---->
                        <li>	
                            <a href="help.jsp" class="scroll">
                                <span class="glyphicon glyphicon-envelope icn_pos" aria-hidden="true"></span><br>
                                Help
                            </a>

                    </ul>
                </div><!-- /.navbar-collapse -->
                <div class="clearfix"></div>
            </div><!-- /.container-fluid -->
        </nav>

    </div>
    <br>        
<center></center>

     <br><br>

    <div class="container">
    <div class="row">
        <div class="center">
                    <h2>Search Nearby Hospital </h2><br><br>
                    <br>
        </div>
            <div class="col-md-12">

                <form role="form" method="post" action="NearBySearch.jsp">
                    <div class="col-md-12">

                        <div class=" col-md-6 form-group">
                            <input type="text" id="seachCity" name="seachCity"class="form-control" placeholder="Enter City To Search Hospital">

                        </div>
                        <div class=" form-group pull-left">
                            <input type="submit" value="Search" class="brn btn-success">

                        </div>
                    </div>
                </form>

                <form method="post" action="NearBySearch.jsp">

                    <div class="col-md-12">
                        <div class=" col-md-6 form-group">
                            <br><br>
                            <%
                                try {
                                    String seachCity = request.getParameter("seachCity");
                                    if (seachCity == null){
                                    	seachCity = "";                                    	
                                    }
                                    application.setAttribute("seachCity", seachCity);
                            %>
                            <h4>Select Area From  <%= seachCity%></h4><br>
                            <%
                                Connection con = Database.dataConnection();
                                Statement stmt = con.createStatement();
                                String str = "select distinct area from hospital where hospCity = '" + seachCity + "'";                                
                                ResultSet rs = stmt.executeQuery(str);
                                
                                         
 
                                    System.out.println(rs);
                                
                                
                                while (rs.next()) {

                            %>

                            <input type="radio" name="Area" value="<%=rs.getString(1)%>"> <%=rs.getString(1)%><br>

                            <%
                                    }

                                } catch (Exception e) {
                                }
                            %>
                            <br>
                            <label> </label><center>
                                    <input type="submit" value="Search" class="brn btn-success">

                            </center>

                        </div>  

                    </div>
                </form>

            </div>
    </div>
       
                <div class="row col-md-8">
                    <br><br>
                    <div class="container table-responsive" >

                        <table class="table">
                            <thead>
                                <tr>
                                    <th> Hospital Name</th>
                                    <th> Hospital Contact</th>
                                    <th>Hospital Email ID</th>
                                    <th> Address</th>
                                    <th>Specialization</th>
                              

                                </tr>
                            </thead>
                            <%
                                int count = 0;
                            %>
                            <%
                                try {
                                    String Area = request.getParameter("Area");
                                    application.setAttribute("Area", Area);
                                    Connection con = Database.dataConnection();

                                    Statement stmt = con.createStatement();
                                    String dreg = "Select * from hospital where area = '" + Area + "'";
                                    ResultSet rs = stmt.executeQuery(dreg);
                                    while (rs.next()) {

                                             String hos=rs.getString(1);
                                        count++;
                            %>

                            <tbody>
                                <tr >
                                    <td><%=rs.getString(2)%></td>
                                    <td><%=rs.getString(8)%></td>
                                    <td><%=rs.getString(9)%> </td>
                                    <td><%=rs.getString(3)%><br/><%=rs.getString(4)%><br/><%=rs.getString(6)%></td>
                                    <td><%=rs.getString(7)%></td>
                                    
                                    <td>
                                    <%
                                    Statement stm = con.createStatement();
                                    String dnam = "Select * from doctor where hospitalId = '" + hos + "'";
                                    ResultSet rs1 = stm.executeQuery(dnam);
                                    while (rs1.next()) {


%>
                                    
                                     <%=rs1.getString(3)%> (<%=rs1.getString(5)%>)<br>
                                    <%
}                                    }
%>
                                    </td>



                                </tr>

                                <%
                                                                      

                                    } catch (Exception e) {
                                    }
                                %>

                            </tbody>
                        </table>
                        <hr>
                        <span >

                            <p style="font-family: monospace ;font-size: 30;">
                                <i class="fa fa-spinner fa-spin" style="font-size:15px;color:skyblue;"></i>
                               Total Hospitals : <%=count%>
                            </p> 
                        </span>
                    </div>
                </div>
</div>
</body>
</html>
