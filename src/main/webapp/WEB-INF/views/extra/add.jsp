<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추가서비스 등록</title>
<link href="/css/extraAdd.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>
    $(document).ready(function() {
        $('.extra_contentAddBtn').click(function() {
            $('.extra_contentAdd').append(
                '<p class="p">서비스 이름</p> <div class="extraAddBtn_wrap"> <input type="text" name="extraContent" class="extraAdd_input"> <input type="button" class="extra_contentRemoveBtn"> </div>'
            );
            $('.extra_contentRemoveBtn').on('click',function(){
                $(this).parent().prev().remove();
                $(this).parent().remove();
                $(this).prev().remove();
                $(this).remove();
            });
        });
    });
    

</script>

</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>
    <div id="extraAdd_wrap">
        <div id="extraAdd_title_wrap">
            <h1>추가 서비스 등록</h1>
            <div><img src="/image/megaphone.png"><p>돌봄 서비스 등록시 추가적으로 제공할 수 있는 서비스를 입력해주세요.</p></div>
        </div>
        <form method="post">
            <div id="extraAdd_content_wrap">
                <div id="extraAdd_left_content">
                    <div>
                        <div>
                        <c:if test="${sessionScope.user.usrCover == null}">
                            <img src="/image/usrCover_default.png" class="inputImg_content">
                        </c:if>
                        <c:if test="${sessionScope.user.usrCover != null}">
                            <img src="/user/${sessionScope.user.usrCover}" class="inputImg_content">
                        </c:if>
                    	</div>
                        <div><p>${sessionScope.user.usrNickname} 님</p><input type="hidden" type="number" name="usrId" value="${sessionScope.user.usrId}"></div>
                    </div>
                </div>
                <div id="extraAdd_right_content_wrap">
                    <div id="extraAdd_right_content">
                        <div class="extra_contentAdd">
                            <p>서비스 이름</p>
                            <div class="extraAddBtn_wrap">
                                <input type="text" name="extraContent" class="extraAdd_input">
                                <input type="button" class="extra_contentAddBtn">
                            </div>
                        </div>
                    </div>    
                    <div><input type="submit" class="extra_submitBtn" value="등록하기"></div>
                </div>        
            </div>
        </form>
    </div>
</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>