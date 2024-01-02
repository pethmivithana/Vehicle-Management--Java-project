<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
       <div class="centered-button">
    <button><a href="viewTable.jsp">Manage Inquiry</a></button>
</div>
    <div class="wrapper">
        <form method="post" action="Inq" >
            <h1>Vehicle Inquiries</h1><br><br>
            <div class="input-box">
                <input type="text" name="vid" id="vid" placeholder="Vehicle Id" required>
            </div>
            <div class="input-box">
                <input type="text" name="vcname" id="vcname" placeholder="Customer Name" required>
            </div>
            <div class="input-box">
                <input type="text"  name="vproblem" id="vproblem" placeholder="Problem Description" required>
            </div>
            <div class="input-box">
                <input type="text"  name="vcontact" id="vcontact" placeholder="Customer Contact Number" required>
            </div>
            <br><br><br><br>
            <button type="submit" class="btn">Save</button><br><br>
         </form>

       
      
    </div>
</body>
</html>