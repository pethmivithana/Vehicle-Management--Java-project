package com.vechicle;



import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdateInquiry")
public class update extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<h1><center>Registration Sucessfully</center><h1>");
		
		String id = request.getParameter("UID");
		String vid = request.getParameter("vid");
		String vcname = request.getParameter("vcname");
		String vproblem = request.getParameter("vproblem");
		String vcontact = request.getParameter("vcontact");

		
		Connection con;
		PreparedStatement pst;
		ResultSet rs;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con =  DriverManager.getConnection("jdbc:mysql://localhost:3306/inquiry?useSSL=false","root","Pethmi092019");
			pst = con.prepareStatement("update addin set vid=?, vcname=?, vproblem=?, vcontact=? where id=?");
			pst.setString(1, vid);
			pst.setString(2, vcname);
			pst.setString(3, vproblem);
			pst.setString(4, vcontact);

			pst.setString(5, id);
			pst.executeUpdate();
			response.sendRedirect("viewTable.jsp");
			
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			out.println(e.getMessage());
		}
	}

}