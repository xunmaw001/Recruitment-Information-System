package com.entity.vo;

import com.entity.GerenjianliEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 个人简历
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-03-09 15:35:46
 */
public class GerenjianliVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 照片
	 */
	
	private String zhaopian;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 邮箱
	 */
	
	private String youxiang;
		
	/**
	 * 教育经历
	 */
	
	private String jiaoyujingli;
		
	/**
	 * 工作经历
	 */
	
	private String gongzuojingli;
		
	/**
	 * 工作业绩
	 */
	
	private String gongzuoyeji;
		
	/**
	 * 技能
	 */
	
	private String jineng;
		
	/**
	 * 自我评价
	 */
	
	private String ziwopingjia;
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：照片
	 */
	 
	public void setZhaopian(String zhaopian) {
		this.zhaopian = zhaopian;
	}
	
	/**
	 * 获取：照片
	 */
	public String getZhaopian() {
		return zhaopian;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：邮箱
	 */
	 
	public void setYouxiang(String youxiang) {
		this.youxiang = youxiang;
	}
	
	/**
	 * 获取：邮箱
	 */
	public String getYouxiang() {
		return youxiang;
	}
				
	
	/**
	 * 设置：教育经历
	 */
	 
	public void setJiaoyujingli(String jiaoyujingli) {
		this.jiaoyujingli = jiaoyujingli;
	}
	
	/**
	 * 获取：教育经历
	 */
	public String getJiaoyujingli() {
		return jiaoyujingli;
	}
				
	
	/**
	 * 设置：工作经历
	 */
	 
	public void setGongzuojingli(String gongzuojingli) {
		this.gongzuojingli = gongzuojingli;
	}
	
	/**
	 * 获取：工作经历
	 */
	public String getGongzuojingli() {
		return gongzuojingli;
	}
				
	
	/**
	 * 设置：工作业绩
	 */
	 
	public void setGongzuoyeji(String gongzuoyeji) {
		this.gongzuoyeji = gongzuoyeji;
	}
	
	/**
	 * 获取：工作业绩
	 */
	public String getGongzuoyeji() {
		return gongzuoyeji;
	}
				
	
	/**
	 * 设置：技能
	 */
	 
	public void setJineng(String jineng) {
		this.jineng = jineng;
	}
	
	/**
	 * 获取：技能
	 */
	public String getJineng() {
		return jineng;
	}
				
	
	/**
	 * 设置：自我评价
	 */
	 
	public void setZiwopingjia(String ziwopingjia) {
		this.ziwopingjia = ziwopingjia;
	}
	
	/**
	 * 获取：自我评价
	 */
	public String getZiwopingjia() {
		return ziwopingjia;
	}
			
}
