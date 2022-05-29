package com.mall.admin.controller;

import cn.hutool.core.date.DateUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mall.admin.bean.PageBean;
import org.apache.commons.lang3.time.DateUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

import java.beans.PropertyEditorSupport;
import java.time.LocalDateTime;
import java.util.Date;


/**
 * web层通用数据处理
 *
 * @author ykc
 */
public class BaseController {

    protected final Logger logger = LoggerFactory.getLogger(BaseController.class);


    protected <T>Page<T> toPage(PageBean<T> t){
        Page page = new Page();
        page.setSize(t.getPageSize());
        page.setCurrent(t.getCurrentPage());
        return page;
    }

    /**
     * 响应请求分页数据
     */
    @SuppressWarnings({"rawtypes", "unchecked"})
    protected PageBean tpPageBean(Page page) {
        PageBean rspData = new PageBean();
        rspData.setCurrentPage((int)page.getCurrent());
        rspData.setPageSize((int)page.getSize());
        rspData.setContent(page.getRecords());
        rspData.setTotal(page.getTotal());
        rspData.setTotalPage((int)page.getPages());
        return rspData;
    }



    protected Boolean isAftNowDate(String date){
        LocalDateTime localDateTime = DateUtil.toLocalDateTime(DateUtil.parse(date, "yyyy-MM-dd"));
        int sub = localDateTime.getDayOfYear();
        LocalDateTime now = DateUtil.toLocalDateTime(new Date());
        int nowDay = now.getDayOfYear();
        if(sub < nowDay){
            return true;
        }
        return false;
    }


}
