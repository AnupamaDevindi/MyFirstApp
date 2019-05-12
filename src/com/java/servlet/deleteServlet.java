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
import com.java.service.registerDao;
import com.java.service.registerDaoImpl;


@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public deleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		registerDao cd = new registerDaoImpl();
		
		crypt cry = new crypt();
		String key="Bar12345Bar12345";
		String password = request.getParameter("password1");
		String email = request.getParameter("email");
		String password1 = request.getParameter("password2");
		String submitType = request.getParameter("submit");
		
		try {
			password = cry.encrypt(password,key);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		register c1 = cd.getUser(email, password);
		
		register c = new register();
		System.out.println("qasdqw");
		c.setPassword(password1);
		HttpSession session=request.getSession();
		try {
			System.out.println(password);
			PreparedStatement ps;

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/courseweb","root","root");
			java.sql.Statement stmt =con.createStatement();
			String SQL=("select *from login where Password='"+password+"'");
			ResultSet rs=stmt.executeQuery(SQL);
			if(rs.next()){
				cd.deleteUser(c);
				request.setAttribute("message2", "Your account has been deleted");
				session.invalidate();
				request.getRequestDispatcher("login.jsp").forward(request, response);
				return;}
	
		else {
			request.setAttribute("message1", "Enter valid password to delete your account");
			request.getRequestDispatcher("deleteAccount.jsp").forward(request, response);
		}}
		catch(Exception e){
			System.out.println("aq"+e);
		}
		
	}

}

