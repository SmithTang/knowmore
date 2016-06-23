package com.tj.knowmore.biz.sys.service.impl;

import org.springframework.stereotype.Service;

import com.tj.knowmore.biz.sys.mapper.SysUserMapper;
import com.tj.knowmore.biz.sys.model.SysUser;
import com.tj.knowmore.biz.sys.service.ISysUserService;
import com.tj.framework.service.impl.SuperServiceImpl;

/**
 *
 * SysUser 表数据服务层接口实现类
 *
 */
@Service
public class SysUserServiceImpl extends SuperServiceImpl<SysUserMapper, SysUser> implements ISysUserService {

	@Override
	public SysUser findByUsername(String currentUsername) {
		SysUser user = new SysUser();
        user.setName(currentUsername);
        return baseMapper.selectOne(user);
	}


}