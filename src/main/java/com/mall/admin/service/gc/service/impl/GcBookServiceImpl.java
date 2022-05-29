package com.mall.admin.service.gc.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.mall.admin.entity.gc.GcBook;
import com.mall.admin.mapper.GcBookMapper;
import com.mall.admin.service.gc.service.GcBookService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 旧书本回收  ServiceImpl
 *
 * @author ykc
 * @version: v1.0
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class GcBookServiceImpl extends ServiceImpl<GcBookMapper, GcBook> implements GcBookService {

}
