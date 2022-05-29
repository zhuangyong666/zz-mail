package com.mall.admin.service.gc.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mall.admin.entity.gc.GcClothes;
import com.mall.admin.mapper.GcClothesMapper;
import com.mall.admin.service.gc.service.GcClothesService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 旧衣物回收  ServiceImpl
 *
 * @author ykc
 * @version: v1.0
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GcClothesServiceImpl extends ServiceImpl<GcClothesMapper, GcClothes> implements GcClothesService {

}
