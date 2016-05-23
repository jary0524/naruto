package com.jary.naruto.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jary.framework.core.dao.BaseMapper;
import com.jary.naruto.common.service.impl.BaseServiceImpl;
import com.jary.naruto.sys.dao.RoleMapper;
import com.jary.naruto.sys.model.Role;
import com.jary.naruto.sys.service.RoleService;

@Service("roleService")
public class RoleServiceImpl extends BaseServiceImpl<Role, String> implements RoleService {

	@Autowired
	private RoleMapper roleMapper;

	@Override
	public Role getEntity() {
		return new Role();
	}

	@Override
	public BaseMapper<Role, String> getBaseMapper() {
		return this.roleMapper;
	}
	
	/* (non-Javadoc)
	 * @see com.jary.test.springmvc.sys.service.RoleService#getRolesByUserId(java.lang.String)
	 */
	@Override
	public List<Role> getRolesByUserId(String userId) {
		return this.roleMapper.selectByUserId(userId);
	}
}
