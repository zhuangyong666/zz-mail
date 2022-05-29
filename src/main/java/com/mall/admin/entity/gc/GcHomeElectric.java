package com.mall.admin.entity.gc;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.util.Date;

/**
 * 家电回收  Entity
 *
 * @author ykc
 * @version: v1.0
 */
@Data
@TableName("gc_home_electric")
public class GcHomeElectric extends Model<GcHomeElectric> {
    /**
     * 主键
     */
    @TableId("id")
    private String id;
    /**
     * 创建人
     */
    @TableField("create_id")
    private String createId;
    /**
     * 创建时间
     */
    @TableField("create_time")
    private Date createTime;
    /**
     * 更新人
     */
    @TableField("update_id")
    private String updateId;
    /**
     * 更新时间
     */
    @TableField("update_time")
    private Date updateTime;
    /**
     * 版本号
     */
    @TableField("version")
    private Long version;
    /**
     * 姓名
     */
    @TableField("name")
    private String name;
    /**
     * 电话
     */
    @TableField("iPhone")
    private String iphone;
    /**
     * 地址
     */
    @TableField("address")
    private String address;
    /**
     * 预约时间
     */
    @TableField("appointment_time")
    private String appointmentTime;
    /**
     * 0未回收1已回收
     */
    @TableField("is_recovery")
    private String isRecovery;
    /**
     * 家电种类
     */
    @TableField("type")
    private String type;
    /**
     * 品牌
     */
    @TableField("brand")
    private String brand;
    /**
     * 使用年限
     */
    @TableField("year")
    private String year;
    /**
     * 外观情况
     */
    @TableField("appearance")
    private String appearance;
    /**
     * 功能情况
     */
    @TableField("func")
    private String func;

}
