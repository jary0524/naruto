package com.jary.naruto.map.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jary.framework.core.dao.BaseMapper;
import com.jary.framework.core.util.UUIDUtil;
import com.jary.naruto.common.service.impl.BaseServiceImpl;
import com.jary.naruto.map.dao.LocationRelationMapper;
import com.jary.naruto.map.model.LocationRelation;
import com.jary.naruto.map.service.LocationRelationService;
import com.jary.naruto.sys.util.LocationUtil;

@Service("locationRelationService")
public class LocationRelationServiceImpl extends BaseServiceImpl<LocationRelation, String> implements LocationRelationService {

	@Autowired
	private LocationRelationMapper locationRelationMapper;

	@Override
	public LocationRelation getEntity() {
		return new LocationRelation();
	}

	@Override
	public BaseMapper<LocationRelation, String> getBaseMapper() {
		return locationRelationMapper;
	}

	@Override
	public LocationRelation insert(LocationRelation locationRelation) {
		locationRelation.setrId(UUIDUtil.getUUID());
		locationRelation.setStatus(LocationUtil.STATUS_DEF);
		locationRelationMapper.insertSelective(locationRelation);
		return locationRelation;
	}
}
