package com.jary.naruto.common.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * 
 * @Classname: Page
 * @Description: 分页对象
 * @Author: linwb
 * @Date: 2013-9-14 下午12:51:03
 * @Version:V1.0
 */
@SuppressWarnings("serial")
public class Page<T> implements Serializable {
	
	public Page() {
	}
	
	public Page(int pageNo,int pageSize) {
		this.pageNo=pageNo;
		this.pageSize=pageSize;
	}
	
	public Class<T> sourceClass;
	
	/**
	 * 数据行
	 */
	private List<T> rows = new ArrayList<T>();
	/**
	 * 每页数据
	 */
	private int pageSize=20;
	/**
	 * 当前页码
	 */
	private int pageNo = 1;
	/**
	 * 总记录数
	 */
	private int total;
	/**
	 * 总页码
	 */
	private int pageTotal;
	/**
	 * 排序方式
	 * 第一个String放排序字段，
	 * 第二个String放排序方式，参考SystemConstants.ASC和SystemConstants.DESC
	 */
	private Map<String,String> orderMap=new HashMap<String, String>();
	
	/**
	 * 用于查询的请求
	 */
	private String search;
	/**
	 * 用于排序的方式
	 */
	private String order;
	/**
	 * 用于排序的列名
	 */
	private String sort;
	
	/**
	 * 页面过滤条件
	 */
	private PageFilter pageFilter;
	
	/**
	 * 分组属性
	 */
	private List<String> groupNames=new ArrayList<String>();
	/**
	 * 操作信息
	 */
	private String operMessage="";
	
	private String errorMessage = "";
	
	/**
	 * excel导出所需信息
	 */
	private Map<String,Object>  toExcelMap;
	
	//getter setter methods========================================
	
	public int getPageNo() {
		return pageNo;
	}


	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	
	public String getOperMessage() {
		return operMessage;
	}

	public void setOperMessage(String operMessage) {
		this.operMessage = operMessage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public Map<String, String> getOrderMap() {
		return orderMap;
	}

	public void setOrderMap(Map<String, String> orderMap) {
		this.orderMap = orderMap;
	}

	public List<String> getGroupNames() {
		return groupNames;
	}

	public void setGroupNames(List<String> groupNames) {
		this.groupNames = groupNames;
	}

	public int getPageTotal() {
		return pageTotal;
	}

	public void setPageTotal(int pageTotal) {
		this.pageTotal = pageTotal;
	}

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public PageFilter getPageFilter() {
		return pageFilter;
	}

	public void setPageFilter(PageFilter pageFilter) {
		this.pageFilter = pageFilter;
	}

	public Class<T> getSourceClass() {
		return sourceClass;
	}

	public void setSourceClass(Class<T> sourceClass) {
		this.sourceClass = sourceClass;
	}

  /**
   * 
   * @Methodname: getErrorMessage
   * @Discription:
   * @Param: errorMessage
   * @Return: Page
   * @Throws
   * 
   */
  public String getErrorMessage() {
    return errorMessage;
  }

  /**
   * 
   * @Methodname: setErrorMessage
   * @Discription:
   * @Param: errorMessage
   * @Return: Page
   * @Throws
   * 
   */
  public void setErrorMessage(String errorMessage) {
    this.errorMessage = errorMessage;
  }

public Map<String, Object> getToExcelMap() {
	return toExcelMap;
}

public void setToExcelMap(Map<String, Object> toExcelMap) {
	this.toExcelMap = toExcelMap;
}

  
}
