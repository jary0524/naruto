package com.jary.naruto.map.controller;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.jary.framework.core.util.StringUtil;
import com.jary.naruto.common.model.Result;
import com.jary.naruto.map.model.Location;
import com.jary.naruto.map.service.LocationService;
import com.jary.naruto.sys.model.User;
import com.jary.naruto.sys.service.UserService;
import com.jary.naruto.sys.util.LocationUtil;

/**
 * @author hjl
 * @date 2016年5月25日 下午5:57:20 
 */
@Controller
@RequestMapping("/location")
public class LocationController {
	
	@Autowired
	private LocationService locationService;
	
	@Autowired
	private UserService userService;


	@RequestMapping("")
	public String index() {
		return "map/replaying-historical-running";
	}
	
	/**
	 * 修改记录
	 * http://localhost:8888/naruto/location/save.shtml?longitude=113.645512&latitude=30.676378&name=%E5%85%AC%E5%8F%B8
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/save")
	@ResponseBody
	public Result save(@RequestParam(value="relaId", defaultValue="123456") String relaId, Location location){
		try {
			location = this.locationService.insert(relaId, location);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String dataJson = JSON.toJSONString(location);
		return Result.getSuccessResult(dataJson);
	}
	
	/**
	 * 修改记录
	 * http://localhost:8888/naruto/location/save.shtml?longitude=113.645512&latitude=30.676378&name=%E5%85%AC%E5%8F%B8
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/select")
	@ResponseBody
	public Result select(Location location){
		List<Location> list = null;		
		try {
			//TODO 待改进，放到session中
			Subject currentUser = SecurityUtils.getSubject();
			User user = userService.getByAccount(currentUser.getPrincipal().toString());
			list = this.locationService.selectByRelaId(user.getUserId());
			if (list==null || list.size()<=0) {
				return Result.getFailureResult("无位置信息！");
			}
			//取经纬度的中间值至于最后一个位置
			Location mid = LocationUtil.getMidLocation(list);
			list.add(mid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return Result.getSuccessResult(list);
	}
}
