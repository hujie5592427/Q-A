<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html lang="en">
 	<jsp:include page="../menu/header.jsp" />

  <body>
	<div class="navbar navbar-fixed-top">
	  <div class="navbar-inner">
	    <div class="container">
	      <a class="brand span2" href="#">Q &amp; A</a>

	      <form class="navbar-search">
		    <input type="text" class="search-query span6" placeholder="Search">
		  </form>
		  <a class="btn btn-primary pull-right" style="color: #fff; font-weight: bold; font-size: 14px;" href="../access/login.jsp">登录</a>
	    </div>
	  </div>
	</div>

	<div class="container">
		<form accept-charset="UTF-8" action="" class="form-horizontal"
			id="addUser" method="post">
			<legend>用户注册</legend>
			<div class="control-group string required">
				<label class="string required control-label" for="firstName"><abbr title="required">*</abbr> 姓</label>
				<div class="controls">
					<input class="string required span6" id="firstName" name="firstName" size="50" type="text">
				</div>
			</div>
			<div class="control-group string required">
				<label class="string required control-label" for="lastName"><abbr title="required">*</abbr> 名</label>
				<div class="controls">
					<input class="string required span6" id="lastName" name="lastName" size="50" type="text">
				</div>
			</div>
			<div class="control-group string required">
				<label class="string required control-label" for="userName"><abbr title="required">*</abbr> 用户名</label>
				<div class="controls">
					<input class="string required span6" id="userName" name="userName" size="50" type="text">
				</div>
			</div>
			<div class="control-group string required">
				<label class="string required control-label" for="password"><abbr title="required">*</abbr> 密码</label>
				<div class="controls">
					<input class="string required span6" id="password" name="password" size="50" type="password">
				</div>
			</div>
			<div class="control-group select optional">
				<label class="select optional control-label" for="country"> 国家</label>
				<div class="controls">
					<select class="select optional" id="country" name="country">
						<option value=""></option>
						<option value="China">中国</option>
					</select>
				</div>
			</div>
			<div class="control-group select optional">
				<label class="select optional control-label" for="countryState"> 地区</label>
				<div class="controls">
					<select class="select optional" id="countryState" name="countryState">
						<option value=""></option>
						<option value="Shang hai">上海</option>
						<option value="Hang zhou">杭州</option>
						<option value="Bei jing">北京</option>
						<option value="Shen zhen"></option>
					</select>
				</div>
			</div>
			<div class="control-group text optional">
				<label class="text optional control-label" for="comments"> 描述</label>
				<div class="controls">
					<textarea class="text optional span6" cols="40" id="comments" name="comments" rows="5"></textarea>
				</div>
			</div>
			<div class="form-actions">
				<input class="btn btn-primary" name="commit" type="submit" value="注册">
				<a class="btn btn-danger" href="<c:url value="/"/>">取消</a> 
			</div>
		</form>
	</div>
	<hr>
	<footer>
		<p>&copy; Satish Ab 2012</p>
	</footer>
	<jsp:include page="../menu/includeScripts.jsp" />
  </body>
</html>