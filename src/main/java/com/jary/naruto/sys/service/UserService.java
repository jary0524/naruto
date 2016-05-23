package com.jary.naruto.sys.service;

import java.util.List;

import com.jary.naruto.common.service.BaseService;
import com.jary.naruto.sys.model.Permission;
import com.jary.naruto.sys.model.Role;
import com.jary.naruto.sys.model.User;

public interface UserService extends BaseService<User, String> {

	public User getByAccount(String account);

	/**
	 * @param username
	 * @return
	 */
	public User getByUsername(String username);

	/**
	 * @param username
	 * @return
	 */
	public User insert(User user);

	/**
	 * @param username
	 * @return
	 */
	public User updateByPk(User user);
	
	public List<Role> getRolesByUserId(String userId);
	
	public List<Permission> getPermissionsByUserId(String userId);

	public void updateTest(User user);
	
	public List<User> getAll();

	/**
	 * 注册
	 * @param user
	 */
	public User regiest(User user);

	/**
	 * 修改密码
	 * @param user
	 * @param newPassword
	 */
	public User modifyPassord(User user, String newPassword);
}
