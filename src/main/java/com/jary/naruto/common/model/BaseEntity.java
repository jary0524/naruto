package com.jary.naruto.common.model;

import java.io.Serializable;

/**
 * 
 * 统一定义entity基类.
 * @author jary he
 */
public abstract class BaseEntity implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 主键Id
	 * @return the id
	 */
	public abstract Object getId();
}
