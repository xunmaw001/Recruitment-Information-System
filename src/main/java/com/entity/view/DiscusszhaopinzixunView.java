package com.entity.view;

import com.entity.DiscusszhaopinzixunEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 招聘资讯评论表
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2021-03-09 15:35:47
 */
@TableName("discusszhaopinzixun")
public class DiscusszhaopinzixunView  extends DiscusszhaopinzixunEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public DiscusszhaopinzixunView(){
	}
 
 	public DiscusszhaopinzixunView(DiscusszhaopinzixunEntity discusszhaopinzixunEntity){
 	try {
			BeanUtils.copyProperties(this, discusszhaopinzixunEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
