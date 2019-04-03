<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="jumbotron">
  <h1> Web Project - on Elastic Beanstalk</h1>      
</div>

<div class="container">

<form action="" method="get">

  <p> Name : <input type="name" name="name" class="form-control"  /></p>      
  <p>Email : <input type="email" name="email" class="form-control"  /></p>
  <p>Password : <input type="password" name="pwd" class="form-control"  /></p>
       <p> <input type="submit" value="Register"  class="btn btn-success" /></p>

</form>


<%
try
{
	
	String name="ridhi",email="sharma",pwd="test";
	
	name = request.getparamenter("name");
	email = request.getparamenter("email");
	pwd = request.getparamenter("pwd");
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://dbs92.cm8uzr6c4avp.us-east-2.rds.amazonaws.com/akshay", "akshay", "akshay123");

	Statement st = con.createStatement();
	
	st.executeUpdate("insert into users(name,email,pwd) values('"+name+"','"+email+"','"+pwd+"')" );

	
	con.close();
}
catch(Exception  ex){
	
	
}

%>


</div>

</body>
</html>
