package com.cug2;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




import com.cug.CreateConnection;
import com.cug.UsersCl;

public class EditServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("name");
		String sex = request.getParameter("sex");
		String birth = request.getParameter("birth");
		String place = request.getParameter("place");
		String grade = request.getParameter("grade");
		String pro = request.getParameter("pro");
		String num = request.getParameter("num");
		String email = request.getParameter("email");
		String addre = request.getParameter("addre");
		String post = request.getParameter("post");
		UsersCl edit = new UsersCl();
		
		boolean a = edit.Edit(name, sex, birth, place, grade, pro, num, email, addre, post);
		
		if(a){
		     request.getRequestDispatcher("save2.jsp").forward(request,response);
		  }else{
			  request.getRequestDispatcher("err.jsp").forward(request,response);
		  }
}
}


