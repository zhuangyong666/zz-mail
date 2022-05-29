package com.mall.admin.controller.recovery;


import cn.hutool.core.util.IdUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

import com.mall.admin.bean.CodeMsg;
import com.mall.admin.bean.PageBean;
import com.mall.admin.bean.Result;
import com.mall.admin.controller.BaseController;
import com.mall.admin.entity.gc.GcBook;
import com.mall.admin.service.gc.service.impl.GcBookServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;


/**
 * 旧书本回收  Controller
 *
 * @author ykc
 * @version: v1.0
 */
@Validated
@RestController
@RequestMapping("/gc/book")
public class GcBookController extends BaseController {
    /**
     * 服务对象
     */
    @Autowired
    private GcBookServiceImpl gcBookService;

    /**
     * 分页查询所有数据
     *
     * @param page   分页对象
     * @param gcBook 查询实体
     * @return 所有数据
     */
    @RequestMapping()
    public String selectAll(PageBean<GcBook> page, GcBook gcBook, Model model) {
        model.addAttribute("title", "旧书本回收列表");
        model.addAttribute("pageBean", tpPageBean(this.gcBookService.page(toPage(page), new QueryWrapper<>(gcBook))));
        return "";
    }

    /**
     * 通过主键查询单条数据
     *
     * @param id 主键
     * @return 单条数据
     */
    @GetMapping("/{id}")
    public Result selectOne(@PathVariable String id) {
        return Result.success(this.gcBookService.getById(id));
    }

    /**
     * 新增数据
     *
     * @param gcBook 实体对象
     * @return 新增结果
     */
    @RequestMapping("save")
    public Result insert(GcBook gcBook) {
        if(isAftNowDate(gcBook.getAppointmentTime())){
            return Result.error(CodeMsg.SELECT_TIME);
        }
        gcBook.setId(IdUtil.fastSimpleUUID());
        return Result.success(this.gcBookService.save(gcBook));
    }

    /**
     * 修改数据
     *
     * @param gcBook 实体对象
     * @return 修改结果
     */
    @PutMapping
    public Result update(@RequestBody GcBook gcBook) {
        return Result.success(this.gcBookService.updateById(gcBook));
    }

    /**
     * 删除数据
     *
     * @param id 主键结合
     * @return 删除结果
     */
    @DeleteMapping
    public Result delete(String id) {
        return Result.success(this.gcBookService.removeById(id));
    }
}
