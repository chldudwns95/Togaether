<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
<link href="/css/login.css" rel="stylesheet" type="text/css" />
 <script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
 <script>
	var msg =  '${msg}';
 	if(msg.length > 0)
	alert(msg);	

 	var upmsg = '${upmsg}';
 	if(updatemsg.length > 0)
	alert(upmsg);
 </script>
</head>

<body>
	<div id="loginWrap">			
		<h1> <a href="/"><img src="/image/signup-logo.png"></a> </h1>
			<form action="login" method="post">
				<div id="loginContent">				
					<input type="email" name="usrEmail" placeholder="이메일을 입력해주세요.">					
					<input type="password" name="usrPassword" placeholder="비밀번호를 입력해주세요">
				</div>
				<input id="loginBtn" type="submit" value="login">				
			</form>			
			<div id="loginContent2">
			<a href="/user/agree" id="signup">회원가입</a>
			<a href="/user/findInfo">아이디 및 비밀번호 찾기</a>					
			</div>				
	
	<form action="login" method="post">
	<a href="https://kauth.kakao.com/oauth/authorize?client_id=d5f97184dea540a9227732bd45e5aeaf&redirect_uri=http://localhost:8090/auth/kakao/callback&response_type=code">
	<!-- <a href="https://kauth.kakao.com/oauth/authorize?client_id=d5f97184dea540a9227732bd45e5aeaf&redirect_uri=http://localhost:8090/auth/kakao/callback&response_type=code"> -->
	<img src="/image/kakaoLoginBtn.png" id="kakaoLoginBtn"></a>	
   

	<!-- <a href="https://developers.kakao.com/logout">로그아웃</a> -->	
	</form>
</div>

<!--  <script type="text/javascript">
	//<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('f35baffbb9ed1bea747f305431a06c22');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
        container: '#kakao-login-btn',
        success: function (authObj) {
            alert(JSON.stringify(authObj));
        },
        fail: function (err) {
            alert(JSON.stringify(err));
        }
    });
  //]]> 
	</script>--> 
	</body> 
</html>