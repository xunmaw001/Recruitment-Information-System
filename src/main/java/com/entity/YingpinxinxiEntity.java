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
 * 应聘信息
 * 数据库通用操作实体类（普通增删改查）
 * @author 
 * @email 
 * @date 2021-03-09 15:35:46
 */
@TableName("yingpinxinxi")
public class YingpinxinxiEntity<T> implements Serializable {
	private static final long serialVersionUID = 1L;


	public YingpinxinxiEntity() {
		
	}
	
	public YingpinxinxiEntity(T t) {
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
	 * 岗位名称
	 */
					
	private String gangweimingcheng;
	
	/**
	 * 岗位职责
	 */
					
	private String gangweizhize;
	
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
					
	private String xinzidaiyu;
	
	/**
	 * 申请日期
	 */
				
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd")
	@DateTimeFormat 		
	private Date shenqingriqi;
	
	/**
	 * 个人简历
	 */
					
	private String gerenjianli;
	
	/**
	 * 用户名
	 */
					
	private String yonghuming;
	
	/**
	 * 姓名
	 */
					
	private String xingming;
	
	/**
	 * 联系电话
	 */
					
	private String lianxidianhua;
	
	/**
	 * 是否审核
	 */
					
	private String sfsh;
	
	/**
	 * 审核回复
	 */
					
	private String shhf;
	
	
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
	public void setXinzidaiyu(String xinzidaiyu) {
		this.xinzidaiyu = xinzidaiyu;
	}
	/**
	 * 获取：薪资待遇
	 */
	public String getXinzidaiyu() {
		return xinzidaiyu;
	}
	/**
	 * 设置：申请日期
	 */
	public void setShenqingriqi(Date shenqingriqi) {
		this.shenqingriqi = shenqingriqi;
	}
	/**
	 * 获取：申请日期
	 */
	public Date getShenqingriqi() {
		return shenqingriqi;
	}
	/**
	 * 设置：个人简历
	 */
	public void setGerenjianli(String gerenjianli) {
		this.gerenjianli = gerenjianli;
	}
	/**
	 * 获取：个人简历
	 */
	public String getGerenjianli() {
		return gerenjianli;
	}
	/**
	 * 设置：用户名
	 */
	public void setYonghuming(String yonghuming) {
		this.yonghuming = yonghuming;
	}
	/**
	 * 获取：用户名
	 */
	public String getYonghuming() {
		return yonghuming;
	}
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
	 * 设置：是否审核
	 */
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
	/**
	 * 设置：审核回复
	 */
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}

}
