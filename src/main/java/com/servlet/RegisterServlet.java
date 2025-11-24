package com.servlet;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.Hibernate;
import com.entity.User;

@WebServlet("/userRegister")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String fullName = req.getParameter("fullName");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String password = req.getParameter("password");

        User u = new User(fullName, email, phone, password);
        
        UserDao dao=new UserDao(Hibernate.getSessionFactory());
		boolean f=dao.saveuser(u);
		
		HttpSession session = req.getSession();
 		
		if(f) {
			session.setAttribute("msg", "Register Successfully");
			resp.sendRedirect("register.jsp");
			//System.out.println("Register Successfully");
		}else {
			session.setAttribute("msg","Something wrong on server");
			//System.out.println("Something wrong on server");
		}
    }
}
