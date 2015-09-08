<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="org.springframework.security.core.context.SecurityContextHolder" %>
<html lang="en">
	<jsp:include page="../menu/header.jsp" />
	<body>
		<jsp:include page="../menu/topMenu.jsp" />
		<div class="container-fluid">
			<div class="row-fluid">
		        <div class="span10">
		        	<div class="header">问题</div>
		        	<c:forEach items="${questions}" var="question">
		        		<div class="questionlist">
			        		<div class="subject">
								<a href="<c:url value="/question/view/${question.id}"/>">${question.subject}</a>
							</div>
							<div class="metainfo">
								<a class="icon-pencil"></a> ${fn:length(question.answers)} &nbsp;
								<a class="icon-thumbs-up"></a> ${fn:length(question.votes)} &nbsp;
								<a class="icon-bookmark"></a> ${fn:length(question.bookmarks)} &nbsp;
								<a class="icon-eye-open"></a> ${question.viewCount}
							</div>
							<div class="tags">
								<c:forEach items="${question.tags}" var="tag">
									<a href="<c:url value="/tags/view?name=${tag}"/>">${tag}</a>
								</c:forEach>
							</div>
							<div class="userinfo">
								by <b>${question.createdBy.firstName}</b>
								<i>(<fmt:formatDate value="${question.createdDate}" pattern="dd-MM-yyyy" />)</i>
							</div>
	        			</div>
					</c:forEach>
					<div class="spacer"> &nbsp; </div>
					<div class="pagination pagination-centered">
						<ul>
							<li> <a href="<c:url value="/${pageInfo.firstPage}"/>"> &laquo; &nbsp; 首页 </a> </li>
							<li> <a href="<c:url value="/${pageInfo.previousPage}"/>"> &lt; &nbsp; 上一页 </a> </li>
							<li> <a href="<c:url value="/${pageInfo.nextPage}"/>"> 下一页 &nbsp; &gt; </a> </li>
							<li> <a href="<c:url value="/${pageInfo.lastPage}"/>"> 末页 &nbsp; &raquo; </a> </li>
						</ul>
					</div>
				</div><!--/span-->
				<jsp:include page="../menu/rightMenu.jsp" />
			</div><!--/row-->
			<hr>
			<jsp:include page="../menu/footer.jsp" />
		</div><!--/.fluid-container-->
		<jsp:include page="../menu/includeScripts.jsp" />
	</body>
</html>