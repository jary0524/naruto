package com.jary.naruto.common.dao;

import java.io.Serializable;

import com.jary.naruto.common.model.BaseEntity;

  
/** 
 * MyBatis CRUD基接口 
 * 注意：Base只负责基本的增删改。查询操作放在子类中，但需要在子接口中加上调用@SelectProvider的注释
 * @param <T> 处理的POJO对象 
 */  
public interface BaseMapper<T extends BaseEntity, ID extends Serializable> {
	    
    int deleteByPrimaryKey(ID id);
    
    int insert(T record);
    
    int insertSelective(T record);

	T selectByPrimaryKey(ID id);

	int updateByPrimaryKeySelective(T record);

	int updateByPrimaryKey(T record);
      
}  