<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/boardtwo/css/bootstrap.min.css">
<style>
.container content, .container aside {
    position: relative;
  }

  figure {
    width: 100%;
    position: relative;
  }
  
  figure img {
    display: block;
    width: 100%;
    height: 100%;
  } 
  figure h4 {
    position: absolute;
    top: calc(100% - 50px);
    left: 0;
    width: 100%;
    height: 50px;
    color: #fff;
    background: rgba(0, 0, 0, 0.6);
    margin: 0;
  } 
  figure .overlay {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    overflow: hidden;
    width: 100%;
    height: 0;
    color: #fff;
    background: rgba(0, 0, 0, 0.6);
        -webkit-transition: .6s ease;
        transition: .6s ease;
  }
  figure .overlay .description {
    font-size: 20px;
    position: absolute;
    top: 50%;
    left: 50%;
    -webkit-transform: translate(-50%, -50%);
    -ms-transform: translate(-50%, -50%);
    transform: translate(-50%, -50%);
    text-align: center;
  }
  
  figure:hover h4 {
    display: none;
  } 
  figure:hover .overlay {
    display: block;
    height: 100%;
  }
</style>
</head>
<body>


<div class="container">
    <div class="row">
        <figure>
          <img src="${pageContext.request.contextPath}/boardtwo/images/cloud.jpg" class="img-responsive img-rounded" valign="absmiddle" />
          <h4></h4>
          <div class="overlay">
            <div class="description">
              <a href="${pageContext.request.contextPath}/boardtwo/loginForm.jsp">DASH BOARD</a>
            </div>
          </div>
        </figure>
    
    </div>
  </div>

</body>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/boardtwo/js/jquery-3.5.1.min.js"></script>
</html>