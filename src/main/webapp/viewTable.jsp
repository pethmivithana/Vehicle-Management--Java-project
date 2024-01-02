<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.* "%>
    <%@page import="java.io.IOException" %>
    <%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> User Profile Update</title>
<link rel="stylesheet" href="css/View.css">
<style>
 body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.dashboard {
    background-color: #fff;
    max-width: 1500px;
    margin: 20px auto;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
}

h1 {
    text-align: center;
}

.data-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
}

.data-table th, .data-table td {
    padding: 10px;
    text-align: left;
    border: 1px solid #ccc;
}

.data-table th {
    background-color: #007BFF;
    color: #fff;
}

.data-table tr:nth-child(even) {
    background-color: #f2f2f2;
}

.data-table tr:hover {
    background-color: #ddd;
}

#submit {
    background-color: #4CAF50;
    width: 80px; 
    height: 40px; 
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

#submit a {
    color: #fff; 
    text-decoration: none; 
    }

#submit:hover {
    background-color: #006400;
}



input[type="submit"] {
    width: 80px; 
    height: 40px; 
    background-color: #FF0000; 
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #CC0000; /* A darker shade of red when hovered */
}
</style>
</head>
<body>
<table class ="data-table">
	<thead>
		<tr>
			<th>  ID</th>
			<th> Vehicle ID</th>
			<th> Customer Name</th>
			<th> Problem Description</th>
			<th> Customer Contact Number</th>
			<th> Update</th>
			<th> Delete</th>
			
		</tr>
	</thead>
	
	<%
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	
	try{
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/inquiry?characterEncoding=utf8","root","Pethmi092019");
		statement = connection.createStatement();
		resultSet = statement.executeQuery("select * from addin");
	
		while(resultSet.next()){
	%>
	<tr align ="center">
	<th scope="row"> <% out.println(resultSet.getString("id")); %></th>
	<td> <% out.println(resultSet.getString("vid")); %></td>
	<td scope="row"> <% out.println(resultSet.getString("vcname")); %></td>
	<td> <% out.println(resultSet.getString("vproblem")); %></td>
	<td scope="row"> <% out.println(resultSet.getString("vcontact")); %></td>
	
	<td><div class="card" style="width:v5rem;">
	<button id="submit">
	<a href='update.jsp?u=<%=resultSet.getString("id") %>' class="btn tn-success"><b>Edit</b></a></button></div></td>
	<td><b> <form action='delete?d=<%=resultSet.getString("id") %>' method="post"> <div class="card" style="width: 5rem;">
	<input type ="submit" name="delete" value="Delete" id="<%= resultSet.getString("id")  %>" class="btn-danger"></form>
	</div></form></b></td>
	</tr>
	<% }
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
	
</table>
</body>
</html>