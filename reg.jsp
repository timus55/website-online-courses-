
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel = "stylesheet" href = "style.css">
</head>
<body>

<%@ page import="java.sql.*"%>
<%@ page import ="javax.sql.*" %>
<%
String user=request.getParameter("uname");
String pwd=request.getParameter("pwd");
String course=request.getParameter("course");

Class.forName("com.mysql.jdbc.Driver");

Connection con = DriverManager.getConnection("jdbc:mysql://localhost:8080/demo","root", "root");

Statement st= con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into users values('"+uname+"','"+pwd+"', '"course"')");

%>

		<div class="title">
			<h1>COURSES</h1>
		</div>
		
		<div class="nav">
			<div class="left-side">
				<div class="nav-linker">
					<a href="index.html">Home</a>
				</div>
				<div class="nav-linker">
					<a href="about.html">About</a>
				</div>
			</div>
			
		</div>
	<div class = "title">
		<p align = "center">Your response has been submitted!!!</p>
	</div>

</body>
</html>