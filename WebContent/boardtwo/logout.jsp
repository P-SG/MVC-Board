<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${check == 1 }">
    <meta http-equiv="Refresh" content="0;url=${pageContext.request.contextPath}/board/joinPro.do">
    </c:if>
    <c:if test ="${check ==0 }">
    <br><br>
   
    </c:if>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/boardtwo/css/bootstrap.min.css">	
</head>
<body>
<div class="jumbotron"  style="text-align: center;">
   	<h3>로그아웃 되었습니다.</h3>
	<br><br><br>
    <a href="../index.jsp">[메인화면으로 돌아가기]</a>
   </div> 
</body>
	<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.js"></script>
	<script src="${pageContext.request.contextPath}/boardtwo/js/jquery-3.5.1.min.js"></script>
</html>