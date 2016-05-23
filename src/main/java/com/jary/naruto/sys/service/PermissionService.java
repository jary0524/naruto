package com.jary.naruto.sys.service;

import java.util.List;

import com.jary.naruto.common.service.BaseService;
import com.jary.naruto.sys.model.Permission;

public interface PermissionService extends BaseService<Permission, String> {

	/**
	 * @param userId
	 * @return
	 */
	public List<Permission> getPermissionsByUserId(String userId);
	
}
