package com.cug2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cug.*;

public class HelloServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String surepasswd = request.getParameter("surepasswd");
		
		PrintWriter out = response.getWriter();
		

//		System.out.println(email);
//		System.out.println(password);
		if(password.equals(surepasswd)){
	    	UsersCl uc = new UsersCl();
	    	if(uc.Hello(email, password)){
				request.getRequestDispatcher("save.jsp").forward(request, response);
	    	}else{
	    		request.getRequestDispatcher("err.jsp").forward(request, response);
	    	}
		}else{
			out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
			out.println("<HTML>");
			out.println("  <HEAD><meta charset=\"utf-8\"><TITLE>A Servlet</TITLE></HEAD>");
			out.println("  <BODY>");
			out.println("    <div style='position:absolute;left:550px;top:100px;font-size:25px;'>密码不一致，请重新输入</div>");
			out.println("<div style='position:absolute;left:660px;top:150px;font-size:25px;'><a href='Sign in.jsp'>确定</a></div>");
			out.println("  </BODY>");
			out.println("</HTML>");
			out.flush();
			out.close();
		}
	}
}
