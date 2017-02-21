package com.cug2;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cug.*;
import com.cug2.*;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("text_name");
		String password = request.getParameter("pass_name");
		String check = request.getParameter("check_name");
		String check_c = (String)request.getSession().getAttribute("checkcode");
		//String change = request.getParameter("change_name");
		response.setContentType("text/html;charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		
		Cookie[] cookies = request.getCookies();
		boolean b = false;
		if(cookies!=null){
			for(Cookie cookie:cookies){
				String name = cookie.getName();
				if("email".equals(name)){
					b = true;
					String email_val = cookie.getValue();
					//System.out.println(email_val);
					request.setAttribute("a", 1);
					request.setAttribute("s_email", email_val);
					break;
				}
			}
		}
		if(!b){
			//System.out.println("您是第一次登录");
			//System.out.println("b="+b);
			request.setAttribute("a", 0);
			request.setAttribute("s_email", email);
			Cookie cookie = new Cookie("email",email);
			cookie.setMaxAge(24*60*60);
			response.addCookie(cookie);
		}
		
		
		UsersCl uc = new UsersCl();
		int c = uc.login(email, password);
		    //if(check.equals(change)){
		      if(check.equals(check_c)){
					if(c == 1){
							request.getRequestDispatcher("run.jsp?flag="+email).forward(request, response);
						}
					
//					else{
//							out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
//							out.println("<HTML>");
//							out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
//							out.println("  <BODY>");
//							out.println("    <div style='position:absolute;left:550px;top:100px;font-size:25px;'>输入错误，请重新输入</div>");
//							out.println("<div style='position:absolute;left:660px;top:150px;font-size:25px;'><a href='index.jsp'>确定</a></div>");
//							out.println("  </BODY>");
//							out.println("</HTML>");
//							out.flush();
//							out.close();
//						}
					
					else if(c == 2){
						out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
						out.println("<HTML>");
						out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
						out.println("  <BODY>");
						out.println("    <div style='position:absolute;left:550px;top:100px;font-size:25px;'>密码输入错误，请重新输入</div>");
						out.println("<div style='position:absolute;left:660px;top:150px;font-size:25px;'><a href='index.jsp'>确定</a></div>");
						out.println("  </BODY>");
						out.println("</HTML>");
						out.flush();
						out.close();
					}
		    }else{
						out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
						out.println("<HTML>");
						out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
						out.println("  <BODY>");
						out.println("    <div style='position:absolute;left:550px;top:100px;font-size:25px;'>验证码错误，请重新输入</div>");
						out.println("<div style='position:absolute;left:660px;top:150px;font-size:25px;'><a href='index.jsp'>确定</a></div>");
						out.println("  </BODY>");
						out.println("</HTML>");
						out.flush();
						out.close();
					}
		}
}

