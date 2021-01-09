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
		<article>
			<h3><b>글쓰기</b></h3>
			<form method="post" name="writeForm"
				action="${pageContext.request.contextPath}/board/writePro.do"
				onsubmit="return writeSave()">
				<input type="hidden" name="num" value="${num}"> <input
					type="hidden" name="ref" value="${ref}"> <input
					type="hidden" name="step" value="${step}"> <input
					type="hidden" name="depth" value="${depth}">

				<table class="table table-bordered">
					<tr>
						<td>이름</td>
						<td><input class="form-control-static" type="text" name="writer"></td>
					</tr>
					<tr>
						<td>E-Mail</td>
						<td><input class="form-control-static" type="email" name="email"></td>
					</tr>
					<tr>
						<td>제 목</td>
						<td><c:if test="${num==0 }">
								<input class="form-control-static" type="text" name="subject">
							</c:if> <c:if test="${num!=0 }">
								<input class="form-control-static" type="text" name="subject" value="[답변]">
							</c:if></td>
					</tr>
					<tr>
					<td> 내 용 </td>
					<td>
						<textarea class="form-control-static" name="content" rows ="13" cols="40"></textarea>
						</td>
						</tr>
						<tr>
						<td>비밀 번호</td>
						<td>
						<input class="form-control-static" type="password" name="pass">
						</td>
						</tr>
						<tr>
						<td colspan="2" class ="attr">
							<input class="btn btn-success" type ="submit" value="글쓰기">
							<input class="btn btn-danger" type ="reset" value="다시작성">
							<input class="btn btn-warning" type ="button" value="목록" OnClick="window.location='${pageContext.request.contextPath}/board/list.do'">
							</td>
							</tr>
				</table>
			</form>
		</article>
	</section>
</body>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/jquery-3.5.1.min.js"></script>
</html>