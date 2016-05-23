package com.jary.naruto.common.model;

import java.io.Serializable;
import java.util.List;

import com.alibaba.fastjson.JSON;

/**
 * ajax请求的返回
 * @author hjl
 * @date 2016年5月26日 下午3:57:16 
 */
public class Result implements Serializable {

	public static final String CODE_SUCCESS = "0";//成功
	public static final String CODE_FAILURE = "1";//错误
	public static final String CODE_EXCEPTION = "2";//异常

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 状态码
	 */
	private String code;
	
	/**
	 * 信息
	 */
	private String message;
	
	/**
	 * 结果条数
	 */
	private Integer num;
	
	/**
	 * 结果
	 * Object 、  List<Object>
	 */
	private String dataJson;

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}

	/**
	 * @return the num
	 */
	public Integer getNum() {
		return num;
	}

	/**
	 * @param num the num to set
	 */
	public void setNum(Integer num) {
		this.num = num;
	}

	/**
	 * @return the dataJson
	 */
	public String getDataJson() {
		return dataJson;
	}

	/**
	 * @param dataJson the dataJson to set
	 */
	public void setDataJson(String dataJson) {
		this.dataJson = dataJson;
	}

	/**
	 * 
	 */
	public Result() {
		super();
	}

	public static Result getSuccessResult(String dataJson) {
		Result result = new Result();
		result.setCode(CODE_SUCCESS);
		result.setDataJson(dataJson);
		return result;
	}

	public static Result getFailureResult(String message) {
		Result result = new Result();
		result.setCode(CODE_FAILURE);
		result.setMessage(message);
		return result;
	}
	
	public static Result getSuccessResult(List<?> list) {
		Result result = new Result();
		result.setCode(CODE_SUCCESS);
		if (list==null || list.size()<=0) {
			result.setNum(0);
			return result;
		}
		result.setNum(list.size());
		String dataJson = JSON.toJSONString(list);
		result.setDataJson(dataJson);
		return result;
	}

}
