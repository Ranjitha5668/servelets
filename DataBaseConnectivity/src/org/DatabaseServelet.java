package org;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.sql.DataSource;
import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DatabaseServelet
 */
@WebServlet("/DatabaseServelet")
public class DatabaseServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       @Resource(name = "jdbc/project")
       private DataSource dataSource;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DatabaseServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*	response.getWriter().append("Served at: ").append(request.getContextPath());*/
		//Step:1 initialize connection objects
		PrintWriter out = response.getWriter();
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			connect =   dataSource.getConnection();
			//step:2 create a sql statement string
			String query = "Select * from person";
			stmt = connect.createStatement();
			
			//step:3 execute sQl query
			rs= stmt.executeQuery(query);
			
			//step:4 process the result set
			while(rs.next()) {
				out.print("<br/>"+rs.getString("name"));
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
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
