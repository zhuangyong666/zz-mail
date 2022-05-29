package com.mall.admin.entity.vo;

import lombok.Data;

import java.io.Serializable;
import java.util.Collections;
import java.util.List;

/**
 * @author root
 */
@Data
public class ImgLaJiFenLeiVo implements Serializable {

    private String code;

    private String msg;

    List<NewsList> newslist = Collections.emptyList();

    @Data
    public class NewsList {

        private String name;

        private String trust;

        private String lajitype;

        private String lajitip;
    }
}
