package com.jary.naruto.sys.service;

import java.util.List;

import com.jary.naruto.common.service.BaseService;
import com.jary.naruto.sys.model.Role;

public interface RoleService extends BaseService<Role, String> {
	
	/**
	 * @param userId
	 * @return
	 */
	public List<Role> getRolesByUserId(String userId);
	
}
