<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
<script src="${pageContext.request.contextPath}/boardtwo/script.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/boardtwo/css/bootstrap.css">
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
     <a class="navbar-brand" href="${pageContext.request.contextPath}/board/list.do">DashBoard</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/boardtwo/logout.jsp">로그아웃</a></li>
      </ul>
    </div>
  </div>
</nav>
	<section>
		<h3 class="display-4"><b>글수정</b></h3>
		<form method="post" name="writeForm"
			action="${pageContext.request.contextPath}/board/updatePro.do?pageNum=${pageNum}"
			onsubmit="return writeSave()">
			<table class="table table-bordered">
				<tr>
					<td>이름</td>
					<td>${article.writer}
					<input type="hidden" name="num" value="${article.num}"> 
					<input type="hidden" name="writer" value="${article.writer}">
					</td>
				</tr>
				<tr>
					<td>E-mail</td>
					<td><input type="text" name="email" value="${article.email}">
					</td>
				</tr>
				<tr>
					<td>제목</td>
					<td><input class="input" type="text" name="subject" value="${article.subject}"></td>
				</tr>
				<tr>
					<td>내용</td>
					<td><textarea name="content" rows="13" cols="50">${article.content }</textarea>
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td><input type="password" name="pass"></td>
				</tr>
				<tr>
					<td colspan="2">
					<input class="btn btn-success" type="submit" value="글수정">
						<input class="btn btn-danger" type="reset" value="다시작성"> 
						<input class="btn btn-warning" type="button" value="목록보기"
						onClick="window.location='${pageContext.request.contextPath}/board/list.do?pageNum=${pageNum}'"}>
					</td>
				</tr>


			</table>
	</section>
</body>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/jquery-3.5.1.min.js"></script>
</html>