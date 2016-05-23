package com.jary.naruto.map.service;

import java.util.List;

import com.jary.naruto.common.service.BaseService;
import com.jary.naruto.map.model.Location;

public interface LocationService extends BaseService<Location, String> {

	@Deprecated
	public Location insert(Location location);

	@Deprecated
	public List<Location> select(Location location);

	public Location insert(String relaId, Location location);

	List<Location> selectByRelaId(String relaId);

}
