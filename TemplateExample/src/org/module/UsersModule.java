package org.module;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.entity.User;

public class UsersModule {
	public List<User> listUsers(DataSource dataSource){
		List<User> listUsers = new ArrayList<>();
		Connection connect = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		try {
			connect =   dataSource.getConnection();
			//step:2 create a sql statement string
			String query = "Select * from users";
			stmt = connect.createStatement();
			
			//step:3 execute sQl query
			rs= stmt.executeQuery(query);
			
			//step:4 process the result set
			while(rs.next()) {
				listUsers.add(new User(rs.getInt("users_id"), rs.getString("username")
						,rs.getString("email")));
			}
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return listUsers;
	}
}
