package com.jary.naruto.common.dto;

import java.io.Serializable;

public class Result implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 5928969340566076291L;
	
	/**
	 * 状态码
	 */
	private Integer status;//1 处理成功  2处理失败 3系统异常 
	
	/**
	 * 返回数据
	 */
	private String dataJson;
	
	/**
	 * 返回信息
	 */
	private String msg;

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getDataJson() {
		return dataJson;
	}

	public void setDataJson(String dataJson) {
		this.dataJson = dataJson;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
}
