package com.jary.naruto.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jary.framework.core.dao.BaseMapper;
import com.jary.naruto.common.service.impl.BaseServiceImpl;
import com.jary.naruto.sys.dao.PermissionMapper;
import com.jary.naruto.sys.model.Permission;
import com.jary.naruto.sys.service.PermissionService;

@Service("permissionService")
public class PermissionServiceImpl extends BaseServiceImpl<Permission, String> implements PermissionService {

	@Autowired
	private PermissionMapper permissionMapper;

	@Override
	public Permission getEntity() {
		return new Permission();
	}

	@Override
	public BaseMapper<Permission, String> getBaseMapper() {
		return this.permissionMapper;
	}

	/* (non-Javadoc)
	 * @see com.jary.test.springmvc.sys.service.PermissionService#getPermissionsByUserId(java.lang.String)
	 */
	@Override
	public List<Permission> getPermissionsByUserId(String userId) {
		return this.permissionMapper.getByUserId(userId);
	}
}
