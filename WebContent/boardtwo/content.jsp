<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>
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
		<h3><b>글내용 보기</b></h3> 
		<form>
			<table class="table table-bordered">
				<tr>
					<th>글번호</th>
					<td>${article.num}</td>
					<th>조회수</th>
					<td>${article.readcount }</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td>${article.writer}</td>
					<th>작성일</th>
					<td>${article.regdate}</td>
				</tr>
				<tr>
					<th>글제목</th>
					<td colspan="3" class="contenttitle">${article.subject}</td>
				</tr>

<tr>
<th>글내용</th>
<td colspan ="3" class="content">
<pre>${article.content}</pre></td>
</tr>
				<tr>
					<td colspan="4"><input class="btn btn-success" type="button" value="수 정"
						onClick="document.location.href='${pageContext.request.contextPath}/board/updateForm.do?num=${article.num}&pageNum=${pageNum }'">
						&nbsp;&nbsp;&nbsp;&nbsp; <input class="btn btn-danger" type="button" value="삭 제 "
						onClick="document.location.href = '${pageContext.request.contextPath}/board/deleteForm.do?num=${article.num}&pageNum=${pageNum}'">
						&nbsp;&nbsp;&nbsp;&nbsp; <input class="btn btn-info" type="button" value="답 글"
						onClick="document.location.href='${pageContext.request.contextPath}/board/writeForm.do?num=${article.num}&ref=${article.ref}&step=${article.step}&depth=${article.depth}'">
						&nbsp;&nbsp;&nbsp;&nbsp; <input class="btn btn-warning" type="button" value="목 록"
						onClick="document.location.href='${pageContext.request.contextPath}/board/list.do?pageNum=${pageNum}'"></tr>
			</table>
		</form>
	</section>
</body>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/jquery-3.5.1.min.js"></script>
</html>