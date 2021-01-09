<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
		<h3 class="card-title"><b> 글목록(전체 글 : ${count })</b></h3>
		<table class="table table-bordered">
			<tr>
				<td>
				<a class="btn btn-primary pull-right" href="${pageContext.request.contextPath}/board/writeForm.do">글쓰기</a>
				</td>
			</tr>
		</table>
		<c:if test="${count == 0 }">
			<table class="table table-bordered table-hover">
				<tr>
					<td>게시판에 저장된 글이 없습니다</td>
				</tr>
			</table>
		</c:if>

		<c:if test="${count >0 }">
			<table class="table table-bordered table-hover">
				<tr>
					<th id="num">번 호</th>
					<th id="title">제 목</th>
					<th id="writer">작성자</th>
					<th id="date">작성일</th>
					<th id="counter">조 회</th>
					<th id="ip">IP</th>
				</tr>
				<c:forEach var="article" items="${articleList }">
					<tr>
						<td align="center" width="50"><c:out value="${number }" /> <c:set
								var="number" value="${number - 1 }" /></td>
						<td><c:if test="${article.depth >0 }">
								<img src="${pageContext.request.contextPath}/boardtwo/images/level.gif"
									width="${5* article.depth }">
								<img src="${pageContext.request.contextPath}/boardtwo/images/re.gif">
							</c:if> <c:if test="${article.depth ==0 }">
								<img src="${pageContext.request.contextPath }/boardtwo/images/level.gif"
									width="${5* article.depth }">
							</c:if> <a href="${pageContext.request.contextPath}/board/content.do?num=${article.num}&pageNum=${currentPage}">${article.subject}</a>
							<c:if test="${article.readcount >= 20 }">
								<img src="${pageContext.request.contextPath}/boardtwo/images/hot.gif">
							</c:if></td>
						<td><a href="mailto:${article.email }">${article.writer}</a>
						</td>
						<td>${article.regdate}</td>
						<td>${article.readcount}</td>
						<td>${article.ip}</td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
		
		<c:if test="${count>0 }">
			<c:set var="imsi" value="${count % pageSize ==0 ? 0 : 1 }" />
			<c:set var="pageCount" value="${count/ pageSize + imsi }" />
			<c:set var="pageBlock" value="${3}" />
			<fmt:parseNumber var="result" value="${currentPage/pageBlock }"
				integerOnly="true" />
			<c:set var="startPage" value="${result * pageBlock + 1 }" />
			<c:set var="endPage" value="${startPage + pageBlock - 1 }" />

			<c:if test="${endPage > pageCount }">
				<c:set var="endPage" value="${pageCount }" />
			</c:if>
			
			<div style="text-align:center;">
			<div>
			<c:if test="${startPage > pageBlock }">
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/board/list.do?pageNum=${startPage - pageBlock}">이전</a>
			</c:if>
			</div>
			<div>
			<c:forEach var="i" begin="${startPage}" end="${endPage }">
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/board/list.do?pageNum=${i}">[${i}]</a>
			</c:forEach>
			</div>
			<div>
			<c:if test="${endPage< pageCount }">
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/board/list.do?pageNum=${startPage + pageBlock}">다음</a>
			</c:if>
			</div>
			</div>
			
		</c:if>
	</section>
</body>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/jquery-3.5.1.min.js"></script>
</html>