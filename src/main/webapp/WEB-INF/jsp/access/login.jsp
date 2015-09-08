<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html lang="en">
  <jsp:include page="../menu/header.jsp" />

  <body>
  	<div class="container">
		<c:if test="${not empty message}">
			<div class="span6 offset2 alert">${message}</div>
		</c:if>
  		<div class="span6 offset2 well">
	  		<form class="form-horizontal" action="j_spring_security_check" method="post">
			  <legend>登录</legend>
			  <div class="control-group">
			    <label class="control-label" for="j_username">用户名</label>
			    <div class="controls">
			      <input type="text" id="j_username" name="j_username" placeholder="User Name">
			    </div>
			  </div>
			  <div class="control-group">
			    <label class="control-label" for="j_password">密码</label>
			    <div class="controls">
			      <input type="password" id="j_password" name="j_password" placeholder="Password">
			    </div>
			  </div>
			  <div class="control-group">
			    <div class="controls">
			      <button type="submit" class="btn btn-primary">登录</button>
			      <button type="submit" class="btn btn-danger">重置</button>
			    </div>
			  </div>
			  <div class="control-group">
			    <div class="controls">
			      Not a User? <a href="<c:url value="/users/add"/>">注册</a>
			    </div>
			  </div>
			</form>
  		</div>
  	</div>
	
	<!-- Placed at the end of the document so the pages load faster -->
    <jsp:include page="../menu/includeScripts.jsp" />
</body>
</html>