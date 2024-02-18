
<!-- emailConfirm.jsp -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원가입을 축하드립니다</title>
<link href="/css/success.css" rel="stylesheet" type="text/css" />
</head>

<script language="javascript">
var wintimer;
clearTimeout(wintimer);
wintimer= setTimeout("closewin()",4000);  //천분의 1초 단위로 초를 지정합니다..

function closewin() {
   window.close();
}
window.onload=showWindow;

</script>

<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<div id="success_wrap">
        <div id="text1"><p>안녕하세요, ${param.usrEmail} 님 <br><br> 환영합니다! <br><br> 회원가입이 정상적으로 이루어 졌습니다. <br><br> 로그인 하시면 홈페이지 내의 모든 서비스를 이용하실 수 있습니다.</p></div>
        <div id=wrap2>
        <div id="text2"><p>이 페이지는 자동으로 닫힙니다.</p></div>
        <div id="loginBtn"><a href="/login">로그인 하러가기</a></div>
        <div id="img"><img src="/image/success.png"></div>
        </div>    
    </div>
</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>