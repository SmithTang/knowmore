package com.tj.knowmore.biz.service.impl;

import org.springframework.stereotype.Service;

import com.tj.framework.service.impl.SuperServiceImpl;
import com.tj.knowmore.biz.user.mapper.UserMapper;
import com.tj.knowmore.biz.service.IUserService;
import com.tj.knowmore.biz.user.model.User;

/**
 *
 * User 表数据服务层接口实现类
 *
 */
@Service
public class UserServiceImpl extends SuperServiceImpl<UserMapper, User> implements IUserService {

	@Override
	public User findByUsername(String currentUsername) {
		User user = new User();
        user.setName(currentUsername);
        return baseMapper.selectOne(user);
	}


}