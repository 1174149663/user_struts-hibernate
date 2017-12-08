package online.qsx.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import online.qsx.dao.impl.UserDaoImpl;
import online.qsx.model.UserModel;

@Service
public class UserServerImpl {

	@Autowired
	private UserDaoImpl userDaoImpl;

	public List<UserModel> getUsers() {
		return userDaoImpl.getUsers();
	}

	public void deleteUserModel(UserModel userModel) {
		userDaoImpl.deleteUserModel(userModel);
	}

	public UserModel getUser(UserModel userModel) {
		return userDaoImpl.getUser(userModel);
	}

	public void edit(UserModel userModel) {
		userDaoImpl.edit(userModel);
	}

	public void addUserModel(UserModel userModel) {
		userDaoImpl.addUser(userModel);
	}

	public List<UserModel> getName(UserModel userModel) {
		return userDaoImpl.getName(userModel);
	}

	public UserModel getUserin(UserModel userModel) {

		return userDaoImpl.getUserin(userModel);
	}

	public List<UserModel> getUsersUP(int pageno) {
		// TODO Auto-generated method stub
		return null;
	}

	public List<UserModel> getUsersDown(int pageno) {
		// TODO Auto-generated method stub
		return null;
	}

}
