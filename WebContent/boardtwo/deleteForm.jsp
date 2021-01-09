<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="${pageContext.request.contextPath}/boardtwo/css/bootstrap.css">
<head>
<title>게시판</title>
<script>
	function deleteSave() {
		if (document.delForm.pass.value == "") {
			alert("비밀번호를 입력하세요");
			document.delForm.pass.focus();
			return false;
		}
	}
</script>

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
	<section> <h3 class="text-center"><b>글삭제</b></h3>
	<form method="post" name="delForm"
		action="${pageContext.request.contextPath}/board/deletePro.do?pageNum=${pageNum}"
		onsubmit="return deleteSave()">

		<table class="table">
			<tr>
				<td class="text-center"><h4><b>비밀번호를 입력해 주세요.</b></h4></td>
			</tr>
			<tr>
				<td class="text-center">비밀번호 : <input class="form-control-static" type="password" name="pass"> <input
					type="hidden" name="num" value="${num}">
				</td>
			</tr>
			<tr>
				<td>
				<div class="row text-center">
				<input class="btn btn-danger"  type="submit" value="삭제">
				 <input class="btn btn-warning" type="button" value="목록"
					onClick="document.location.href='${pageContext.request.contextPath}/board/list.do?pageNum=${pageNum}'">
				</div>
				</td>
			</tr>

		</table>
	</form>
	</section>
</body>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/jquery-3.5.1.min.js"></script>
</html>