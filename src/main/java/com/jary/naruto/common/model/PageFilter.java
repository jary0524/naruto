package com.jary.naruto.common.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

/**
 * 
 * @Classname: PageFilter
 * @Description: 页面查询条件
 * @Author: linwb
 * @Date: 2013-11-10 上午09:00:27
 * @Version:V1.0
 */
public class PageFilter implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1378914759376744768L;

	private String groupOp;
	
	private List<PageRule> rules=new ArrayList<PageRule>();

	public String getGroupOp() {
		return groupOp;
	}

	public void setGroupOp(String groupOp) {
		this.groupOp = groupOp;
	}

	public List<PageRule> getRules() {
		return rules;
	}

	public void setRules(List<PageRule> rules) {
		this.rules = rules;
	}
	
	
}
