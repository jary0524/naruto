package com.jary.naruto.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jary.framework.core.dao.BaseMapper;
import com.jary.framework.core.util.DateUtil;
import com.jary.framework.core.util.UUIDUtil;
import com.jary.naruto.common.exceotion.BaseException;
import com.jary.naruto.common.service.impl.BaseServiceImpl;
import com.jary.naruto.common.shiro.PasswordUtil;
import com.jary.naruto.sys.dao.UserMapper;
import com.jary.naruto.sys.model.Permission;
import com.jary.naruto.sys.model.Role;
import com.jary.naruto.sys.model.User;
import com.jary.naruto.sys.service.PermissionService;
import com.jary.naruto.sys.service.RoleService;
import com.jary.naruto.sys.service.UserService;
import com.jary.naruto.sys.util.UserUtil;

@Service("userService")
public class UserServiceImpl extends BaseServiceImpl<User, String> implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Autowired
	private PasswordUtil passwordUtil;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private PermissionService permissionService;
	
	@Override
	public void updateTest(User user) {
		userMapper.updateByPrimaryKey(user);
		userMapper.throwException();
//		throw new Exception("测试Spring的事务管理是否生效！");
	}


	@Override
	public List<User> getAll() {
		return userMapper.getAll();
	}

	@Override
	public User getEntity() {
		return new User();
	}

	@Override
	public BaseMapper<User, String> getBaseMapper() {
		return this.userMapper;
	}


	/* (non-Javadoc)
	 * @see com.jary.test.springmvc.sys.service.UserService#getByAccount(java.lang.String)
	 */
	@Override
	public User getByAccount(String account) {
		return this.userMapper.getByAccount(account);
	}


	/* (non-Javadoc)
	 * @see com.jary.test.springmvc.sys.service.UserService#getByUsername(java.lang.String)
	 */
	@Override
	public User getByUsername(String username) {
		return this.userMapper.getByAccount(username);
	}


	/* (non-Javadoc)
	 * @see com.jary.test.springmvc.sys.service.UserService#getRolesByUsername(java.lang.String)
	 */
	@Override
	public List<Role> getRolesByUserId(String userId) {
		return this.roleService.getRolesByUserId(userId);
	}


	/* (non-Javadoc)
	 * @see com.jary.test.springmvc.sys.service.UserService#getPermissionsByUsername(java.lang.String)
	 */
	@Override
	public List<Permission> getPermissionsByUserId(String userId) {
		return this.permissionService.getPermissionsByUserId(userId);
	}


	/* (non-Javadoc)
	 * TODO
	 * @see com.jary.test.springmvc.sys.service.UserService#regiest(com.jary.test.springmvc.sys.model.User)
	 */
	@Override
	public User regiest(User user) {
		user.setUserId(UUIDUtil.getUUID());
		this.passwordUtil.updatePassword(user);
		this.insert(user);
		return user;
	}


	/* (non-Javadoc)
	 * @see com.jary.test.springmvc.sys.service.UserService#modifyPassord(com.jary.test.springmvc.sys.model.User, java.lang.String)
	 */
	@Override
	public User modifyPassord(User user, String newPassword) {
		User user_db = this.getByAccount(user.getAccount());
		if (this.passwordUtil.validatePassword(user_db, user.getPassword())) {
			user.setPassword(newPassword);
			user = this.passwordUtil.updatePassword(user);
			this.updateByPk(user);
		} else {
			throw new BaseException("原密码错误！");
		}
		return user;
	}


	/* 
	 * 
	 */
	@Override
	public User insert(User user) {
		user.setStatus(UserUtil.STATUS_ON);
		user.setCreateTime(DateUtil.getCurrentDate());
		this.userMapper.insertSelective(user);
		return user;
	}

	/* 
	 * 
	 */
	@Override
	public User updateByPk(User user) {
		//user.setUpdateTime(DateUtil.getCurrentDate());
		this.update(user);
		return user;
	}
}
