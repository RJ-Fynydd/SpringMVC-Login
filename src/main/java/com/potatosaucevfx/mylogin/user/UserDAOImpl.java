package com.potatosaucevfx.mylogin.user;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserDAOImpl implements UserDAO {
	
	
	@Autowired
	DataSource datasource;
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	
	@Override
	public void register(User user) {
		
		String SQL = "insert into siteusers(username, password, firstName, lastName, email, phoneNumber) values(?, password(?), ?, ?, ?, ?)";
		jdbcTemplate.update(SQL, new Object[] {user.getUsername(), user.getPassword(), 
				user.getFirstName(), user.getLastName(), user.getEmail(), user.getPhoneNumber()});
		
		System.out.println("Registered " + user.getUsername() + " as a new user!");
	}

	@Override
	public User validateUser(Login login) {
		String SQL = "select * from siteusers where username ='" + login.getUsername() +
				"' and password = password('" + login.getPassword() + "')";
		
		List<User> users = jdbcTemplate.query(SQL, new UserMapper());
		
		return users.size() > 0 ? users.get(0) : null;
	}

}
