package com.jary.naruto.sys.util;

import java.util.List;

import com.jary.naruto.map.model.Location;

/**
 * @author hjl
 * @date 2016年5月26日 下午2:47:15 
 */
public class LocationUtil {
	//定位状态
	public static final int STATUS_DEF = 0; //初始化
	public static final int STATUS_ON = 1; //正常
	public static final int STATUS_OFF = 2; //失效
	
	/**
	 * 取经纬度的中间值至于最后一个位置
	 * @param list
	 * @return
	 */
	public static Location getMidLocation(List<Location> list) {
		if (list==null || list.size()<=0) {
			return null;
		}
		Location mid = new Location();
		mid.setName("中间位置");
		//纬度
		Double latitudeMax = Double.MIN_VALUE;
		Double latitudeMin = Double.MAX_VALUE;
		//经度
		Double longitudeMax = Double.MIN_VALUE;
		Double longitudeMin = Double.MAX_VALUE;
		for (Location location : list) {
			if (location.getLatitude()>latitudeMax) {
				latitudeMax = location.getLatitude();
			}
			if (location.getLatitude()<latitudeMin) {
				latitudeMin = location.getLatitude();
			}
			if (location.getLongitude()>longitudeMax) {
				longitudeMax = location.getLongitude();
			}
			if (location.getLongitude()<longitudeMin) {
				longitudeMin = location.getLongitude();
			}
		}
		Double latitude = (latitudeMax + latitudeMin) / 2;
		mid.setLatitude(latitude);
		Double longitude = (longitudeMax + longitudeMin) / 2;
		mid.setLongitude(longitude);
		return mid;
	}
}
