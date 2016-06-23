package com.tj.knowmore.biz.sys.model;

import java.io.Serializable;

import com.tj.mybatisplus.annotations.IdType;
import com.tj.mybatisplus.annotations.TableField;
import com.tj.mybatisplus.annotations.TableId;
import com.tj.mybatisplus.annotations.TableName;

/**
 *
 * 
 *
 */
@TableName(value = "sys_user")
public class SysUser implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Long id;

	/** 姓名 */
	private String name;

	/** 密码 */
	private String password;

	/** -1 禁用 0 离线 1 在线  */
	private Integer status;

	/** email */
	private String email;

	/** 手机号 */
	private String telphone;

	/** 角色 0 管理员 1 家长 2 辅导员 */
	private Integer role;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelphone() {
		return this.telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	public Integer getRole() {
		return this.role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

}
