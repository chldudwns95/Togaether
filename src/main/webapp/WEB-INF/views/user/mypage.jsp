<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mypage</title>
<link href="/css/mypage.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
$(document).ready(function() {
    $('#mypage_extra').css('display','none');
    $('#mypage_history').css('display','none');
    $('#mypage_UsageHistory').css('display','none');
    $('#mypage_myService').css('display','none');

    $('#myPage_menuBtn1').click(function(){
        $(this).css({'width':'100px','height':'40px'});
        $('#myPage_right_content_wrap').css('flex-direction','column');
        $('#myPage_right_tilte_wrap').css('height','80px');
        $('#mypage_extra').css('display','block');
        $('#myPage_menuBtn2').css('display','none');
        $('#myPage_menuBtn3').css('display','none');
        $('#myPage_menuBtn4').css('display','none');
        $('#myPage_menuBtn1 > h2').css({'width':'100px','height':'40px'});
    });

    $('#extra_xBtn').click(function() {
        $('#mypage_extra').css('display','none');
        $('#myPage_menuBtn1').css({'width':'150px','height':'150px'});
        $('#myPage_right_tilte_wrap').css('height','400px');
        $('#myPage_menuBtn2').css('display','block');
        $('#myPage_menuBtn3').css('display','block');
        $('#myPage_menuBtn4').css('display','block');
        $('#myPage_menuBtn1 > h2').css({'width':'150px','height':'150px'});
    });

    $('#myPage_menuBtn2').click(function(){
        $(this).css({'width':'100px','height':'40px'});
        $('#myPage_right_content_wrap').css('flex-direction','column');
        $('#myPage_right_tilte_wrap').css('height','80px');
        $('#mypage_history').css('display','block');
        $('#myPage_menuBtn1').css('display','none');
        $('#myPage_menuBtn3').css('display','none');
        $('#myPage_menuBtn4').css('display','none');
        $('#myPage_menuBtn2 > h2').css({'width':'100px','height':'40px'});
    });

    $('#history_xBtn').click(function() {
        $('#mypage_history').css('display','none');
        $('#myPage_menuBtn2').css({'width':'150px','height':'150px'});
        $('#myPage_right_tilte_wrap').css('height','400px');
        $('#myPage_menuBtn1').css('display','block');
        $('#myPage_menuBtn3').css('display','block');
        $('#myPage_menuBtn4').css('display','block');
        $('#myPage_menuBtn2 > h2').css({'width':'150px','height':'150px'});
    });

    $('#myPage_menuBtn3').click(function(){
        $(this).css({'width':'100px','height':'40px'});
        $('#myPage_right_content_wrap').css('flex-direction','column');
        $('#myPage_right_tilte_wrap').css('height','80px');
        $('#mypage_UsageHistory').css('display','block');
        $('#myPage_menuBtn1').css('display','none');
        $('#myPage_menuBtn2').css('display','none');
        $('#myPage_menuBtn4').css('display','none');
        $('#myPage_menuBtn3 > h2').css({'width':'100px','height':'40px'});
    });

    $('#usage_xBtn').click(function() {
        $('#mypage_UsageHistory').css('display','none');
        $('#myPage_menuBtn3').css({'width':'150px','height':'150px'});
        $('#myPage_right_tilte_wrap').css('height','400px');
        $('#myPage_menuBtn1').css('display','block');
        $('#myPage_menuBtn2').css('display','block');
        $('#myPage_menuBtn4').css('display','block');
        $('#myPage_menuBtn3 > h2').css({'width':'150px','height':'150px'});
    });

    $('#myPage_menuBtn4').click(function(){
        $(this).css({'width':'100px','height':'40px'});
        $('#myPage_right_content_wrap').css('flex-direction','column');
        $('#myPage_right_tilte_wrap').css('height','80px');
        $('#mypage_myService').css('display','block');
        $('#myPage_menuBtn1').css('display','none');
        $('#myPage_menuBtn2').css('display','none');
        $('#myPage_menuBtn3').css('display','none');
        $('#myPage_menuBtn4 > h2').css({'width':'100px','height':'40px'});
    });

    $('#service_xBtn').click(function() {
        $('#mypage_myService').css('display','none');
        $('#myPage_menuBtn4').css({'width':'150px','height':'150px'});
        $('#myPage_right_tilte_wrap').css('height','400px');
        $('#myPage_menuBtn1').css('display','block');
        $('#myPage_menuBtn2').css('display','block');
        $('#myPage_menuBtn3').css('display','block');
        $('#myPage_menuBtn4 > h2').css({'width':'150px','height':'150px'});
    });
});    
</script>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
	<div id="myPage_wrap">
        <div id="myPage_title_wrap">
            <div><h1>마이 페이지</h1></div>
        </div>
        <div id="myPage_content_wrap">
            <div id="myPage_left_content_wrap">
                <div>
                        <c:if test="${sessionScope.user.usrCover == null}">
                            <img src="/image/usrCover_default.png" class="inputImg_content">
                        </c:if>
                        <c:if test="${sessionScope.user.usrCover != null}">
                            <img src="/user/${sessionScope.user.usrCover}" class="inputImg_content">
                        </c:if>
                </div>
                <div><p>${sessionScope.user.usrNickname} 님</p></div>
                <div><p>${sessionScope.user.usrAddr}</p></div>
                <div><a href="/user/checkpw?usrId=${sessionScope.user.usrId}">내정보수정하기</a></div>
            </div>
            <div id="myPage_right_content_wrap">
                <div id="myPage_right_tilte_wrap">
                    <div id="myPage_menuBtn1"><h2>추가 서비스</h2></div>
                    <div id="myPage_menuBtn2"><h2>후기 보기</h2></div>
                    <div id="myPage_menuBtn3"><h2>이용내역</h2></div>
                    <div id="myPage_menuBtn4"><h2>제공내역</h2></div>
                </div>
                <div id="mypage_extra">
                    <div id="mypage_extra_addBtn"><img src="/image/xBtn.png" id="extra_xBtn"><a href="/extra/${sessionScope.user.usrId}/add">등록</a></div>
                    <div>
                        <c:forEach items="${extra}" var="extra">
                            <div id="mypage_extra_content"><p>${extra.extraContent }</p><a href="/extra/${sessionScope.user.usrId}/${extra.extraId}/delete"></a></div>
                        </c:forEach>    
                    </div>
                </div>
                <div id="mypage_history">
                	<div id="mypage_history_top"><img src="/image/xBtn.png" id="history_xBtn"></div>
                        <c:forEach items="${history}" var="history">
                            <div id="mypage_history_content"> 
                                <div id="mypage_history_content_titile">
                                    <h3>${history.usrNickname } 님이 쓴 후기</h3>
                                    <p>${history.historyDate }</p>
                                </div>          
                                <div id="mypage_hitory_text">   
                                    <div id="mypage_histor_img"><img src="/history/${history.historyCover}"></div>
                                    <div>
                                        <p>${history.usrPoint }</p>
                                        <p>${history.usrHistory }</p>
                                    </div>
                                </div>
                            </div> 
                        </c:forEach>
                </div>
                <div id="mypage_UsageHistory">
                	<div id="mypage_usage_top"><img src="/image/xBtn.png" id="usage_xBtn"></div>
                        <c:forEach var="book" items="${book}">
                            
                            <div  id="mypage_usage_content">
                                <div><h3>${book.wprhdwk} 님의 서비스</h3><p>${book.serviceIng }</p></div>
                                <div><p>시작 날짜:${book.serviceStartDate} </p><p>종료 날짜:${book.serviceEndDate} </p></div>
                                <div><p>가격:<fmt:formatNumber value="${book.servicePrice }" pattern="#,###"/></p><a href="/history/${book.bookId}/add">후기쓰기</a></div>
                            </div>
                            </c:forEach>
                </div>
                <div id="mypage_myService">
                	<div id="mypage_service_top"><img src="/image/xBtn.png" id="service_xBtn"></div>
                        <c:forEach var="book" items="${serviceBook}">                            
                            <div id="mypage_service_content">
                                <div><h3>${book.tkdydwk} 님이 제공한 서비스</h3><p>${book.serviceIng }</p></div>
                                <div><p>시작 날짜:${book.serviceStartDate} </p><p>종료 날짜:${book.serviceEndDate}</p></div>
                                <div><p>가격<fmt:formatNumber value="${book.servicePrice }" pattern="#,###"/></p><a href="/book/${book.bookId}/update"> 진행상황 변경</a></div>
                            </div>
                        </c:forEach>
                </div>
            </div>
        </div>
    </div>
</body>
<jsp:include page="../footer.jsp"></jsp:include>    
</html>