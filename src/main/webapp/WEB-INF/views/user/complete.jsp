<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/signup.css" rel="stylesheet" type="text/css" />
<title>회원가입을 축하드립니다</title>
</head>
<body>
	<%-- <jsp:include page="../nav.jsp"></jsp:include> --%>
	<div class="signup-top3">
	<h1> <a href="/"><img src="/image/signup-logo.png"></a> </h1>	
	<ul class="select"> <li>01.약관동의</li> <li>02.회원가입</li> <li>03.가입완료</li></ul>
	</div>
	
	<div class="congra">	
	<h3>투개더 회원가입을 축하드립니다!</h3>
	<h4>이메일 인증을 완료하신 후 로그인 해주세요~!</h4>	
	</div>
	
	<div class="dog">
	<img src="/image/complete-img.png">
	</div>
<div class="gologin">
<a href="/login">로그인 하러 가기!</a>
</div>
</body>
<%-- <jsp:include page="../footer.jsp"></jsp:include> --%>
</html>