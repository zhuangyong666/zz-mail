package com.mall.admin.controller.admin;

import com.mall.admin.bean.PageBean;
import com.mall.admin.entity.common.Student;
import com.mall.admin.service.admin.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author zhuangyong
 * @version 1.0.0
 * @ClassName DeviceController.java
 * @Description TODO
 * @createTime 2022年05月29日 22:16:00
 */
@RequestMapping("/admin/device")
@Controller
public class DeviceController {
    @Autowired
    private DeviceService deviceService;

    @RequestMapping(value = "/list")
    public String list(Model model) {
        model.addAttribute("title", "设备列表");
        model.addAttribute("content", deviceService.listAll());
        return "admin/device/list";
    }

    @RequestMapping(value = "/history")
    public String history(Model model) {
        model.addAttribute("title", "历史数据");
        //model.addAttribute("content", deviceService.listAll());
        return "admin/device/history";
    }
}
