package com.java.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.java.servlet.crypt;
import com.java.model.register;
import com.java.service.registerDaoImpl;


/**
 * Servlet implementation class updateCustServlet
 */
@WebServlet("/updateCustServlet")
public class updateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String key ="Bar12345Bar12345";
		crypt cry = new crypt();
		register ecust = new register();
		registerDaoImpl custupd = new registerDaoImpl();
		
		ecust.setName(request.getParameter("name"));
		ecust.setAddress(request.getParameter("address"));
		ecust.setEmail(request.getParameter("mail"));
		String pw = (String)request.getParameter("pass");
		try {
			pw = cry.encrypt(pw, key);
		} catch (Exception e) {
			e.printStackTrace();
		}
		ecust.setPassword(pw);
		ecust.setProvince(request.getParameter("province"));
		custupd.updateUser(ecust);
		
		String un = (String) session.getAttribute("username");
		if(un == "Admin"){
			response.sendRedirect("course.jsp");
		}else
			response.sendRedirect("index.jsp");
	}

}

