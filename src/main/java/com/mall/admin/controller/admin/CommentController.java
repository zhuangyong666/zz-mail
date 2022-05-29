package com.mall.admin.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.admin.bean.PageBean;
import com.mall.admin.bean.Result;
import com.mall.admin.entity.common.Comment;
import com.mall.admin.entity.common.Goods;
import com.mall.admin.entity.common.Student;
import com.mall.admin.service.common.CommentService;
import com.mall.admin.service.common.GoodsService;
import com.mall.admin.service.common.StudentService;

/**
 * 后台物品评论管理控制器
 * @author Administrator
 *
 */
@RequestMapping("/admin/comment")
@Controller
public class CommentController {

	@Autowired
	private GoodsService goodsService;
	@Autowired
	private StudentService studentService;
	@Autowired
	private CommentService commentService;
	
	/**
	 * 物品评论管理列表页面
	 * @param name
	 * @param pageBean
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/list")
	public String list(Comment comment,PageBean<Comment> pageBean,Model model){
		if(comment.getStudent() != null && comment.getStudent().getSn() != null){
			Student student = studentService.findBySn(comment.getStudent().getSn());
			if(student != null){
				comment.setStudent(student);
			}
		}
		List<Goods> goodsList = null;
		if(comment.getGoods() != null && comment.getGoods().getName() != null){
			goodsList = goodsService.findListByName(comment.getGoods().getName());
		}
		model.addAttribute("title", "物品评论列表");
		model.addAttribute("content", comment.getContent());
		model.addAttribute("name", comment.getGoods() == null ? null : comment.getGoods().getName());
		model.addAttribute("sn", comment.getStudent() == null ? null : comment.getStudent().getSn());
		model.addAttribute("pageBean", commentService.findlist(pageBean, comment,goodsList));
		return "admin/comment/list";
	}
	
	

	
	/**
	 * 物品评论删除操作
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/delete",method=RequestMethod.POST)
	@ResponseBody
	public Result<Boolean> delete(@RequestParam(name="id",required=true)Long id){
		commentService.delete(id);
		return Result.success(true);
	}
}
