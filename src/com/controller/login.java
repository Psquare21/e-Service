package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.signup;
import com.dao.loginModel;
import com.dao.signupModel;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	System.out.println("Bhim");
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		try {
			com.bean.signup s=new com.bean.signup();
			String uname=request.getParameter("uid");
			s.setUid(request.getParameter("uid"));
			s.setPass(request.getParameter("pass"));
			System.out.println(uname);
			signupModel sm=new signupModel();
			int flag=sm.checkUser(s);
			if(flag==1)
			{
				HttpSession session=request.getSession(true);
				String uid=request.getParameter("uid");
				loginModel lm= new loginModel();
				signup s1=lm.searchUser(uid);
				session.setAttribute("user", s1);
				session.setAttribute("abc1", uname);
				session.setMaxInactiveInterval(2*60*60);
				Cookie ck=new Cookie("abc", uname);
				session.setAttribute("active", true);
				ck.setMaxAge(60*60*2);

				response.sendRedirect("xyz.jsp");
				
			}
			else
			{
				out.println("User Name Or Password Are Incorrect");
				request.getRequestDispatcher("Login.jsp").include(request, response);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}

