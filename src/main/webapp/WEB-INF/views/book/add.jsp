<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<link href="/css/bookAdd.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/ui-lightness/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/jquery/datepicker-ko.js"></script>

<script>
   $(document).ready(function () {
    $.datepicker.setDefaults($.datepicker.regional['ko']);
   
    
    $('#bookStartDate').datepicker();
    $('#bookEndDate').datepicker();
   

});

</script>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
    <div id="bookAdd_wrap">
        <div id="boodAdd_title_wrap">
            <h1>서비스 예약</h1>
            <div>
                <img src="/image/megaphone.png">
                <p>펫시터와 충분한 협의 후 서비스를 진행해 주세요.</p>
            </div>    
        </div>
        <div id="bookAdd_content_wrap">
            <div id="bookAdd_left_content">
                <div>
                    <c:if test="${item.serviceCover != null}">
                       <img src="/take/${item.serviceCover}">
                    </c:if>
                    <c:if test="${item.serviceCover == null}">
                       <img src="/image/coverDefault">
                    </c:if>
                </div>
                <div><p>"${item.usrNickname}님의 서비스 입니다."</p></div>
                <div><p>${item.usrAddr}</p></div>
            </div>
            <div id="bookAdd_right_content">
                <form method="post">
                <input type="hidden" type="number" value="${sessionScope.user.usrId}" name="usrId2">
                <input type="hidden" type="number" value="${item.usrId}" name="usrId">
                <input type="hidden" value="${item.serviceId}" name="serviceId">
                <input type="hidden" value="진행중" name="serviceIng">
                    <div class="bookAdd_right_content_date">
                        <div><p>시작</p><input type="text" name="serviceStartDate" id="bookStartDate"></div>
                        <div><p>종료</p><input type="text" name="serviceEndDate" id="bookEndDate"></div>
                    </div>
                    <div class="bookAdd_right_content_price"><p>가격</p><input type="text" value="${item.serviceSittingPrice }" name="servicePrice"></div>
                    <div class="bookAdd_right_content_submitBtn"><input type="submit" value="예약"></div>
                </form>
            </div>
        </div>
    </div>
</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>