package com.jary.naruto.map.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author hjl
 * @date 2016年5月25日 下午5:57:20 
 */
@Controller
@RequestMapping("/map")
public class MapController {


	@RequestMapping("")
	public String index() {
		return "map/replaying-historical-running";
	}
	
	@RequestMapping("/geolocation")
	public String geolocation() {
		return "map/geolocation";
	}
}
