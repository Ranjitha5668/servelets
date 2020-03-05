package org.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import org.entity.User;
import org.module.UsersModule;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/home")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 @Resource(name = "jdbc/project")
     private DataSource dataSource;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		String  page = request.getParameter("page");
		page = page.toLowerCase();	
		
		
		
		switch(page) {
		case "home":
			request.getRequestDispatcher("index.jsp").forward(request,response);
			break;
		case "listusers":
			List<User> listUsers = new ArrayList<>();
			//x=new Usermodule(); x.li
		listUsers = new UsersModule().listUsers(dataSource);
			request.setAttribute("listUsers",listUsers);
			request.getRequestDispatcher("listUser.jsp").forward(request, response);
			break;
			default:
				request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		
		}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
