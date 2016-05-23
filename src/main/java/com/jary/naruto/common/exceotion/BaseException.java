package com.jary.naruto.common.exceotion;

import org.apache.log4j.Logger;

/**
 * @Description: 系统需要抛出异常的基类
 * @Author: linwb
 * @Date: 2011-4-27 下午03:14:44
 * @Version:V1.0
 */
public class BaseException extends RuntimeException {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 2548476077764828697L;
	
	static Logger logger = Logger.getLogger(BaseException.class);
	
	public BaseException(String msg) {
		super(msg);
		logger.error(msg);
	}
	
	public BaseException(Throwable throwable) {
		super(throwable);
	}
	
	public BaseException(Throwable throwable, String frdMessage) {
	       super(throwable);
	}
	 

	public static String getWebErrorMsg(String msgBody) {
		   String prefixStr = "抱歉，";
		   String suffixStr = " 请稍后再试或与管理员联系！";
		   StringBuffer friendlyErrMsg = new StringBuffer("");
		   friendlyErrMsg.append(prefixStr);
		   friendlyErrMsg.append(msgBody);
		   friendlyErrMsg.append(suffixStr);
		   return friendlyErrMsg.toString();
	
	}
}