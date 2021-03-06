<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>todoOne</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
<script src="${pageContext.request.contextPath}/assets/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/browser.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/breakpoints.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/util.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</head>
<body class="is-preload">
<!-- Wrapper -->
<div id="wrapper">

	<!-- Main -->
	<div id="main">
		<div class="inner">
		
		<!-- Content -->
		<section>
			<header class="major">
				<h2>${todoOne.todoDate}</h2>
			</header>
			
			<div class="table-wrapper">
				<table class="alt">
					<tr>
						<td>Title</td>
						<td>${todoOne.todoTitle}</td>
					</tr>
					<tr>
						<td>Content</td>
						<td>${todoOne.todoContent}</td>
					</tr>
					<tr>
						<td>FontColor</td>
						<td>${todoOne.todoFontColor}</td>
					</tr>
					<tr>
						<td>addDate</td>
						<td>${todoOne.todoAddDate}</td>
					</tr>
				</table>
				<input type="hidden" name="memberNo" value="${todoOne.memberNo}">
				<input type="hidden" name="todoNo" value="${todoOne.todoNo}">
				<a href="${pageContext.request.contextPath}/auth/modifyTodoOne?memberNo=${todoOne.memberNo}&todoNo=${todoOne.todoNo}" class="button">Modify</a>
				<a href="${pageContext.request.contextPath}/auth/removeTodoOne?memberNo=${todoOne.memberNo}&todoNo=${todoOne.todoNo}" class="button primary">Delete</a>
			</div>
		</section>
		
		</div>
	</div>
	
	<!-- Sidebar -->
	<div id="sidebar">
		<div class="inner">
			
			<!-- Menu -->
			<nav id="menu">
				<header class="major">
					<h2>Welcome ${sessionMember.memberId}!</h2>
				</header>
				<jsp:include page="/WEB-INF/view/inc/mainMenu.jsp"></jsp:include>
			</nav>
		
			<!-- Footer -->
			<footer id="footer">
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f"><span class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
					<li><a href="#" class="icon brands fa-instagram"><span class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-medium-m"><span class="label">Medium</span></a></li>
				</ul>			
				<p class="copyright">&copy; Untitled. All rights reserved. Demo Images: <a href="https://unsplash.com">Unsplash</a>. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
			</footer>
			
		</div>
	</div>
	
</div>		
</body>
</html>