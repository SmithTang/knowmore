package com.tj.knowmore.biz.edu.model;

import java.io.Serializable;

import com.tj.mybatisplus.annotations.IdType;
import com.tj.mybatisplus.annotations.TableField;
import com.tj.mybatisplus.annotations.TableId;
import com.tj.mybatisplus.annotations.TableName;

/**
 *
 * 公告
 *
 */
@TableName(value = "edu_anouncement")
public class EduAnouncement implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/**  */
	@TableId(type = IdType.AUTO)
	private Long id;

	/** 最后一次操作此公告的管理员 */
	@TableField(value = "edu_admin_id")
	private Long eduAdminId;

	/** 网页在系统的路径 */
	private String path;

	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getEduAdminId() {
		return this.eduAdminId;
	}

	public void setEduAdminId(Long eduAdminId) {
		this.eduAdminId = eduAdminId;
	}

	public String getPath() {
		return this.path;
	}

	public void setPath(String path) {
		this.path = path;
	}

}
