package com.tj.knowmore.biz.sys.service;

import com.tj.knowmore.biz.sys.model.SysUser;
import com.tj.framework.service.ISuperService;

/**
 *
 * SysUser 表数据服务层接口
 *
 */
public interface ISysUserService extends ISuperService<SysUser> {

	SysUser findByUsername(String currentUsername);

}