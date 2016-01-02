<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ include file="/WEB-INF/content/base/taglibs.jsp"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
	<title>ImEthan|Full Stack Engineer</title>
	<link href="${root}/theme/css/index.css" rel="stylesheet">
</head>
<body>
	<div class="jumbotron">
	  <div class="container" style="text-align: center;">
	  	<h2>Hello I'm Ethan</h2>
	  	<p>欢迎访问我的技术部落格</p>
	  	<p><a href="${root}/blog/article/104" type="button" style="width: 200px;" class="button button-3d button-primary button-small">Learn more</a></p>
	  </div>
	</div>
	<div class="container linkBox" >
		<div class="media">
		  <div class="media-left">
				<a href="${root}/blog">
					<span class="icon-book" style="color: #5bc0de;font-size: 60px;"></span>
				</a>
		  </div>
		  <div class="media-body">
		    <a href="${root}/blog"><h4 class="media-heading">Blog</h4></a>
		  	  博客文章模块，ImEthan的所有干货都在这里
		  </div>
		</div>
		
		<div class="media">
		  <div class="media-left">
				<a href="${root}/todo">
					<span class="icon-tasks" style="color: #f0ad4e;font-size: 60px;"></span>
				</a>
		  </div>
		  <div class="media-body">
		    <a href="${root}/todo"><h4 class="media-heading">Todo</h4></a>
		  	 我的todo列表，记录待办事项，包括技能学习等事项的记录
		  </div>
		</div>
		
		<div class="media">
		  <div class="media-left">
				<a href="${root}/blog/23">
					<span class="icon-briefcase" style="color: #5cb85c;font-size: 60px;"></span>
				</a>
		  </div>
		  <div class="media-body">
		    <a href="${root}/blog/23"><h4 class="media-heading">Item</h4></a>
		  	 闲暇时间开发和整理的开放源代码项目介绍
		  </div>
		</div>
		
		<div class="media linkWrap">
		  <div class="media-left">
				<a href="${root}/about">
					<span class="icon-user" style="color: #d9534f;font-size: 60px;"></span>
				</a>
		  </div>
		  <div class="media-body">
		    <a href="${root}/about"><h4 class="media-heading">About</h4></a>
		  	 个人信息展示页面，正常情况下，将简历详情隐藏，待到派上用场的时候再设置公开
		  </div>
		</div>
	</div>
	
	<div class="container labelBox" >
		<div class="row">
			<div class="col-md-12">
				<label><span class="glyphicon glyphicon-tags"></span>  Tag Cloud</label>
				<br>
				<c:forEach items="${allLabel}" var="label" varStatus="status">
					<a href="${root}/blog/tag/${label.id}" >
						<span class='label label-info indexLabel'>
							${label.name}
						</span>
					</a>
					&nbsp;
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>

