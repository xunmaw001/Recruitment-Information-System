<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>

<!-- 个人中心 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<title>个人中心</title>
		<link rel="stylesheet" href="../../layui/css/layui.css">
		<!-- 样式 -->
		<link rel="stylesheet" href="../../css/style.css" />
		<!-- 主题（主要颜色设置） -->
		<link rel="stylesheet" href="../../css/theme.css" />
		<!-- 通用的css -->
		<link rel="stylesheet" href="../../css/common.css" />
	</head>
	<body style="background: #EEEEEE;">

		<div id="app">
			<!-- 轮播图 -->
			<div class="layui-carousel" id="swiper">
				<div carousel-item id="swiper-item">
					<div v-for="(item,index) in swiperList" v-bind:key="index">
						<img class="swiper-item" :src="item.img">
					</div>
				</div>
			</div>
			<!-- 轮播图 -->

			<!-- 标题 -->
			<h2 style="margin-top: 20px;" class="index-title">USER / CENTER</h2>
			<div class="line-container">
				<p class="line" style="background: #EEEEEE;"> 个人中心 </p>
			</div>
			<!-- 标题 -->

			<div class="center-container">
				<!-- 个人中心菜单 config.js-->
				<div class="left-container">
					<ul class="layui-nav layui-nav-tree">
						<li v-for="(item,index) in centerMenu" v-bind:key="index" class="layui-nav-item" :class="index==0?'layui-this':''">
							<a :href="'javascript:jump(\''+item.url+'\')'">{{item.name}}</a>
						</li>
					</ul>
				</div>
				<!-- 个人中心菜单 -->
				<!-- 个人中心 -->
				<div class="right-container">
					<form class="layui-form" lay-filter="myForm">
						<!-- 主键 -->
						<input type="hidden" name="id" id="id" />
						                                                <div class="layui-form-item">
							<label class="layui-form-label">企业账号</label>
							<div class="layui-input-block">
								<input type="text" name="qiyezhanghao" id="qiyezhanghao" placeholder="企业账号" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">企业名称</label>
							<div class="layui-input-block">
								<input type="text" name="qiyemingcheng" id="qiyemingcheng" placeholder="企业名称" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">联系人</label>
							<div class="layui-input-block">
								<input type="text" name="lianxiren" id="lianxiren" placeholder="联系人" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">联系方式</label>
							<div class="layui-input-block">
								<input type="text" name="lianxifangshi" id="lianxifangshi" placeholder="联系方式" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">企业邮箱</label>
							<div class="layui-input-block">
								<input type="text" name="qiyeyouxiang" id="qiyeyouxiang" placeholder="企业邮箱" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">岗位名称</label>
							<div class="layui-input-block">
								<input type="text" name="gangweimingcheng" id="gangweimingcheng" placeholder="岗位名称" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<div class="layui-input-block">
								<img id="bangonghuanjingImg" style="width: 100px;height: 100px;border-radius: 50%;border: 2px solid #EEEEEE;" src="../../img/avator.png">
								<input type="hidden" id="bangonghuanjing" name="bangonghuanjing" />
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button type="button" class="layui-btn btn-theme" id="bangonghuanjingUpload">
									<i class="layui-icon">&#xe67c;</i>上传图片
								</button>
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">岗位分类</label>
							<div class="layui-input-block">
								<select name="gangweifenlei" id="gangweifenlei">
									<option value="">请选择</option>
									<option v-for="(item,index) in gangweifenlei" v-bind:key="index" :value="item">{{item}}</option>
								</select>
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">行业</label>
							<div class="layui-input-block">
								<select name="xingye" id="xingye">
									<option value="">请选择</option>
									<option v-for="(item,index) in xingye" v-bind:key="index" :value="item">{{item}}</option>
								</select>
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">招聘人数</label>
							<div class="layui-input-block">
								<input type="text" name="zhaopinrenshu" id="zhaopinrenshu" placeholder="招聘人数" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">岗位职责</label>
							<div class="layui-input-block">
								<input type="text" name="gangweizhize" id="gangweizhize" placeholder="岗位职责" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                                                                                        <div class="layui-form-item">
							<label class="layui-form-label">上班地点</label>
							<div class="layui-input-block">
								<input type="text" name="shangbandidian" id="shangbandidian" placeholder="上班地点" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">上班时间</label>
							<div class="layui-input-block">
								<input type="text" name="shangbanshijian" id="shangbanshijian" placeholder="上班时间" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">薪资待遇</label>
							<div class="layui-input-block">
								<input type="text" name="xinzidaiyu" id="xinzidaiyu" placeholder="薪资待遇" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">最近点击时间</label>
							<div class="layui-input-block">
								<input type="text" name="clicktime" id="clicktime" placeholder="最近点击时间" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                                                <div class="layui-form-item">
							<label class="layui-form-label">点击次数</label>
							<div class="layui-input-block">
								<input type="text" name="clicknum" id="clicknum" placeholder="点击次数" autocomplete="off" class="layui-input">
							</div>
						</div>
                                                                
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button class="layui-btn btn-submit btn-theme" lay-submit lay-filter="*">更新信息</button>
							</div>
						</div>
						<div class="layui-form-item">
							<div class="layui-input-block">
								<button @click="logout" class="layui-btn btn-submit">退出登录</button>
							</div>
						</div>
					</form>
				</div>
				<!-- 个人中心 -->
			</div>

		</div>

		<!-- layui -->
		<script src="../../layui/layui.js"></script>
		<!-- vue -->
		<script src="../../js/vue.js"></script>
		<!-- 组件配置信息 -->
		<script src="../../js/config.js"></script>
		<!-- 扩展插件配置信息 -->
		<script src="../../modules/config.js"></script>
		<!-- 工具方法 -->
		<script src="../../js/utils.js"></script>
		<!-- 校验格式工具类 -->
		<script src="../../js/validate.js"></script>

		<script>
			var vue = new Vue({
				el: '#app',
				data: {
					// 轮播图
					swiperList: [{
						img: '../../img/banner.jpg'
					}],
																																																																																					gangweifenlei: [],
																				xingye: [],
																																																																																															centerMenu: centerMenu
				},
                updated: function() {
					layui.form.render(null, 'myForm');
				},
				methods: {
					jump(url) {
						jump(url)
					},
					logout(){
						localStorage.removeItem('Token');
						localStorage.removeItem('role');
						localStorage.removeItem('sessionTable');
						localStorage.removeItem('adminName');
						localStorage.removeItem('userid');
						localStorage.removeItem('userTable');
						window.parent.location.href = '../login/login.jsp';
					}
				}
			})

			layui.use(['layer', 'element', 'carousel', 'http', 'jquery', 'form', 'upload'], function() {
				var layer = layui.layer;
				var element = layui.element;
				var carousel = layui.carousel;
				var http = layui.http;
				var jquery = layui.jquery;
				var form = layui.form;
				var upload = layui.upload;

				// 充值
				jquery('#btn-recharge').click(function(e) {
					layer.open({
						type: 2,
						title: '用户充值',
						area: ['900px', '600px'],
						content: '../recharge/recharge.jsp'
					});
				});

				// 获取轮播图 数据
				http.request('config/list', 'get', {
					page: 1,
					limit: 5
				}, function(res) {
					if (res.data.list.length > 0) {
						var swiperItemHtml = '';
						for (let item of res.data.list) {
							if (item.name.indexOf('picture') >= 0 && item.value && item.value != "" && item.value != null) {
								swiperItemHtml +=
									'<div>' +
									'<img class="swiper-item" src="' + item.value + '">' +
									'</div>';
							}
						}
						jquery('#swiper-item').html(swiperItemHtml);
						// 轮播图
						carousel.render({
							elem: '#swiper',
							width: swiper.width,height:swiper.height,
							arrow: swiper.arrow,
							anim: swiper.anim,
							interval: swiper.interval,
							indicator: "none"
						});
					}
				});

                																																																								// 上传图片
				var bangonghuanjingUpload = upload.render({
					//绑定元素
					elem: '#bangonghuanjingUpload',
					//上传接口
					url: http.baseurl + 'file/upload',
					// 请求头
					headers: {
						Token: localStorage.getItem('Token')
					},
					// 允许上传时校验的文件类型
					accept: 'images',
					before: function() {
						//loading层
						var index = layer.load(1, {
							shade: [0.1, '#fff'] //0.1透明度的白色背景
						});
					},
					// 上传成功
					done: function(res) {
						console.log(res);
						layer.closeAll();
						if (res.code == 0) {
							layer.msg("上传成功", {
								time: 2000,
								icon: 6
							})
							var url = http.baseurl + 'upload/' + res.file;
							jquery('#bangonghuanjing').val(url);
							jquery('#bangonghuanjingImg').attr('src', url)
						} else {
							layer.msg(res.msg, {
								time: 2000,
								icon: 5
							})
						}
					},
					//请求异常回调
					error: function() {
						layer.closeAll();
						layer.msg("请求接口异常", {
							time: 2000,
							icon: 5
						})
					}
				});
																http.request(`option/gangweifenlei/gangweifenlei`,'get',{},(res)=>{
					vue.gangweifenlei = res.data
				});
																http.request(`option/xingyelingyu/xingye`,'get',{},(res)=>{
					vue.xingye = res.data
				});
																																																																												
				// 查询用户信息
				let table = localStorage.getItem("userTable");

				if(!table){
					layer.msg('请先登录', {
						time: 2000,
						icon: 5
					}, function() {
						window.parent.location.href = '../login/login.jsp';
					});
				}

				
				http.request(`${table}/session`, 'get', {}, function(data) {
					// 表单赋值
					form.val("myForm", data.data);
																																																																											// 图片赋值
					jquery("#bangonghuanjingImg").attr("src", data.data.bangonghuanjing);
																																																																																																																		});

				// 提交表单
				form.on('submit(*)', function(data) {
					data = data.field;
					http.requestJson(table + '/update', 'post', data, function(res) {
						layer.msg('修改成功', {
							time: 2000,
							icon: 6
						}, function() {
							window.location.reload();
						});
					});
					return false
				});

			});
		</script>
	</body>
</html>
