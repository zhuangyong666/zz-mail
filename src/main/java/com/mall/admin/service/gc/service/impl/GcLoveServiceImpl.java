package com.mall.admin.service.gc.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mall.admin.entity.gc.GcLove;
import com.mall.admin.mapper.GcLoveMapper;
import com.mall.admin.service.gc.service.GcLoveService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 爱心捐献  ServiceImpl
 *
 * @author ykc
 * @version: v1.0
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GcLoveServiceImpl extends ServiceImpl<GcLoveMapper, GcLove> implements GcLoveService {

}
