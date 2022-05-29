package com.mall.admin.entity.gc;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import lombok.Data;

import java.util.Date;

/**
 * 爱心捐献  Entity
 *
 * @author ykc
 * @version: v1.0
 */
@Data
@TableName("gc_love")
public class GcLove extends Model<GcLove> {
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
     * 金钱
     */
    @TableField("money")
    private String money;
    /**
     * 0未回收1已回收
     */
    @TableField("is_recovery")
    private String isRecovery;

}
