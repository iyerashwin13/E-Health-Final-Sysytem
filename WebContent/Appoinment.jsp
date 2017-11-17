
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="home.css" rel="stylesheet" />
<title>Home</title>
<script type="text/javascript" src="jquery-1.11.3.min.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$("#time").hide();
						$("#tab").hide();
						$("#myday").hide();
						$("#submit").hide();

						try {
							obj = new XMLHttpRequest();
							obj.open("GET", "DocListController", true)
							obj.send();
							obj.onreadystatechange = function() {
								if (obj.readyState == 4 && obj.status == 200) {
									$("#doclist").show();
									document.getElementById('doclist').innerHTML = obj.responseText;
								}
							}
						} catch (e) {
							//alert(e.message);
							alert(" Something went wrong...")
						}

					});
	function getDate() {
		$("#myday").show();
	}

	function getTime() {
		d = document.getElementById("date").value;
		did=document.getElementById("doct").value;
	
		try {
			obj = new XMLHttpRequest();
			obj.open("GET", "TimeSlotController?date='"+d+"'&doct="+did, true)
			obj.send();
			obj.onreadystatechange = function() {
				if (obj.readyState == 4 && obj.status == 200) {
					$("#time").show();
					document.getElementById('time').innerHTML = obj.responseText;
				}
			}
			$("#submit").show();
		} catch (e) {
				//alert(e.message);
			alert(" Something went wrong...")
		}

	}
</script>

</head>
<body style="background-color: #d6d6d6; background-image: url("gradient_bg.png");
    background-repeat:repeat-x;">
	<div style="height: 100px; background-color: #74AFAD"></div>
	<div style="height: 40px; width: 100%; background-color: #4A96AD"
		; align="right">

		<%
			HttpSession ses = request.getSession(false);
			String uname = (String) ses.getAttribute("fname");
			if (uname == null || ses == null) {
		%><a href="PatientProfile.jsp"><button class="hai">Login</button></a><a
			href="register.jsp"><button class="hai">New Student</button></a>
		<%
			} else {
		%><a href="PatientProfile.jsp"><button class="hai"><%=uname%></button></a>
		<button class="hai" onclick="location:cart.php">About Us</button>


	</div>
	<br>
	<form action="bookAppoimentController.html" method="get">
	<span id="doclist"></span>

	<br>

	<br>
	<span id="myday">Select Date <input id="date" name="date" type="date"
		onchange="getTime()"></span> &nbsp;&nbsp;
	
	<br>
	<br>
	<span id="time">Select TimeSlot </span>
	<input type="submit" id="submit">
	</form>
	<%
		}
	%>

</body>
</html>