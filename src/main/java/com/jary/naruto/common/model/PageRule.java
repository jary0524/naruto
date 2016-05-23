package com.jary.naruto.common.model;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * @Classname: PageRule
 * @Description: 页面查询条件
 * @Author: linwb
 * @Date: 2013-11-10 上午09:00:48
 * @Version:V1.0
 */
public class PageRule implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -5826077516271437700L;

	private String field;
	
	private String op;
	
	private List<String> data;

	public String[] getDataString() {
		String[] mydata=new String[data.size()];
		return data.toArray(mydata);
	}
	
	public String getField() {
		return field;
	}

	public void setField(String field) {
		this.field = field;
	}

	public String getOp() {
		return op;
	}

	public void setOp(String op) {
		this.op = op;
	}

	public List<String> getData() {
		return data;
	}

	public void setData(List<String> data) {
		this.data = data;
	}

}
