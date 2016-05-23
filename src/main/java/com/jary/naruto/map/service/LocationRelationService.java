package com.jary.naruto.map.service;

import com.jary.naruto.common.service.BaseService;
import com.jary.naruto.map.model.LocationRelation;

public interface LocationRelationService extends BaseService<LocationRelation, String> {

	public LocationRelation insert(LocationRelation locationRelation);

}
