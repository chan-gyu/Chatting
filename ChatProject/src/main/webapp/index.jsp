<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ChatProject</title>
<script src="${path }/resources/js/jquery-3.6.0.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<link rel="stylesheet" href="${path }/resources/css/index.css"/>
<body>

<div id="demo" class="carousel slide" data-ride="carousel">

	 <!-- Indicators -->
	<ul class="carousel-indicators">
	  <li data-target="#demo" data-slide-to="0" class="active"></li>
	  <li data-target="#demo" data-slide-to="1"></li>
	  <li data-target="#demo" data-slide-to="2"></li>
	</ul>
	
	<!-- The slideshow -->
	<div class="carousel-inner">
	  <div class="carousel-item active">
	    <img src="${path }/resources/img/bmw1.jpg" alt="bmw1" class="carousl-itme-img">
	  </div>
	  <div class="carousel-item">
	    <img src="${path }/resources/img/bmw2.jpg" alt="bmw2" class="carousl-itme-img">
	  </div>
	  <div class="carousel-item">
	    <img src="${path }/resources/img/bmw3.jpg" alt="bmw3" class="carousl-itme-img">
	  </div>
	</div>
	
	<!-- Left and right controls -->
	  <a class="carousel-control-prev" href="#demo" data-slide="prev">
	    <span class="carousel-control-prev-icon"></span>
	  </a>
	  <a class="carousel-control-next" href="#demo" data-slide="next">
	    <span class="carousel-control-next-icon"></span>
	  </a>

</div>
<div class="main_wrap">
	<h1 id="main_h1">ChatProject</h1>
	<input type="text" id="user" placeholder="유저명"/>
	<button onClick="chatStart()">시작하기</button>
</div>
	
</body>

<script>

function chatStart(){
	let user = document.getElementById('user').value;
	location.href="${path}/chat.do?user="+user;
	
}

</script>

</html>