package com.mall.admin.dao.admin;

import com.mall.admin.entity.admin.DeviceHistory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * @author zhuangyong
 * @version 1.0.0
 * @ClassName DeviceHistoryDao.java
 * @Description TODO
 * @createTime 2022年06月02日 22:01:00
 */
@Repository
public interface DeviceHistoryDao extends JpaRepository<DeviceHistory, Long> {
}
