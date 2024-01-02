package com.vechicle;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Inq")
public class add_inquiry extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String vid = request.getParameter("vid");
		String vcname = request.getParameter("vcname");
		String vproblem = request.getParameter("vproblem");
		String vcontact = request.getParameter("vcontact");
		
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/inquiry?useSSL=false","root","Pethmi092019");
			PreparedStatement pst = con.prepareStatement("insert into addin(vid,vcname,vproblem,vcontact) values(?,?,?,?)");
			
			pst.setString(1, vid);
			pst.setString(2, vcname);
			pst.setString(3, vproblem);
			pst.setString(4, vcontact);
			
			
			int rowCount = pst.executeUpdate();
			dispatcher =request.getRequestDispatcher("add_inquiry.jsp");
			if(rowCount > 0) {
				request.setAttribute("status", "success");
				
				
			}else {
				request.setAttribute("status", "failed");

			}
			dispatcher.forward(request, response);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

	}
}

		