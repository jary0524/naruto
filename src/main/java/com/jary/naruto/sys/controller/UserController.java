package com.jary.naruto.sys.controller;

import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.jary.framework.core.util.POIUtil;
import com.jary.naruto.sys.model.User;
import com.jary.naruto.sys.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	@Autowired
	private UserService userService;
	
	public void helloWorld() {
		System.out.println("HelloWorld Constructor...");
	}
	
	/**
	 * 使用@ModelAttribute实现参数回显
	 * @param id
	 * @param map
	 */
	@ModelAttribute
	public void getUser(@RequestParam(value="userId",required=false) String userId,
			Map<String, Object> map){
		if(userId != null){
			map.put("user", userService.getById(userId));
			map.put("user1", userService.getById(userId));
			map.put("user2", userService.getById(userId));
		}
	}

	/**
	 * 新增记录
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/user", method=RequestMethod.POST)
	public String add(User user){
		this.userService.save(user);
		return "redirect:/sys/users";
	}
	
	/**
	 * 跳转到修改页面
	 * @param id
	 * @param map
	 * @return
	 */
	@RequestMapping(value="/user/{id}", method=RequestMethod.GET)
	public String input(@PathVariable("id") String id, Map<String, Object> map){
		map.put("user", userService.getById(id));
		return "sys/input";
	}
	
	/**
	 * 修改记录
	 * @param user
	 * @return
	 */
	@RequestMapping(value="/user", method=RequestMethod.PUT)
	public String update(@ModelAttribute("user") User user){
		try {
			this.userService.update(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "redirect:/sys/users";
	}
	
	/**
	 * 显示记录列表
	 * @param map
	 * @return
	 */
	@RequiresRoles("admin")
	@RequestMapping("/users")
	public String list(Map<String, Object> map){
		map.put("userList", this.userService.getAll());
		return "sys/listUser";
	}

	/**
	 * 导出，excel文件
	 * @param request
	 * @param response
	 */
	@RequestMapping("/export")
	public void export(HttpServletRequest request, HttpServletResponse response) {
		List<User> userList = this.userService.getAll();//查询所有的数据
		String excelHead[] = new String []{"序号"/*,"名称","年龄","生日","地址","学号"*/};
	    String[] keys = new String []{"lastName"/*,"名称","年龄","生日","地址","学号"*/};
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd_HHmmss");
		String filename = "用户列表" + format.format(new Date().getTime())+".xlsx";
		try(OutputStream out = response.getOutputStream()) {

			byte[] fileNameByte = filename.getBytes("UTF-8");
		    filename = new String(fileNameByte, "ISO8859-1");
		    
			response.setContentType("application/ms-excel;charset=UTF-8");
			response.setHeader("Content-Disposition","attachment;filename=" + filename);
			//excelService.exportExcel(haders,userList,out);
			//ByteArrayOutputStream out = new ByteArrayOutputStream();
		    // 第一步，创建一个webbook，对应一个Excel文件
			Workbook wb = new XSSFWorkbook();
		    // 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
		    Sheet sheet = wb.createSheet("档期排序表");
		    // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
		    @SuppressWarnings("unused")
			Row row = sheet.createRow((int) 0);
		    // 第四步，创建单元格，并设置值表头 设置表头居中

		    //设置表头
		    POIUtil.writeExcelTitle(wb, excelHead);
		    JSONArray jsonArray = (JSONArray) JSONArray.toJSON(userList);
			POIUtil.writeExcelContent(wb, 0, jsonArray, keys);
		    wb.write(out);
		} catch (Exception e) {
			System.out.println("error");
		}finally{
		}
	}

	/**
	 * 返回json类型的数据
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/usersJson")
	public List<User> listJson(){
		return this.userService.getAll();
	}
	
	/**
	 * 根据id删除记录
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/user/{id}", method=RequestMethod.DELETE)
	public String delete(@PathVariable("id") String id){
		this.userService.deleteById(id);
		return "redirect:/sys/users";
	}
	
	@RequestMapping("/hello")
	public String hello(){
		System.out.println("success");
		System.out.println(userService);
		return "success";
	}

	/**
	 * @return the userService
	 */
	public UserService getUserService() {
		return userService;
	}

	/**
	 * @param userService the userService to set
	 */
	public void setUserService(UserService userService) {
		this.userService = userService;
	}
	
	
}
