<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>산책목록</title>
<link href="/css/list.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<div id="take_list_wrap">
		<div id="left_wrap">
			<div id="left_top">
				<div id="search_wrap">
					<div id="search_img">
						<img src="/image/search.png">
					</div>
					<form method="get" action="">
						<span> <select name="search" style="display: none;">
								<!-- <option value="0">선택</option> -->
								<option value="1" ${pager.search == 1 ? 'selected' : ''}>지역</option>
						</select>
						</span>
						 	<span> <input id="search_text" type="text" name="keyword" placeholder="지역을 입력해 주세요" value="${pager.keyword}"></span>
							<span> <input type="submit" value="검색" onKeypress="javascript:if(event.keyCode==13)" style="display: none;"></span>
					</form>
				</div>

				<div id="selectBtn">
					<a href="list" class="listBtn2">돌봄</a> <a href="wklist"
						class="wklistBtn2">산책</a>
				</div>
			</div>

			<div id="take_list">
				<div id="list_title">
					<p>산책 서비스</p>
				</div>
				<div id="list">
					<c:forEach var="item" items="${list}">
						<c:if test="${item.serviceSortId ==2 }">
							<div class="take_cardList">
								<ul class="take_list_content"
									onclick="location.href='${item.serviceId}/wkdetail'">
									<li class="take_cardList_img"><img src="/user/${item.usrCover }"></li>
									<li class="take_list_content_text">
										<p>작성자:${item.usrNickname}</p>
										<p>주소:${item.usrAddr}</p>
										<p>가격:<fmt:formatNumber value="${item.serviceWalkingPrice }" pattern="#,###"/>원</p>										
										<p>${item.servicePickup}</p> 
										<c:if test="${item.usrId == sessionScope.user.usrId}">
											<p class="btn_wrap">
												<a href="${item.serviceId}/wkupdate" class="updateBtn"><img src="/image/update.png"></a> <a href="${item.serviceId}/wkdelete" class="deleteBtn"><img src="/image/delete.png"></a>
											</p>
										</c:if>
									</li>
								</ul>
							</div>
						</c:if>
					</c:forEach>
				</div>


				<div class="page">
					<!--페이지넨션 -->
					<ul class="page_ul">
						<li class="page_li"><a
							href="?page=${pager.prev}&${pager.query}"><img src="/image/page_left.png"></a></li>
						<c:forEach var="page" items="${pager.list}">
							<li class="${page == pager.page ? 'page-item active' : ''}"><a href="?page=${page}&${pager.query}">${page}</a></li>
						</c:forEach>
						<li class="page_li"><a href="?page=${pager.next}&${pager.query}"><img src="/image/page_right.png"></a></li>
					</ul>
				</div>
				<!-- 페이지넨션 -->
			</div>
		</div>


		<div id="right_wrap">
			<div id="addBtn">
				<div id="addBtn_wrap">
					<img src="/image/add.png"><a href="wkadd">서비스 등록하기</a>
				</div>
			</div>

			<div id="map">
				<script type="text/javascript"
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=f35baffbb9ed1bea747f305431a06c22&libraries=services,clusterer,drawing"></script>
				<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
				<script>
					var container = document.getElementById('map');
					var options = {
						center : new kakao.maps.LatLng(33.450701, 126.570667),
						level : 5
					};
					// 지도를 생성합니다    
					var map = new kakao.maps.Map(container, options);
				</script>

				<!------------------------------ 키워드 검색 코드, 마커, 윈도인포 ------------------------->

				<c:forEach var="item" items="${list}">
					<c:if test="${item.serviceSortId ==2 }">
						<script>
							// 장소 검색 객체를 생성합니다
							var ps = new kakao.maps.services.Places();
							// 키워드로 장소를 검색합니다
							ps.keywordSearch('${item.usrAddr}', placesSearchCB);
							place.setMap(null);

							function placesSearchCB(data, status, pagination) {
								//입력시 y좌표가 먼저 와야 함. */ 
								// 이동할 위도 경도 위치를 생성합니다 
								var moveLatLon = new kakao.maps.LatLng(
										data[0].y, data[0].x);
								//마커생성
								var marker = new kakao.maps.Marker({
									position : moveLatLon
								});
								// 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
								map.panTo(moveLatLon);
								// 화면에 마커 표시
								marker.setMap(map);

								//////////////////// 윈도인포표시 관련 코드///////////////////////////////////////////////////////////////////////
								// 인포윈도 클릭했을때 보여지는 정보 
								var iwContent = '<div class="infoWrap">'
										       + '<div class="infoImg"><img src="/image/logo.png"></div>'
										       + '<div class="infoList">'
									           + '<div class="info_listWrap">'
								               + '<div class="infoAdress">주소: ${item.usrAddr}</div>'
								               + '<div class="infoDate">서비스 시작일: ${item.serviceStartDate.substring(0,10)}</div>'
								               + '<div class="infoPrice">가격: ${item.serviceWalkingPrice}</div>'
									           + '</div>'
									           + '<div class="infoA"><a href="${item.serviceId}/wkdetail">상세보기</a></div>'
										       + '</div>'
											   + '</div>';
											   
								iwRemoveable = true; // 닫기버튼 생성
								// 윈도인포의 표시할 객체
								var infowindow = new kakao.maps.InfoWindow({
									position : moveLatLon,
									content : iwContent,
									removable : iwRemoveable
								});
								//화면에 윈도인포우 표시
								kakao.maps.event.addListener(marker, 'click',
										function() {
											// 마커 위에 인포윈도우를 표시합니다
											infowindow.open(map, marker);
										});
							}
						</script>
					</c:if>
				</c:forEach>
			</div>
		</div>

	</div>
</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>