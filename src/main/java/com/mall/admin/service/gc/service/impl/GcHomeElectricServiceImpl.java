package com.mall.admin.service.gc.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mall.admin.entity.gc.GcHomeElectric;
import com.mall.admin.mapper.GcHomeElectricMapper;
import com.mall.admin.service.gc.service.GcHomeElectricService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 家电回收  ServiceImpl
 *
 * @author ykc
 * @version: v1.0
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GcHomeElectricServiceImpl extends ServiceImpl<GcHomeElectricMapper, GcHomeElectric> implements GcHomeElectricService {

}
