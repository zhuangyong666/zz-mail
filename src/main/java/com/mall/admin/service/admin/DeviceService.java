package com.mall.admin.service.admin;

import com.mall.admin.dao.admin.DeviceDao;
import com.mall.admin.entity.admin.Device;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author zhuangyong
 * @version 1.0.0
 * @ClassName DeviceService.java
 * @Description TODO
 * @createTime 2022年05月29日 22:27:00
 */
@Service
public class DeviceService {
    @Autowired
    private DeviceDao deviceDao;

    public List<Device> listAll(){
        return deviceDao.findAll();
    }
}
