package com.mall.admin.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.admin.bean.PageBean;
import com.mall.admin.bean.Result;
import com.mall.admin.entity.common.Student;
import com.mall.admin.entity.common.WantedGoods;
import com.mall.admin.service.common.StudentService;
import com.mall.admin.service.common.WantedGoodsService;

/**
 * 后台求购物品管理控制器
 * @author Administrator
 *
 */
@RequestMapping("/admin/wanted_goods")
@Controller
public class WantedGoodsController {

	@Autowired
	private WantedGoodsService wantedGoodsService;
	@Autowired
	private StudentService studentService;
	
	/**
	 * 求购物品管理列表页面
	 * @param name
	 * @param pageBean
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list")
	public String list(WantedGoods wantedGoods,PageBean<WantedGoods> pageBean,Model model){
		if(wantedGoods.getStudent() != null && wantedGoods.getStudent().getSn() != null){
			Student student = studentService.findBySn(wantedGoods.getStudent().getSn());
			if(student != null){
				wantedGoods.setStudent(student);
			}
		}
		model.addAttribute("title", "求购物品列表");
		model.addAttribute("name", wantedGoods.getName());
		model.addAttribute("sn", wantedGoods.getStudent() == null ? null : wantedGoods.getStudent().getSn());
		model.addAttribute("pageBean", wantedGoodsService.findWantedGoodslist(pageBean, wantedGoods));
		return "admin/wanted_goods/list";
	}
	
	/**
	 * 求购物品删除操作
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Result<Boolean> delete(@RequestParam(name="id",required=true)Long id){
		wantedGoodsService.delete(id);
		return Result.success(true);
	}
}
