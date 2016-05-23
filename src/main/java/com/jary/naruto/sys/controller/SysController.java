package com.jary.naruto.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/sys")
public class SysController {
	
	/**
	 * 跳转页面
	 * @param path
	 * @return
	 */
	@RequestMapping(value="/to")
	public String input(@RequestParam("path") String path){
		return path;
	}
}
