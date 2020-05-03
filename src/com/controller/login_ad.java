package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.signup_admin;


@WebServlet("/login_ad")
public class login_ad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		try {
			com.bean.admin ad= new com.bean.admin();
			String name= request.getParameter("uid");
			String pass=request.getParameter("pass");
			ad.setName(request.getParameter("uid"));
			ad.setPass(request.getParameter("pass"));
			System.out.println(name);
			signup_admin sad= new signup_admin();
			int flag=sad.checkUser(ad);
			if(flag==1)
			{
				HttpSession session=request.getSession();
				session.setAttribute("user", ad);
				session.setAttribute("name", name);
				request.getRequestDispatcher("ad_entry.jsp").forward(request, response);;
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
	}

}
