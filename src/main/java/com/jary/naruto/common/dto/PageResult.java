package com.jary.naruto.common.dto;

import java.io.Serializable;
import java.util.List;

public class PageResult<T> implements Serializable {
	private static final long serialVersionUID = -5132897098247594648L;
	private long totalCount;
	private List<T> queryResult;
	public long getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}
	public List<T> getQueryResult() {
		return queryResult;
	}
	public void setQueryResult(List<T> queryResult) {
		this.queryResult = queryResult;
	}
	
}
