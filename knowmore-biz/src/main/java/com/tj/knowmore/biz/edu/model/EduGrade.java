package com.tj.knowmore.biz.edu.model;

import java.io.Serializable;

import com.tj.mybatisplus.annotations.IdType;
import com.tj.mybatisplus.annotations.TableField;
import com.tj.mybatisplus.annotations.TableId;
import com.tj.mybatisplus.annotations.TableName;

/**
 *
 * 年级
 *
 */
@TableName(value = "edu_grade")
public class EduGrade implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Long id;

	/** 专业外键 */
	@TableField(value = "major_id")
	private Long majorId;

	/** 年级自身 如"2013级" */
	private String grade;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getMajorId() {
		return this.majorId;
	}

	public void setMajorId(Long majorId) {
		this.majorId = majorId;
	}

	public String getGrade() {
		return this.grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

}
