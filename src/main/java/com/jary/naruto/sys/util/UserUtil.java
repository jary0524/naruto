package com.jary.naruto.sys.util;

import org.apache.commons.lang3.StringUtils;

/**
 * @author jary0524
 * @date 2015年9月25日 上午10:41:12 
 */
public class UserUtil {
	
	//用户状态
	public static final int STATUS_ON = 1; //正常
	public static final int STATUS_OFF = 2; //失效
	public static final int STATUS_LOCK = 3; //锁定

	/**
	 * 验证密码
	 * @param password
	 * @param password2
	 * @return
	 */
	public static Boolean checkPassword(String password, String password2) {
		if (StringUtils.isEmpty(password) || StringUtils.isEmpty(password2)) {
			return false;
		}
		if (password.equals(password2)) {
			return true;
		}
		return false;
	}

}
