package com.service;

import java.util.List;

import com.bean.User;

public interface UserService {
	public void saveUser(User user);
    public void deleteUser(User user);
    public void updateUser(User user);
    public User findUserById(int id);
    public List<User> findAllUsers(int yema);
    public User login(String username, String password);
    public void findZongye();
    public List<User> findStr(User u,int yema);
    public String findByusername(String username);
    public String finds(String userid);
 

}
