package com.mall.admin.entity.admin;

import com.mall.admin.annotion.ValidateEntity;
import com.mall.admin.entity.common.BaseEntity;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.Table;
import java.util.Date;

/**
 * @author zhuangyong
 * @version 1.0.0
 * @ClassName Device.java
 * @Description TODO
 * @createTime 2022年05月29日 22:21:00
 */
@Entity
@Table(name="device")
@EntityListeners(AuditingEntityListener.class)
public class Device extends BaseEntity {
    @ValidateEntity(required=false)
    @Column(name="id",length=128)
    private Long id;
    @ValidateEntity(required=false)
    @Column(name="mac",length=128)
    private String mac;
    @ValidateEntity(required=false)
    @Column(name="temperature",length=128)
    private String temperature;
    @ValidateEntity(required=false)
    @Column(name="state",length=128)
    private String state;
    @ValidateEntity(required=false)
    @Column(name="create_time")
    private Date createTime;
    @ValidateEntity(required=false)
    @Column(name="update_time")
    private Date updateTime;

    @Override
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
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

    @Override
    public Date getCreateTime() {
        return createTime;
    }

    @Override
    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public Date getUpdateTime() {
        return updateTime;
    }

    @Override
    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }
}
