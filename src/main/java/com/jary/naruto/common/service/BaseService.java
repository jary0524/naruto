package com.jary.naruto.common.service;


import java.io.Serializable;
import java.util.List;
import java.util.Map;

import com.jary.naruto.common.dao.BaseMapper;
import com.jary.naruto.common.model.BaseEntity;

/**
 * @Description: 基础service,主要操作crud模版功能
 * @Author: linwb
 */
public interface BaseService<T extends BaseEntity, ID extends Serializable> {

	public abstract T getEntity();  
    public abstract BaseMapper<T, ID> getBaseMapper();
    
	public void deleteById(ID id);
	
	public void deleteByIdBatch(List<ID> idList);
	
	public void delete(T t);
	
	public T update(T t);
	
	public T save(T t);
	
	public T getById(ID id) ;
	
//	public List<T> findBy(T obj, Page<T> page) ;
//	
//	public Page<T> findPage(T obj, Page<T> page) ;
//	
	
	/**
	 * 实现执行自定义SQL，返回结果集存在List<Map>集合
	 * @param sql
	 * @return
	 */
	public List<Map<String,Object>> executSql(String sql);


}
