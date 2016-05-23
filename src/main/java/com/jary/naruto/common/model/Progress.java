package com.jary.naruto.common.model;

import java.util.Date;

import com.alibaba.fastjson.JSON;
import com.jary.naruto.common.util.NumUtil;

/**
 * 文件上传进度
 * @author jary0524
 * @date 2016年3月2日 下午2:35:00 
 */
public class Progress {

	/** 已读字节 **/
	private long bytesRead = 0L;
	
	/** 已读MB **/
	private String mbRead = "0";
	
	/** 总长度 **/
	private long contentLength = 0L;
	
	/****/
	private int items;
	
	/** 已读百分比 **/
	private String percent;
	
	/** 读取速度 **/
	private String speed;
	
	/** 开始时间 **/
	private Date startTime;
	
	/** 结束时间 **/
	private Date endTime;

	public long getBytesRead() {
		return bytesRead;
	}

	public void setBytesRead(long bytesRead) {
		this.bytesRead = bytesRead;
	}

	public long getContentLength() {
		return contentLength;
	}

	public void setContentLength(long contentLength) {
		this.contentLength = contentLength;
	}

	public int getItems() {
		return items;
	}

	public void setItems(int items) {
		this.items = items;
	}

	public String getPercent() {
		percent = NumUtil.getPercent(bytesRead, contentLength);
		return percent;
	}

	public void setPercent(String percent) {
		this.percent = percent;
	}

	public String getSpeed() {
		speed = NumUtil.divideNumber(NumUtil.divideNumber(bytesRead * 1000, endTime.getTime() - startTime.getTime()), 1000);
		return speed;
	}

	public void setSpeed(String speed) {
		this.speed = speed;
	}

	/**
	 * @return the startTime
	 */
	public Date getStartTime() {
		return startTime;
	}

	/**
	 * @param startTime the startTime to set
	 */
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}

	/**
	 * @return the endTime
	 */
	public Date getEndTime() {
		return endTime;
	}

	/**
	 * @param endTime the endTime to set
	 */
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}

	public String getMbRead() {
		mbRead = NumUtil.divideNumber(bytesRead, 1000000);
		return mbRead;
	}

	public void setMbRead(String mbRead) {
		this.mbRead = mbRead;
	}

	@Override
	public String toString() {
		return JSON.toJSONString(this);
	}
}