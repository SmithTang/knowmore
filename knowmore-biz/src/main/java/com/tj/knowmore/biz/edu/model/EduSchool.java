package com.tj.knowmore.biz.edu.model;

import java.io.Serializable;

import com.tj.mybatisplus.annotations.IdType;
import com.tj.mybatisplus.annotations.TableField;
import com.tj.mybatisplus.annotations.TableId;
import com.tj.mybatisplus.annotations.TableName;

/**
 *
 * 学校
 *
 */
@TableName(value = "edu_school")
public class EduSchool implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Long id;

	/** 学校名 */
	private String name;

	/**  */
	private String address;

	/** 邮编 */
	@TableField(value = "post_code")
	private String postCode;

	/** -1 禁用 0 正常 1 假期 */
	private Integer status;

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

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPostCode() {
		return this.postCode;
	}

	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}

	public Integer getStatus() {
		return this.status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

}
