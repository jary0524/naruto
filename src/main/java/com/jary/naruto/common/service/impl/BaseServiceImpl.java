package com.jary.naruto.common.service.impl;

import java.io.Serializable;
import java.util.List;
import java.util.Map;

import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.cache.annotation.Caching;

import com.jary.framework.core.entity.BaseEntity;
import com.jary.naruto.common.service.BaseService;


/**
 * @Description: 基础service,主要操作crud模版功能
 * @author jary0524
 * @date 2015年8月12日 上午9:56:06 
 * @param <T>
 * @param <ID>
 */
public abstract class BaseServiceImpl<T extends BaseEntity, ID extends Serializable>  implements BaseService<T, ID> {

//	@Transactional(readOnly = false)
//	public void delete(T t) {
//		this.getBaseMapper().delete(t);
//	}
//	
//	@Transactional(readOnly = false)
	//即应用到移除数据的方法上，如删除方法，调用方法时会从缓存中移除相应的数据
	@CacheEvict(value = "myCache", key = "#id", beforeInvocation = true) //移除指定key的数据
	public void deleteById(ID id) {
		this.getBaseMapper().deleteByPrimaryKey(id);
	}
	
//	@Transactional(readOnly = false)
	public void deleteByIdBatch(List<ID> idList) {
		for(ID id:idList){
			this.deleteById(id);
		}
	}
	
//	@Transactional(readOnly = false)
	//应用到写数据的方法上，如新增/修改方法，调用方法时会自动把相应的数据放入缓存
	@CachePut(value = "myCache", key = "#t.id")
	public T update(T t) {
		this.getBaseMapper().updateByPrimaryKeySelective(t);
		return t;
	}

//	@Transactional(readOnly = true)
	//应用到读取数据的方法上，即可缓存的方法，如查找方法：先从缓存中读取，如果没有再调用方法获取数据，然后把数据添加到缓存中
    @Cacheable(value="myCache", key="#id")  
	public T getById(ID id) {
		return this.getBaseMapper().selectByPrimaryKey(id);
	}
	
	@SuppressWarnings("unchecked")
//	@Transactional(readOnly = true)
	public T get(T obj) {
		return this.getBaseMapper().selectByPrimaryKey((ID) obj.getId());
	}
	
//	@Transactional(readOnly = false)
	//有时候我们可能组合多个Cache注解使用
	//如用户新增成功后，添加id-->user；username--->user；email--->user到缓存
	@Caching(  
	        put = {  
	                @CachePut(value = "myCache", key = "#t.id"),  
	                @CachePut(value = "myCache", key = "#t.id + '_1'"),  
	                @CachePut(value = "myCache", key = "#t.id + '_2'")  
	        }  
	)
	public T save(T t) {
		T t_emp = null;
		t_emp = get(t);
		if(t_emp==null){
			this.getBaseMapper().insertSelective(t);
		}else{
			this.getBaseMapper().updateByPrimaryKeySelective(t);
		}
		return t;
	}
	
	@SuppressWarnings("unchecked")
//	@Transactional(readOnly = false)
	public void delete(T obj) {
		this.getBaseMapper().deleteByPrimaryKey((ID) obj.getId());
	}
	
////	@Transactional(readOnly = true)
//	public List<T> findBy(T obj, Page<T> page) {
//		return this.getBaseMapper().findBy(obj,page);
//	}
//	
//	
//	public Page<T> findPage(T obj, Page<T> page) {
//		int totalCount = this.getBaseMapper().count(obj,page);
//		Page<T> pageResult = new Page();
//
//		List<T> result = this.findBy(obj,page);
//		pageResult.setPageNo(page.getPageNo());
//		pageResult.setTotal(totalCount);
//		pageResult.setRows(result);
//		
//		return pageResult;
//	}

	/**
	 * 实现执行自定义SQL，返回结果集存在List<Map>集合
	 * @param sql
	 * @return
	 */
	public List<Map<String,Object>> executSql(String sql){
		return null;
	}

}
