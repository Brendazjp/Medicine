package com.dao;

import java.util.List;

import com.bean.User;

public interface UserDAO {
	public void saveUser(User user);
	public void updateUser(User user);
	public void deleteUser(User user);
	public User findUserById(int id);
	public List<User> findAllUser(int yema);
	public User findUserByUsername(String username);
	public long findCount();
	public List<User>findStr(String sql,int yema);
	public User find(String sql);
	
}
