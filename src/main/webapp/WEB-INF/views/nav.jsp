<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="icon" type="image/png" href="/image/favicon/favicon-32x32.png">
<link href="/css/index.css" rel="stylesheet" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">


</head>
<body>
<div class="top">
		<a href="/"><img alt="로고" src="/image/logo.png"></a>
	
	<div id="menu_dropDown_wrap">
		<div class="menu">
			<ul>
				<li>이용안내</li>
				<li>이용하기</li>
				<li>물품거래</li>
				<li>정보공유</li>
			</ul>
		</div>
		<div id="menu_dropDown_content">
			<ul>
				<li><a href="/guide">이용안내</a></li>
				<li>
					<ul>
						<li><a href="/take/list">돌봄 서비스</a></li>
						<li><a href="/take/wklist">산책 서비스</a></li>
					</ul>
				</li>
				<li><a href="/board/goods/list">물품거래</a></li>
				<li>
					<ul>
						<li><a href="/board/normal/list">자유 게시판</a></li>
						<li><a href="/board/normal/straylist">유기견 정보</a></li>
					</ul>
				</li>
			</ul>
		</div>
	</div>

	<div class="user">
		<c:if test="${sessionScope.user == null }">
		<ul>			
			<li><a href="/login">로그인</a></li>
			<li>|</li>
			<li><a href="/user/agree">회원가입</a></li>
		</ul>
		</c:if>
		
		<c:if test="${sessionScope.user != null}">
			<div class="index_toggle_wrap">
		        <div class="index_toggleBtn"><img src="/image/index_toggleBtn.png"></div>
				<div class="index_toggle_down">
		           	<div class="index_toggle_usrInfo">
		                <ul>
		                    <li class="usrCover">
		                    	<c:if test="${sessionScope.user.usrCover != null}">
	                          		<img src="/user/${sessionScope.user.usrCover}" alt="">
	                          	</c:if>
	                          	<c:if test="${sessionScope.user.usrCover == null}">
	                          		<img src="/image/usrCover_default.png" alt="">
	                          	</c:if>
		                    </li>
		                    <li>${sessionScope.user.usrNickname} 님</li>
		                    <li>${sessionScope.user.usrEmail}</li>
		                </ul>
		            </div>
		            <div class="index_toggle_content">
		                <a href="/user/${sessionScope.user.usrId}/mypage"><img src="/image/mypageBtn.png">마이페이지</a>
		                <a href="/logout"><img src="/image/logoutBtn.png">로그아웃</a>
		            </div>
		        </div>
		    </div>
		</c:if>
	</div>
	
</div>

	
		
</body>
</html>