package com.mall.admin.service.admin;

import com.mall.admin.dao.admin.DeviceDao;
import com.mall.admin.dao.admin.DeviceHistoryDao;
import com.mall.admin.entity.admin.Device;
import com.mall.admin.entity.admin.DeviceHistory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

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
    @Autowired
    private DeviceHistoryDao deviceHistoryDao;

    public List<Device> listAll() {
        return deviceDao.findAll();
    }

    public void update(Device device) {
        DeviceHistory deviceHistory = new DeviceHistory();
        Device deviceMac = new Device();
        deviceMac.setMac(device.getMac());
        Example<Device> deviceExample = Example.of(deviceMac);
        Optional<Device> one = deviceDao.findOne(deviceExample);
        if (one.isPresent()) {
            Device dbDevice = one.get();
            dbDevice.setUpdateTime(new Date());
            dbDevice.setState(device.getState());
            dbDevice.setTemperature(device.getTemperature());
            deviceDao.save(dbDevice);
            deviceHistory.setDeviceId(dbDevice.getId());
        } else {
            device.setCreateTime(new Date());
            Device save = deviceDao.save(device);
            deviceHistory.setDeviceId(save.getId());
        }
        deviceHistory.setState(device.getState());
        deviceHistory.setTemperature(device.getTemperature());
        deviceHistoryDao.save(deviceHistory);
    }
}
