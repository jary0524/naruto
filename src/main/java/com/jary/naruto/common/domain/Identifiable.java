package com.jary.naruto.common.domain;

import java.io.Serializable;

/**
 * @author jary0524
 * @date 2015年5月6日 下午4:39:23 
 */
public interface Identifiable extends Serializable {
	/**
	 * 获取主键值
	 * @return
	 */
	public String getId();
	/**
	 * 设置主键值
	 * @param id
	 * @return
	 */
	public void setId(String id);
}
