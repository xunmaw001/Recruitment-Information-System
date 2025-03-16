package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;


/**
 * 招聘信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-09 15:35:46
 */
@TableName("zhaopinxinxi")
public class ZhaopinxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public ZhaopinxinxiEntity() {
		
	}
	
	public ZhaopinxinxiEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/**
	 * 主键id
	 */
	@TableId
	private Long id;
	/**
	 * 企业账号
	 */
					
	private String qiyezhanghao;
	
	/**
	 * 企业名称
	 */
					
	private String qiyemingcheng;
	
	/**
	 * 联系人
	 */
					
	private String lianxiren;
	
	/**
	 * 联系方式
	 */
					
	private String lianxifangshi;
	
	/**
	 * 企业邮箱
	 */
					
	private String qiyeyouxiang;
	
	/**
	 * 岗位名称
	 */
					
	private String gangweimingcheng;
	
	/**
	 * 办公环境
	 */
					
	private String bangonghuanjing;
	
	/**
	 * 岗位分类
	 */
					
	private String gangweifenlei;
	
	/**
	 * 行业
	 */
					
	private String xingye;
	
	/**
	 * 招聘人数
	 */
					
	private Integer zhaopinrenshu;
	
	/**
	 * 岗位职责
	 */
					
	private String gangweizhize;
	
	/**
	 * 任职要求
	 */
					
	private String renzhiyaoqiu;
	
	/**
	 * 上班地点
	 */
					
	private String shangbandidian;
	
	/**
	 * 上班时间
	 */
					
	private String shangbanshijian;
	
	/**
	 * 薪资待遇
	 */
					
	private Integer xinzidaiyu;
	
	/**
	 * 最近点击时间
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 		
	private Date clicktime;
	
	/**
	 * 点击次数
	 */
					
	private Integer clicknum;
	
	
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
	private Date addtime;

	public Date getAddtime() {
		return addtime;
	}
	public void setAddtime(Date addtime) {
		this.addtime = addtime;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	/**
	 * 设置：企业账号
	 */
	public void setQiyezhanghao(String qiyezhanghao) {
		this.qiyezhanghao = qiyezhanghao;
	}
	/**
	 * 获取：企业账号
	 */
	public String getQiyezhanghao() {
		return qiyezhanghao;
	}
	/**
	 * 设置：企业名称
	 */
	public void setQiyemingcheng(String qiyemingcheng) {
		this.qiyemingcheng = qiyemingcheng;
	}
	/**
	 * 获取：企业名称
	 */
	public String getQiyemingcheng() {
		return qiyemingcheng;
	}
	/**
	 * 设置：联系人
	 */
	public void setLianxiren(String lianxiren) {
		this.lianxiren = lianxiren;
	}
	/**
	 * 获取：联系人
	 */
	public String getLianxiren() {
		return lianxiren;
	}
	/**
	 * 设置：联系方式
	 */
	public void setLianxifangshi(String lianxifangshi) {
		this.lianxifangshi = lianxifangshi;
	}
	/**
	 * 获取：联系方式
	 */
	public String getLianxifangshi() {
		return lianxifangshi;
	}
	/**
	 * 设置：企业邮箱
	 */
	public void setQiyeyouxiang(String qiyeyouxiang) {
		this.qiyeyouxiang = qiyeyouxiang;
	}
	/**
	 * 获取：企业邮箱
	 */
	public String getQiyeyouxiang() {
		return qiyeyouxiang;
	}
	/**
	 * 设置：岗位名称
	 */
	public void setGangweimingcheng(String gangweimingcheng) {
		this.gangweimingcheng = gangweimingcheng;
	}
	/**
	 * 获取：岗位名称
	 */
	public String getGangweimingcheng() {
		return gangweimingcheng;
	}
	/**
	 * 设置：办公环境
	 */
	public void setBangonghuanjing(String bangonghuanjing) {
		this.bangonghuanjing = bangonghuanjing;
	}
	/**
	 * 获取：办公环境
	 */
	public String getBangonghuanjing() {
		return bangonghuanjing;
	}
	/**
	 * 设置：岗位分类
	 */
	public void setGangweifenlei(String gangweifenlei) {
		this.gangweifenlei = gangweifenlei;
	}
	/**
	 * 获取：岗位分类
	 */
	public String getGangweifenlei() {
		return gangweifenlei;
	}
	/**
	 * 设置：行业
	 */
	public void setXingye(String xingye) {
		this.xingye = xingye;
	}
	/**
	 * 获取：行业
	 */
	public String getXingye() {
		return xingye;
	}
	/**
	 * 设置：招聘人数
	 */
	public void setZhaopinrenshu(Integer zhaopinrenshu) {
		this.zhaopinrenshu = zhaopinrenshu;
	}
	/**
	 * 获取：招聘人数
	 */
	public Integer getZhaopinrenshu() {
		return zhaopinrenshu;
	}
	/**
	 * 设置：岗位职责
	 */
	public void setGangweizhize(String gangweizhize) {
		this.gangweizhize = gangweizhize;
	}
	/**
	 * 获取：岗位职责
	 */
	public String getGangweizhize() {
		return gangweizhize;
	}
	/**
	 * 设置：任职要求
	 */
	public void setRenzhiyaoqiu(String renzhiyaoqiu) {
		this.renzhiyaoqiu = renzhiyaoqiu;
	}
	/**
	 * 获取：任职要求
	 */
	public String getRenzhiyaoqiu() {
		return renzhiyaoqiu;
	}
	/**
	 * 设置：上班地点
	 */
	public void setShangbandidian(String shangbandidian) {
		this.shangbandidian = shangbandidian;
	}
	/**
	 * 获取：上班地点
	 */
	public String getShangbandidian() {
		return shangbandidian;
	}
	/**
	 * 设置：上班时间
	 */
	public void setShangbanshijian(String shangbanshijian) {
		this.shangbanshijian = shangbanshijian;
	}
	/**
	 * 获取：上班时间
	 */
	public String getShangbanshijian() {
		return shangbanshijian;
	}
	/**
	 * 设置：薪资待遇
	 */
	public void setXinzidaiyu(Integer xinzidaiyu) {
		this.xinzidaiyu = xinzidaiyu;
	}
	/**
	 * 获取：薪资待遇
	 */
	public Integer getXinzidaiyu() {
		return xinzidaiyu;
	}
	/**
	 * 设置：最近点击时间
	 */
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
	/**
	 * 设置：点击次数
	 */
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}

}
