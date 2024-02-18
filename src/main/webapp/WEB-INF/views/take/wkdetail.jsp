<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/walkDetail.css" rel="stylesheet" type="text/css" />

<title>산책 상세</title>
</head>
<body>
   <jsp:include page="../nav.jsp"></jsp:include>

<div id="wkDetail_wrap">                 
        <div class="takeDetail_service_usrInfo">
            <div class="userInfo_img">
               <c:if test="${item.usrCover != null}">
                  <img src="/user/${item.usrCover }">
               </c:if>
               <c:if test="${item.usrCover == null}">
                  <img src="/image/usrCover_default.png">
               </c:if>
            </div>
            <div class="wkDetail_serviceInfo">
                <div><p class="takeDetail_service_usrInfo_nick">${item.usrNickname } 님</p></div>
                <div class="wkDetail_serviceInfo_content">
                    <div><p>1시간</p> <p>픽업 가능</p></div>
                    <div class="price"><img src="/image/priceIcon.png"><p><fmt:formatNumber value="${item.serviceWalkingPrice }" pattern="#,###"/></p></div>
                </div>
            </div>
        </div>
               


        <div class="takeDetail_content_wrap">
            <div class="takeDetail_left_wrap">
                <div class="date">
                    <div><p>산책날짜</p><p>${item.serviceStartDate.substring(0,10) }</p></div>                 
                </div>               
                <div><p>${item.usrNickname} 님을 소개합니다</p><p>${item.serviceEtc }</p></div>             
            </div>
            <div class="takeDetail_right_wrap">
                <div><p>${item.usrNickname } 님의 위치</p><p>${item.usrAddr}</p></div>
                <div id="map"></div>
            </div>
        </div>

        <div class="takeDetail_history_wrap">
            <div><h1>후기</h1></div>
            <c:forEach var="history" items="${history}">
               <div class="takeDetail_history_content_wrap">
                   <div class="takeDetail_history_img">
                     	<c:if test="${history.historyCover != null}">
                         <img src="/history/${history.historyCover}">
                    </c:if>
                    <c:if test="${history.historyCover == null}">
                         <img src="/image/coverDefault.png">
                      </c:if>
                   </div>
                   <div class="takeDetail_history_content">
                       <div>
                           <div class="takeDetail_history_usrCover">
                              <c:if test="${history.usrCover != null}">
                                 <img src="/user/${history.usrCover }">
                              </c:if>
                              <c:if test="${history.usrCover == null}">
                                 <img src="/image/usrCover_default.png">
                              </c:if>
                           </div>
                           <div>
                               <div class="takeDetail_history_usrNick"><p>${history.usrNickname } 님</p></div>
                               <div><p>점수: ${history.usrPoint }</p></div>
                           </div>
                       </div>
                       <div class="history"><p>${history.usrHistory }</p><p>${history.historyDate }</p></div>
                   </div>
               </div>
            </c:forEach>
        </div>
    </div>
   
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f35baffbb9ed1bea747f305431a06c22&libraries=services,clusterer,drawing"></script>
<script>   
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${item.usrAddr}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${item.usrAddr}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>