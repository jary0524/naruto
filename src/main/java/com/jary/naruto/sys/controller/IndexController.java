package com.jary.naruto.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 示例
 * @author jary0524
 * @date 2016年3月12日 下午4:32:05 
 */
@Controller
public class IndexController {
	
	@RequestMapping("/")
	public String index() {
		return "admin/dashboard";
//		return "map/replaying-historical-running";
	}
	
	@RequestMapping("/index")
	public String index2() {
		return "index";
	}
}
