//package com.mall.admin.controller.recovery;
//
//
//import cn.hutool.core.util.IdUtil;
//import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
//
//import com.mall.admin.bean.Result;
//import com.mall.admin.entity.gc.GcClothes;
//import com.mall.admin.service.gc.service.impl.GcClothesServiceImpl;
//import org.apache.commons.lang3.StringUtils;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.http.MediaType;
//import org.springframework.validation.annotation.Validated;
//import org.springframework.web.bind.annotation.*;
//
///**
// * 旧衣物回收  Controller
// *
// * @author ykc
// * @version: v1.0
// */
//
//@Validated
//@RestController
//@RequestMapping("/gc/clothes")
//public class GcClothesController extends BaseController {
//    /**
//     * 服务对象
//     */
//    @Autowired
//    private GcClothesServiceImpl gcClothesService;
//
//    /**
//     * 分页查询所有数据
//     *
//     * @param page      分页对象
//     * @param gcClothes 查询实体
//     * @return 所有数据
//     */
//    @GetMapping
//    public TableDataInfo selectAll(PageVo page, GcClothes gcClothes) {
//        return toTableDataInfo(this.gcClothesService.page(toPage(page), new QueryWrapper<>(gcClothes)));
//    }
//
//    /**
//     * 通过主键查询单条数据
//     *
//     * @param id 主键
//     * @return 单条数据
//     */
//    @GetMapping("/{id}")
//    public Result selectOne(@ApiParam(required = true, value = "主键id") @PathVariable String id) {
//        return Result.success(this.gcClothesService.getById(id));
//    }
//
//    /**
//     * 新增数据
//     *
//     * @param gcClothes 实体对象
//     * @return 新增结果
//     */
//    @RequestMapping("save")
//    public Result insert(GcClothes gcClothes) {
//        if(isAftNowDate(gcClothes.getAppointmentTime())){
//            return Result.error("请选择正确时间！", null);
//        }
//        if(StringUtils.isNotEmpty(gcClothes.getId())){
//            return Result.success(this.gcClothesService.updateById(gcClothes));
//        }
//        gcClothes.setId(IdUtil.fastSimpleUUID());
//        return Result.success(this.gcClothesService.save(gcClothes));
//    }
//
//    /**
//     * 修改数据
//     *
//     * @param gcClothes 实体对象
//     * @return 修改结果
//     */
//    @PutMapping
//    public Result update(@RequestBody GcClothes gcClothes) {
//        return Result.success(this.gcClothesService.updateById(gcClothes));
//    }
//
//    /**
//     * 删除数据
//     *
//     * @param id 主键结合
//     * @return 删除结果
//     */
//    @DeleteMapping
//    public Result delete(String id) {
//        return Result.success(this.gcClothesService.removeById(id));
//    }
//}
