package com.jary.naruto;

import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 示例
 * @author jary0524
 * @date 2016年3月12日 下午4:32:05 
 */
public class IndexController {
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
}
