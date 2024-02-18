<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품판매 상세정보</title>
<link href="/css/goodsDetail.css" rel="stylesheet" type="text/css" />
 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script>

	function chat_display() {
		var popHeight = 500;                                      // 띄울 팝업창 높이   
		var popWidth = 400;                                       // 띄울 팝업창 너비
		var winHeight = document.body.clientHeight;	  // 현재창의 높이
		var winWidth = document.body.clientWidth;	  // 현재창의 너비
		var winX = window.screenLeft;	                          // 현재창의 x좌표
		var winY = window.screenTop;	                          // 현재창의 y좌표
		var popX = winX + (winWidth - popWidth)/2;
		var popY = winY + (winHeight - popHeight)/2;

		window.open("chat", "pop",  "top="+popY+", left="+popX+",width="+popWidth+",height="+popHeight+", scrollbars=yes,resizable=no");
	
	}
</script>
</head>
<body>
<jsp:include page="../../nav.jsp"></jsp:include>
<div id="goodsDetail_wrap">
        <div id="goodsContent_wrap">
            <div id="goodsCover">
            	<c:if test="${item.cover != null}">
	                <img src="/goods/${item.cover}" alt="">
	            </c:if>
	            <c:if test="${item.cover == null}">
	                <img src="/image/coverDefault.png" alt="">
	            </c:if>
            </div>
            <div id="goodsUserInfo">
                <ul>
                    <li>
                    	<c:if test="${item.usrCover != null}">
                    		<img src="/user/${item.usrCover}" alt="">
                    	</c:if>
                    	<c:if test="${item.usrCover == null}">
                    		<img src="/image/usrCover_default.png" alt="">
                    	</c:if>
                    </li>
                    <li>${item.usrNickname} 님</li>
                    <li>${item.usrAddr}</li>
                    <li>
                    <c:if test="${item.usrId == sessionScope.user.usrId}">
                        <div>
							<a href="/board/goods/${item.goodsId}/update" class="updateBtn"><img src="/image/update.png"></a> 
							<a href="/board/goods/${item.goodsId}/delete" class="deleteBtn"><img src="/image/delete.png"></a>
                        </div> 
					</c:if>
                    <a href="#" onclick="window.open('chat','window팝업','width=400, height=500, top=200, left=1000, menubar=no, status=no, toolbar=no');" class="chatBtn">채팅하기</a>
                    </li>
                </ul>
            </div>
            <div id="goodsName"><p>${item.goodsName}</p></div>
            <div id="goodsDate"><p>${item.goodsDate}</p></div>
            <div id="goodsInfo">${item.goodsContent}</div>
        </div>  
    </div>
</body>
<jsp:include page="../../footer.jsp"></jsp:include>
</html>