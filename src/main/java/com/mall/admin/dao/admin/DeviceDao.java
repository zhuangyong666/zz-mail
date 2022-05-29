package com.mall.admin.dao.admin;

import com.mall.admin.entity.admin.Device;
import com.mall.admin.entity.admin.Menu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author zhuangyong
 * @version 1.0.0
 * @ClassName DeviceDao.java
 * @Description TODO
 * @createTime 2022年05月29日 22:20:00
 */
@Repository
public interface DeviceDao extends JpaRepository<Device, Long> {
}
