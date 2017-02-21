package com.cug2;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cug.*;

public class AjaxServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
			String text_value = request.getParameter("val");
			
			UsersCl uc = new UsersCl();
			String password = uc.AjaxSer(text_value);
			if(password!=null){
				response.getWriter().print(password);
			}else{
				response.getWriter().print(false);
			}
	
	}

}
