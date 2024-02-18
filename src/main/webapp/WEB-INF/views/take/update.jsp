
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>돌봄 수정</title>
<link href="/css/serviceAdd.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/ui-lightness/jquery-ui.css" />
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="/jquery/datepicker-ko.js"></script>


<script>
   $(document).ready(function () {
    $.datepicker.setDefaults($.datepicker.regional['ko']);

    $('#startDate').datepicker();
    $('#startDate').datepicker("option", "maxDate", $("#endDate").val());
    $('#startDate').datepicker("option", "onClose", function ( selectedDate ) {
    $("#endDate").datepicker( "option", "minDate", selectedDate );
    });

    $('#endDate').datepicker();
    $('#endDate').datepicker("option", "minDate", $("#startDate").val());
    $('#endDate').datepicker("option", "onClose", function ( selectedDate ) {
    $("#startDate").datepicker( "option", "maxDate", selectedDate );
    });
}); 
</script>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
    <div class="service_add_wrap">
        <div class="service_add_title">
            <div><h1>돌봄 서비스를 수정하는 페이지입니다.</h1></div> 
            <div><img src="/image/serviceAdd_title.png"></div>
        </div>
        <div id="service_add_form_wrap">            
            <form method="post" enctype="multipart/form-data">
            
                <div class="service_add_userInfo">
                    <div><p>작성자: ${sessionScope.user.usrNickname} 님</p></div>
                    <div><p>주소: ${sessionScope.user.usrAddr}</p></div>
                </div>
					<input type="hidden" type="number" value="1" name="serviceSortId" >
		            <input type="hidden" type="number" value="${sessionScope.user.usrId}" name="usrId" >    
                <div class="service_add_datePicker">
                    <div><p>시작 날짜</p><input type="text" id="startDate" name="serviceStartDate" placeholder="시작 날짜를 입력하세요."></div>
                    <div><p>종료 날짜</p><input type="text" id="endDate" name="serviceEndDate" placeholder="종료 날짜를 입력하세요."></div>
                </div>
                <div class="service_add_selectBox">
                    <div>
                        <p>주택 종류</p>
                        <select name="serviceHouseSort">
                            <option>--선택하세요--</option>
                            <option value="아파트">아파트</option>
                            <option value="빌라">빌라</option>
                            <option value="단독주택">단독주택</option>
                            <option value="다가구주택">다가구주택</option>
                        </select>
                    </div>
                    <div>
                        <p>주택 크기</p>
                        <select name="serviceHouseSize">
                            <option>--선택하세요--</option>
                            <option value="10평 이하">10평이하</option>
                            <option value="10평 ~ 20평">11평~19평</option>
                            <option value="20평 ~ 30평">20평~29평</option>
                            <option value="30평 ~ 40평">30평~39평</option>
                            <option value="40평 이상">40평이상</option>
                        </select>
                    </div>
                </div>
                <div class="service_add_radioBox">
                    <div>
                        <p>마당유무</p>
                        <input type="radio" name="serviceHouseYard" value="마당있음">마당있음
                        <input type="radio" name="serviceHouseYard" value="마당없음">마당없음
                    </div>
                    <div>
                        <p>픽업가능여부</p>
                        <input type="radio" name="servicePickup" value="픽업가능">픽업가능
                        <input type="radio" name="servicePickup" value="픽업 불가능">픽업 불가능
                    </div>
                </div>
                    
                <div class="service_add_Etc">
                    <p>특이사항</p>
                    <textarea name="serviceEtc" value="${item.serviceEtc}"></textarea>
                </div>               
                <div class="service_add_price">
                    <p>가격</p>
                    <input type="text" name="serviceSittingPrice" value="${item.serviceSittingPrice}">
                </div>
                <div>
					<label>현재이미지:</label>
					<a href="/upload/${item.serviceCover}" target="_blank">${item.serviceCover}</a>
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
