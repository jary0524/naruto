package com.jary.naruto.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * 仪表盘
 * @author hjl
 * @date 2016年5月25日 下午2:32:06 
 */
@Controller
@RequestMapping("/admin/table")
public class TableController {
	
	@RequestMapping("")
	public String index() {
		return "admin/table";
	}
}
