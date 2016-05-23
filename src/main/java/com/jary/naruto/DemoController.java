package com.jary.naruto;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * 示例
 * @author jary0524
 * @date 2016年3月12日 下午4:32:05 
 */
@RequestMapping("/demo")
public class DemoController {
	
	@RequestMapping("/to")
	public String to(@RequestParam(value="path", defaultValue="index") String path) {
		return path;
	}
	
	public static void main(String[] args) {
		System.out.println("Hello World!!!");
	}
}
