package com.cug2;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cug.*;

public class LookServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			
		int pageNow = Integer.parseInt(request.getParameter("pageNow"));
		
		UsersCl ubc = new UsersCl();
		
		ArrayList al = ubc.getUsersByPage(pageNow);
		int pageCount = ubc.getPageCount();
		
		request.setAttribute("result", al);
		request.setAttribute("pageCount", pageCount+"");
		request.setAttribute("pageNow", pageNow+"");
		
		request.getRequestDispatcher("look.jsp").forward(request, response);
			
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
			this.doGet(request, response);
	}

}
