package com.potatosaucevfx.mylogin.user;

public interface UserDAO {

	void register(User user);
	User validateUser(Login login);
}
