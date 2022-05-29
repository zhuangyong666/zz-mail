package com.mall.admin.controller.recovery;

import cn.hutool.http.Header;
import cn.hutool.http.HttpRequest;
import cn.hutool.json.JSONUtil;
import com.mall.admin.entity.vo.ImgLaJiFenLeiVo;
import org.apache.commons.codec.binary.Base64;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Map;

/**
 * @author root
 */
@Controller
@RequestMapping("/index")
public class RecoveryIndex {

    @RequestMapping(value = {"", "home"})
    public String index(){
        return "index";
    }

    @RequestMapping("recovery")
    public String recovery(){
        return "recovery/index";
    }

    @RequestMapping("lovedonation")
    public String lovedonation(){
        return "recovery/lovedonation";
    }

    @RequestMapping("usedbook")
    public String usedbook(){
        return "recovery/usedbook";
    }

    @RequestMapping("usedclothes")
    public String usedclothes(){
        return "recovery/usedclothes";
    }

    @RequestMapping("homeelectric")
    public String homeelectric(){
        return "recovery/homeelectric";
    }

    @RequestMapping("biggarbage")
    public String biggarbage(){
        return "recovery/biggarbage";
    }


    @RequestMapping("/imglajifenlei")
    public ImgLaJiFenLeiVo imglajifenlei(MultipartFile file) throws IOException {
        Map<String, Object> map = new HashMap<>(6);
        map.put("key", "1295119f5b7e2135d3f69b2eed5ee1e3");
        map.put("img", getImgStr(file.getInputStream()));
        String body = HttpRequest.post("http://api.tianapi.com/txapi/imglajifenlei/index").header(Header.CONTENT_TYPE, "application/x-www-form-urlencoded; charset=UTF-8").form(map).timeout(20000).execute().body();
        ImgLaJiFenLeiVo imgLaJiFenLeiVo = JSONUtil.toBean(body, ImgLaJiFenLeiVo.class);
        return imgLaJiFenLeiVo;
    }

    public static String getImgStr(InputStream inputStream) {
        // 将图片文件转化为字节数组字符串，并对其进行Base64编码处理
        InputStream in = inputStream;
        byte[] data = null;
        // 读取图片字节数组
        try {

            data = new byte[in.available()];
            in.read(data);
            in.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return Base64.encodeBase64String(data);
    }
}
