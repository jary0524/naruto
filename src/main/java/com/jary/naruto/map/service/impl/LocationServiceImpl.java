package com.jary.naruto.map.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jary.framework.core.dao.BaseMapper;
import com.jary.framework.core.util.DateUtil;
import com.jary.framework.core.util.UUIDUtil;
import com.jary.naruto.common.service.impl.BaseServiceImpl;
import com.jary.naruto.map.dao.LocationMapper;
import com.jary.naruto.map.model.Location;
import com.jary.naruto.map.model.LocationExample;
import com.jary.naruto.map.model.LocationExample.Criteria;
import com.jary.naruto.map.model.LocationRelation;
import com.jary.naruto.map.service.LocationRelationService;
import com.jary.naruto.map.service.LocationService;
import com.jary.naruto.sys.util.LocationUtil;

@Service("locationService")
public class LocationServiceImpl extends BaseServiceImpl<Location, String> implements LocationService {

	@Autowired
	private LocationMapper locationMapper;

	@Autowired
	private LocationRelationService locationRelationService;

	@Override
	public Location getEntity() {
		return new Location();
	}

	@Override
	public BaseMapper<Location, String> getBaseMapper() {
		return locationMapper;
	}

	@Override
	public Location insert(Location location) {
		location.setLocationId(UUIDUtil.getUUID());
		location.setCreateTime(DateUtil.getCurrentDate());
		location.setStatus(LocationUtil.STATUS_DEF);
		locationMapper.insertSelective(location);
		return location;
	}

	@Override
	public List<Location> select(Location location) {
		LocationExample example = new LocationExample();
		Criteria criteria =  example.createCriteria();
		criteria.andCreateTimeBetween(DateUtil.changeDate(DateUtil.getCurrentDate(), DateUtil.DAY, -30), DateUtil.getCurrentDate());
		example.setOrderByClause("create_time DESC");
		return locationMapper.selectByExample(example);
	}

	@Override
	public Location insert(String relaId, Location location) {
		location = insert(location);
		LocationRelation locationRelation = new LocationRelation();
		locationRelation.setLocationId(location.getLocationId());
		locationRelation.setRelaId(relaId);
		locationRelationService.insert(locationRelation);
		return location;
	}

	@Override
	public List<Location> selectByRelaId(String relaId) {
		return locationMapper.selectByRelaId(relaId);
	}
}
