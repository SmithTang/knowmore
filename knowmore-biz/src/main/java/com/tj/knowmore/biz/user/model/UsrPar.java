package com.tj.knowmore.biz.user.model;

import java.io.Serializable;

import com.tj.mybatisplus.annotations.IdType;
import com.tj.mybatisplus.annotations.TableField;
import com.tj.mybatisplus.annotations.TableId;
import com.tj.mybatisplus.annotations.TableName;

/**
 *
 * 家长用户信息
 *
 */
@TableName(value = "usr_par")
public class UsrPar implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 主键 */
	@TableId(type = IdType.AUTO)
	private Long id;

	/** 用户基础信息表外键 */
	@TableField(value = "user_id")
	private Long userId;

	/** 边界属性 学生ID not null */
	@TableField(value = "bdr_student_id")
	private Long bdrStudentId;

	/**  */
	private String name;

	/** 住址 */
	private String address;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return this.userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getBdrStudentId() {
		return this.bdrStudentId;
	}

	public void setBdrStudentId(Long bdrStudentId) {
		this.bdrStudentId = bdrStudentId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

}
