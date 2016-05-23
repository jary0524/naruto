package com.jary.naruto.sys.dto;

import java.util.Date;
import java.util.List;

import com.jary.framework.core.entity.BaseEntity;
import com.jary.naruto.sys.model.Role;


/**
 * @author jary0524
 * @date 2015年10月9日 上午10:35:48 
 */
public class UserDto extends BaseEntity {

	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.user_id
	 * @mbggenerated
	 */
	private String userId;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.account
	 * @mbggenerated
	 */
	private String account;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.password
	 * @mbggenerated
	 */
	private String password;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.nick
	 * @mbggenerated
	 */
	private String nick;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.last_name
	 * @mbggenerated
	 */
	private String lastName;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.first_name
	 * @mbggenerated
	 */
	private String firstName;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.mobile
	 * @mbggenerated
	 */
	private String mobile;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.email
	 * @mbggenerated
	 */
	private String email;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.gender
	 * @mbggenerated
	 */
	private Integer gender;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.pic
	 * @mbggenerated
	 */
	private String pic;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.birthday
	 * @mbggenerated
	 */
	private Date birthday;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.status
	 * @mbggenerated
	 */
	private Integer status;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.create_time
	 * @mbggenerated
	 */
	private Date createTime;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database column t_user.last_login_time
	 * @mbggenerated
	 */
	private Date lastLoginTime;

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.user_id
	 * @return  the value of t_user.user_id
	 * @mbggenerated
	 */
	public String getUserId() {
		return userId;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.user_id
	 * @param userId  the value for t_user.user_id
	 * @mbggenerated
	 */
	public void setUserId(String userId) {
		this.userId = userId == null ? null : userId.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.account
	 * @return  the value of t_user.account
	 * @mbggenerated
	 */
	public String getAccount() {
		return account;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.account
	 * @param account  the value for t_user.account
	 * @mbggenerated
	 */
	public void setAccount(String account) {
		this.account = account == null ? null : account.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.password
	 * @return  the value of t_user.password
	 * @mbggenerated
	 */
	public String getPassword() {
		return password;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.password
	 * @param password  the value for t_user.password
	 * @mbggenerated
	 */
	public void setPassword(String password) {
		this.password = password == null ? null : password.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.nick
	 * @return  the value of t_user.nick
	 * @mbggenerated
	 */
	public String getNick() {
		return nick;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.nick
	 * @param nick  the value for t_user.nick
	 * @mbggenerated
	 */
	public void setNick(String nick) {
		this.nick = nick == null ? null : nick.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.last_name
	 * @return  the value of t_user.last_name
	 * @mbggenerated
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.last_name
	 * @param lastName  the value for t_user.last_name
	 * @mbggenerated
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName == null ? null : lastName.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.first_name
	 * @return  the value of t_user.first_name
	 * @mbggenerated
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.first_name
	 * @param firstName  the value for t_user.first_name
	 * @mbggenerated
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName == null ? null : firstName.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.mobile
	 * @return  the value of t_user.mobile
	 * @mbggenerated
	 */
	public String getMobile() {
		return mobile;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.mobile
	 * @param mobile  the value for t_user.mobile
	 * @mbggenerated
	 */
	public void setMobile(String mobile) {
		this.mobile = mobile == null ? null : mobile.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.email
	 * @return  the value of t_user.email
	 * @mbggenerated
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.email
	 * @param email  the value for t_user.email
	 * @mbggenerated
	 */
	public void setEmail(String email) {
		this.email = email == null ? null : email.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.gender
	 * @return  the value of t_user.gender
	 * @mbggenerated
	 */
	public Integer getGender() {
		return gender;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.gender
	 * @param gender  the value for t_user.gender
	 * @mbggenerated
	 */
	public void setGender(Integer gender) {
		this.gender = gender;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.pic
	 * @return  the value of t_user.pic
	 * @mbggenerated
	 */
	public String getPic() {
		return pic;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.pic
	 * @param pic  the value for t_user.pic
	 * @mbggenerated
	 */
	public void setPic(String pic) {
		this.pic = pic == null ? null : pic.trim();
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.birthday
	 * @return  the value of t_user.birthday
	 * @mbggenerated
	 */
	public Date getBirthday() {
		return birthday;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.birthday
	 * @param birthday  the value for t_user.birthday
	 * @mbggenerated
	 */
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.status
	 * @return  the value of t_user.status
	 * @mbggenerated
	 */
	public Integer getStatus() {
		return status;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.status
	 * @param status  the value for t_user.status
	 * @mbggenerated
	 */
	public void setStatus(Integer status) {
		this.status = status;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.create_time
	 * @return  the value of t_user.create_time
	 * @mbggenerated
	 */
	public Date getCreateTime() {
		return createTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.create_time
	 * @param createTime  the value for t_user.create_time
	 * @mbggenerated
	 */
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method returns the value of the database column t_user.last_login_time
	 * @return  the value of t_user.last_login_time
	 * @mbggenerated
	 */
	public Date getLastLoginTime() {
		return lastLoginTime;
	}

	/**
	 * This method was generated by MyBatis Generator. This method sets the value of the database column t_user.last_login_time
	 * @param lastLoginTime  the value for t_user.last_login_time
	 * @mbggenerated
	 */
	public void setLastLoginTime(Date lastLoginTime) {
		this.lastLoginTime = lastLoginTime;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/* (non-Javadoc)
	 * @see com.jary.test.springmvc.common.model.BaseEntity#getId()
	 */
	@Override
	public Object getId() {
		return userId;
	}

	private List<Role> roleList;

	/**
	 * @return the roleList
	 */
	public List<Role> getRoleList() {
		return roleList;
	}

	/**
	 * @param roleList the roleList to set
	 */
	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}
}
