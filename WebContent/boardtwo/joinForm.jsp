<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/boardtwo/css/bootstrap.css">
<script src="${pageContext.request.contextPath}/boardtwo/js/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$('#joinBtn').click(function() {
		
		var id = $('#id');
		var password = $('#password');
		var passCheck = $('#passwordCheck');
		var name = $('#name');
		var email = $('#email');
		var phone = $('#phone');
		var gender = $('gender');
		
		if(id.val() == ''){
			alert('아이디를 입력해주세요.')
			id.focus();
			return;
		}
		
		if(password.val() == ''){
			alert('패스워드를 입력해주세요.')
			password.focus();
			return;
		}
		if(passCheck.val() == ''){
			alert('패스워드확인을 입력해주세요.')
			passCheck.focus();
			return;
		}
		if(password.val() != passCheck.val()){
			alert('패스워드가 일치하지 않습니다.')
			password.val('');
			passCheck.val('');
			password.focus();
			return;
		}
		if(name.val() == ''){
			alert('이름을 입력해주세요.')
			name.focus();
			return;
		}
		if(email.val() == ''){
			alert('이메일을 입력해주세요.')
			email.focus();
			return;
		}
		if(phone.val() == ''){
			alert('휴대전화번호를 입력해주세요.')
			phone.focus();
			return;
		}
		if($('[name="gender"]:checked').length == 0){
			alert('성별을 선택해 주세요.')
			male.focus();
			return;
		}
		$('#join').submit();
	});
});
    
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
      <a class="navbar-brand" href="../index.jsp">DashBoard</a>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="${pageContext.request.contextPath}/boardtwo/loginForm.jsp">로그인</a></li>
      </ul>
    </div>
  </div>
</nav>

<div class="container-fluid" >
	<div class="join-title"><h1>회원가입</h1></div>
	<div class="row">
		<div class="col-sm-6 col-sm-offset-3">
			<div class="panel panel-default">
				<div class="panel-body">
					<form id="join" action="${pageContext.request.contextPath}/board/joinPro.do" method="post">
						<div class="form-group">
							<label for="id">아이디</label>
							<input type="text" id="id" name="id" class="form-control" placeholder="아이디">
						</div>
						<div class="form-group">
							<label for="password">패스워드</label>
							<input type="password" id="password" name="password" class="form-control" placeholder="패스워드">
						</div>
						<div class="form-group">
							<label for="passwordCheck">패스워드확인</label>
							<input type="password" id="passwordCheck" name="passwordCheck" class="form-control" placeholder="패스워드확인">
						</div>
						<div class="form-group">
							<label for="name">이름</label>
							<input type="text" id="name" name="name" class="form-control" placeholder="이름">
						</div>
						<div class="form-group">
							<label for="userEmail">이메일</label>
							<input type="text" id="email" name="email" class="form-control" placeholder="이메일">
						</div>
						<div class="form-group">
							<label for="phone">휴대폰 번호</label>
							<input type="text" id="phone" name="phone" class="form-control" placeholder="휴대전화번호">
						</div>
						<div class="form-group" style="text-align:center;">
 		           			<div class="btn-group" >
                    			<label class="btn btn-primary">
                        			<input type="radio" id="male" name="gender" value="남자" checked>남자
                        			<input type="radio" id="female" name="gender" value="여자">여자
                    			</label>
            	</div>   
            </div>
						<button type="button" id="joinBtn" class="btn btn-primary btn-lg btn-block">회원가입</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>


</body>

<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.min.js"></script>

</html>