<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import = "java.sql.* "%>
    <%@page import="java.sql.Statement" %>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.DriverManager" %>
	<%@page import="java.sql.Connection" %>
    
<!DOCTYPE.html>
<html lang = "en">
<head>
    <title>Togo serivice</title>
  
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Add user profile</title>

<head>
    <style>
  body, html {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}


.wrapper {
    text-align: center;
    padding: 20px;
}


form {
    max-width: 400px;
    margin: 0 auto;
    background: rgb(95, 158, 160);
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    height: 500px;
}


h1 {
    font-size: 24px;
    margin-bottom: 20px;
}

.input-box {
    position: relative;
    margin-bottom: 20px;
}

.input-box input {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
}

.input-box i {
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    right: 10px;
}


.remember-forgot {
    margin-bottom: 20px;
    text-align: left;
}


.btn {
    background: #007bff;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background 0.3s;
}

.btn:hover {
    background: #0044a0;
}

/* Style the "Manage Inquiry" button */
.centered-button {
    text-align: center;
    margin-left:700px;
}

.centered-button button {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    text-decoration: none;
}

.centered-button button a {
    color: #fff;
    text-decoration: none;
}

    </style>
</head>
<body>

    <div class="wrapper">
    
 <%
	String u = request.getParameter("u");
	Integer ID = Integer.parseInt(u); 
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/inquiry?characterEncoding=utf8","root","Pethmi092019");
	Statement statement = connection.createStatement();
	ResultSet resultSet = statement.executeQuery("select * from addin where id='"+ID+"'");
%>
    
        <form method="post" action="UpdateInquiry" >
        <h1> Inquiries Update</h1><br><br>
        
<%
 while(resultSet.next()){
%>

      <div class="form-container"><input type="hidden" class="form-control" name="UID" value=" <% out.print(resultSet.getString("id")); %>"> </div>      
            <div class="input-box">
                <input type="text" name="vid" id="vid" value=" <% out.print(resultSet.getString("vid")); %>">
            </div>
            <div class="input-box">
                <input type="text" name="vcname" id="vcname" value=" <% out.print(resultSet.getString("vcname")); %>">
            </div>
            <div class="input-box">
                <input type="text"  name="vproblem" id="vproblem" value=" <% out.print(resultSet.getString("vproblem")); %>">
            </div>
            <div class="input-box">
                <input type="text"  name="vcontact" id="vcontact" value=" <% out.print(resultSet.getString("vcontact")); %>">
            </div>
            
            
<%
 
 }

%>
<div class="card-footer text-center">
	
	<button type="submit" class="btn">Update</button><br><br>

</div>
</form>
<br><br><br>
</body>
</html>