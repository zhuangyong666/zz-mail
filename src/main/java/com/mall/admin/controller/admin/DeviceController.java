package com.mall.admin.controller.admin;

import com.alibaba.fastjson.JSONObject;
import com.mall.admin.entity.admin.Device;
import com.mall.admin.server.impl.WebSocketServer;
import com.mall.admin.service.admin.DeviceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;
import java.util.List;

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

    @RequestMapping("/update")
    @ResponseBody
    public boolean addDeviceInfo(@RequestBody Device device) throws IOException {
        deviceService.update(device);
        List<Device> devices = deviceService.listAll();
        String jsonString = JSONObject.toJSONString(devices);
        WebSocketServer.sendInfo(jsonString, "1");
        return true;
    }
}
