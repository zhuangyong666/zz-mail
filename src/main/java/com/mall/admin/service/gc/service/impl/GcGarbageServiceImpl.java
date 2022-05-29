package com.mall.admin.service.gc.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mall.admin.entity.gc.GcGarbage;
import com.mall.admin.mapper.GcGarbageMapper;
import com.mall.admin.service.gc.service.GcGarbageService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 大型垃圾回收  ServiceImpl
 *
 * @author ykc
 * @version: v1.0
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GcGarbageServiceImpl extends ServiceImpl<GcGarbageMapper, GcGarbage> implements GcGarbageService {

}
