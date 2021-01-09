<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
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
      <a class="navbar-brand" href="../index.jsp">DashBoard</a>
    </div>
  </div>
</nav>
<div class="container">
    <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
        <div class="panel panel-success">
            <div class="panel-heading">
                <div class="panel-title">환영합니다!</div>
            </div>
            <br>
            <div class="panel-body">
                <form class="form-horizontal" role="form" name="joinForm" method="post" action="${pageContext.request.contextPath}/board/loginPro.do">
                    <div>
                    	<p>아이디</p>
                        <input type="text" class="form-control" name="id" placeholder="아이디" autofocus>
                    </div>
                    <br>
                    <div>
                    	<p>비밀번호</p>
                        <input type="password" class="form-control" name="password" placeholder="비밀번호">
                    </div>
                    <br><br><br>
                    <div>
                        <button type="submit" class="form-control btn btn-primary">로그인</button>
                    </div>
                    <br>
                    <div>
                    	<a class="form-control btn btn-primary" href="${pageContext.request.contextPath}/boardtwo/joinForm.jsp">회원가입</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</body>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/jquery-3.5.1.min.js"></script>
</html>