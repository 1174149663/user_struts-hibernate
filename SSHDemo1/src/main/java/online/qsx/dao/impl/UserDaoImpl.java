package online.qsx.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import online.qsx.common.UserDao;
import online.qsx.model.UserModel;

@Repository
public class UserDaoImpl {

	@Autowired
	private UserDao userDao;

	// 查询所有
	@SuppressWarnings("unchecked")
	public List<UserModel> getUsers() {
		return (List<UserModel>) userDao.getHibernateTemplate().find("from UserModel");
	}

	// 删除用户
	public void deleteUserModel(UserModel userModel) {
		userDao.getHibernateTemplate().delete(userModel);
	}

	// 查询一个用户
	public UserModel getUser(UserModel userModel) {
		return userDao.getHibernateTemplate().get(UserModel.class, userModel.getId());
	}

	// 修改用户
	public void edit(UserModel userModel) {
		userDao.getHibernateTemplate().saveOrUpdate(userModel);
	}

	// 添加用户
	public void addUser(UserModel userModel) {
		userDao.getHibernateTemplate().save(userModel);
	}

	/**
	 * 按名字查询
	 * 
	 * @param userModel
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public List<UserModel> getName(UserModel userModel) {
		String hql = "from UserModel where username like ?";
		return (List<UserModel>) userDao.getHibernateTemplate().find(hql, "%" + userModel.getUsername() + "%");
	}

	// 按id查询
	public UserModel getUserin(UserModel userModel) {
		String hql = "from UserModel where id like ?";
		return (UserModel) userDao.getHibernateTemplate().find(hql, "%" + userModel.getId() + "%");
	}
	

}
