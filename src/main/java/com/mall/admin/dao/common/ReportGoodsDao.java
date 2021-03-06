package com.mall.admin.dao.common;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;



/**
 * 举报物品数据库操作dao
 */
import com.mall.admin.entity.common.Goods;
import com.mall.admin.entity.common.ReportGoods;
import com.mall.admin.entity.common.Student;
@Repository
public interface ReportGoodsDao extends JpaRepository<ReportGoods, Long>,JpaSpecificationExecutor<ReportGoods> {
	/**
	 * 根据id获取
	 * @return
	 */
	@Query("select rg from ReportGoods rg where id = :id")
	ReportGoods find(@Param("id")Long id);
	
	/**
	 * 根据学生查询
	 * @param student
	 * @return
	 */
	List<ReportGoods> findByStudent(Student student);
	
	/**
	 * 根据物品查询
	 * @param goods
	 * @return
	 */
	List<ReportGoods> findByGoods(Goods goods);
	
	/**
	 * 根据学生id和商品id查询
	 * @param id
	 * @param userId
	 * @return
	 */
	@Query("select rg from ReportGoods rg where rg.goods.id = :goodsId and rg.student.id = :studentId")
	ReportGoods find(@Param("goodsId")Long goodsId,@Param("studentId")Long studentId);
	
	
}
