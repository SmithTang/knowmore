package com.tj.knowmore.biz.user.service.impl;

import org.springframework.stereotype.Service;

import com.tj.knowmore.biz.user.mapper.BdrStudentMapper;
import com.tj.knowmore.biz.user.model.BdrStudent;
import com.tj.knowmore.biz.user.service.IBdrStudentService;
import com.tj.framework.service.impl.SuperServiceImpl;

/**
 *
 * BdrStudent 表数据服务层接口实现类
 *
 */
@Service
public class BdrStudentServiceImpl extends SuperServiceImpl<BdrStudentMapper, BdrStudent> implements IBdrStudentService {


}