package com.mall.admin.entity.admin;

import com.mall.admin.annotion.ValidateEntity;
import com.mall.admin.entity.common.BaseEntity;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;

/**
 * @author zhuangyong
 * @version 1.0.0
 * @ClassName DeviceHistory.java
 * @Description TODO
 * @createTime 2022年06月02日 21:51:00
 */
@Entity
@Table(name="device_history")
@EntityListeners(AuditingEntityListener.class)
public class DeviceHistory extends BaseEntity {
    @ValidateEntity(required=false)
    @Column(name="id",length=128)
    private Long id;
    @ValidateEntity(required=false)
    @Column(name="temperature",length=128)
    private String temperature;
    @ValidateEntity(required=false)
    @Column(name="device_id",length=128)
    private Long deviceId;
    @ValidateEntity(required=false)
    @Column(name="state",length=128)
    private String state;
    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTemperature() {
        return temperature;
    }

    public void setTemperature(String temperature) {
        this.temperature = temperature;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Long getDeviceId() {
        return deviceId;
    }

    public void setDeviceId(Long deviceId) {
        this.deviceId = deviceId;
    }
}
