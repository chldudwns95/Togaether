<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>같이 가치! 함께 가자</title>
<link rel="icon" type="image/png" href="/image/favicon/favicon-32x32.png">
 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<!-- Slick 불러오기 --> <script
	src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick-theme.min.css">


</head>
<body>
 <jsp:include page="nav.jsp"></jsp:include>
<div class="slider-div">
			<div><a href="/take/wklist"><img src="./image/C_1.jpg"></a></div>
			<div><a href="/take/list"><img src="./image/C_2.jpg"></a></div>
			<div><a href="/board/normal/list"><img src="./image/C_3.jpg"></a></div>
			<div><a href="/take/list"><img src="./image/C_4.jpg"></a></div>
		</div>
	
	<script>
		$(function() {
			$('.slider-div')
					.slick(
							{
								slide : 'div', //슬라이드 되어야 할 태그 ex) div, li 
								infinite : true, //무한 반복 옵션     
								slidesToShow : 1, // 한 화면에 보여질 컨텐츠 개수
								slidesToScroll : 1, //스크롤 한번에 움직일 컨텐츠 개수
								speed : 600, // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
								arrows : false, // 옆으로 이동하는 화살표 표시 여부
								dots : true, // 스크롤바 아래 점으로 페이지네이션 여부
								autoplay : true, // 자동 스크롤 사용 여부
								autoplaySpeed : 4000, // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
								pauseOnHover : true, // 슬라이드 이동    시 마우스 호버하면 슬라이더 멈추게 설정
								vertical : false, // 세로 방향 슬라이드 옵션
							
								dotsClass : "slick-dots", //아래 나오는 페이지네이션(점) css class 지정
								draggable : true, //드래그 가능 여부 
								
								responsive: [
									{
										breakpoint: 1024,
										settings: {
											
										}
									},
									{
										breakpoint: 600,
										settings: {
											
										}
									}
								]

							

							});
		})
	</script>
	
	<div id="content2_wrap">
		<div class="search_img"><img src="./image/index_search.png"></div>
		
		<div class="go">
			<a href="./guide"><img src="./image/button1.png"></a>
			<a href="take/list"><img src="./image/button2.png"></a>
			<a href="board/goods/list"><img src="./image/button3.png"></a>
			<a href="board/normal/straylist"><img src="./image/button4.png"></a>
		</div>
	</div>
	
	<div class="howto"><img src="./image/howto.png"></div>
	
	<div id="content3">
		<div id="content3_title"><img src="/image/content3_title.png"></div>
		<div id="content3_list">
						
			<c:forEach var="history" items="${list }">
			<div class="content3_wrap">
				<ol class="content3_wrap_img"><img src="/history/${history.historyCover}"></ol>
				<ol class="content3_wrap_title">${history.u1Nick } 님 후기</ol>
				<ol class="content3_text">${history.usrHistory }</ol>
				<ol class="content3_review_title">이 후기의 펫시터</ol>
				<ol class="content3_review">
					<li class="content3_review_photo"><img src="/user/${history.usrCover}"></li>
					<li class="content3_review_usrNick">${history.u2Nick } 님</li>
					<li class="content3_review_usrPreview">${history.historyDate }</li>
				</ol>
			</div>
			</c:forEach>
		
		</div>
	</div>
	
	<script>
        $(document).ready(function(){
	        $('#content3_list').slick({
                slide: 'div',
                infinite : true, //무한 반복 옵션     
                slidesToShow : 4, // 한 화면에 보여질 컨텐츠 개수
                slidesToScroll : 1, //스크롤 한번에 움직일 컨텐츠 개수
                autoplay: true,
                arrows: true,
                prevArrow : "<img src='/image/index_content3_left.png'>",		// 이전 화살표 모양 설정
                nextArrow : "<img src='/image/index_content3_right.png'>",		// 다음 화살표 모양 설정   
                responsive: [
                                {
                                breakpoint: 1920,
                                settings: {
									slidesToShow : 3,
                                    }
                                },
								{
								breakpoint: 1200,
                                settings: {
									slidesToShow : 2,
                                    }
                                },

                                {
                                breakpoint: 1000,
                                settings: {
									slidesToShow : 1,                 
                                    }
                                }
                ]
		    });
        }); 
	</script>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>