<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산책 추가</title>
<link href="/css/serviceAdd.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/ui-lightness/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/jquery/datepicker-ko.js"></script>
<script>
$(function() {
	$.datepicker.setDefaults($.datepicker.regional['ko']);
	
    $("#wkDate").datepicker();
});
</script>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
<div class="service_add_wrap">
            <div class="service_add_title">
                <div><h1>산책 서비스를 등록하는 페이지입니다.</h1></div> 
                <div><img src="/image/serviceAdd_title.png"></div>
            </div>
            <div id="service_wk_add_wrap">
                <form method="post" enctype="multipart/form-data">
                    <div class="service_add_userInfo">
                        <div><p>작성자: ${sessionScope.user.usrNickname} 님</p></div>
                        <div><p>주소: ${sessionScope.user.usrAddr}</p></div>
                    </div>
                        <input type="hidden" type="number" value="2" name="serviceSortId" >
                        <input type="hidden" type="number" value="${sessionScope.user.usrId}" name="usrId" >
                    <div class="service_add_wkdatePicker"><p>산책 날짜</p><input type="text" name="serviceStartDate" id="wkDate" placeholder="산책 날짜를 입력하세요."></div>
                    <div class="service_add_wkselectBox">
                        <p>산책 시간</p>
                        <select name="serviceWalkingTime">
                        	<option>--선택하세요--</option>
                            <option value="30분">30분</option>
                            <option value="1시간">1시간</option>
                            <option value="1시간 30분">1시간 30분</option>
                            <option value="2시간">2시간</option>
                        </select>
                    </div>
                    <div class="service_add_radioBox">
                        <p>픽업가능여부</p>
                        <input type="radio" name="servicePickup" value="픽업가능">픽업가능
                        <input type="radio" name="servicePickup" value="픽업 불가능">픽업 불가능
                    </div>
                    <div class="service_add_Etc">
                        <p>특이사항</p>
                        <textarea name="serviceEtc"></textarea>
                    </div>
                    <div class="service_add_price">
                        <p>가격</p>
                        <input type="text" name="serviceWalkingPrice">
                    </div>
                     <div>
					<label>사진:</label>
						<input name="uploadFile" type="file">
					</div>
                    <div class="service_add_Btn">
                        <input type="submit" value="등록">
                    </div>
                </form>
            </div>
        </div>
</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>
