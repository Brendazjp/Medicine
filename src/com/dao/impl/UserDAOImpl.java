package com.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.bean.User;
import com.dao.UserDAO;

public class UserDAOImpl extends HibernateDaoSupport implements UserDAO {

	public void deleteUser(User user) {
		this.getHibernateTemplate().delete(user);
	}

	@SuppressWarnings("unchecked")
	public List<User> findAllUser(int yema) {
		String sql = "from User u order by u.id desc";
		return (List<User>)getSession().createQuery(sql)
		                               .setFirstResult(yema)
		                               .setMaxResults(15)
		                               .list();
	}
    @SuppressWarnings("unchecked")
	public List<User>findStr(String sql,int yema){
    	return (List<User>)getSession().createQuery(sql)
    	                               .setFirstResult(yema)
    	                               .setMaxResults(17)
    	                               .list();    	                              
    }
	public User findUserById(int id) {

		return (User) this.getHibernateTemplate().get(User.class, id);
	}

	public User findUserByUsername(String username) {
		
		return (User)getSession().createQuery("from User u where u.username = :username")
        .setParameter("username", username)
        .uniqueResult();
	}

	public void saveUser(User user) {
                this.getHibernateTemplate().save(user);
	}

	public void updateUser(User user) {

		this.getHibernateTemplate().update(user);
	}
	public long findCount(){
		long count=(long)getSession().createQuery("from User").list().size();
	         
		return count;
	}

	public User find(String sql) {
		
		return (User)getSession().createQuery(sql).uniqueResult();
	}

}
