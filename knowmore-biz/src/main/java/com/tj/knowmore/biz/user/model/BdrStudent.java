package com.tj.knowmore.biz.user.model;

import java.io.Serializable;

import com.tj.mybatisplus.annotations.IdType;
import com.tj.mybatisplus.annotations.TableField;
import com.tj.mybatisplus.annotations.TableId;
import com.tj.mybatisplus.annotations.TableName;

/**
 *
 * 边界-学生信息-仅涉及基础信息
 *
 */
@TableName(value = "bdr_student")
public class BdrStudent implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Long id;

	/**  */
	@TableField(value = "grade_id")
	private Long gradeId;

	/**  */
	private String name;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getGradeId() {
		return this.gradeId;
	}

	public void setGradeId(Long gradeId) {
		this.gradeId = gradeId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
