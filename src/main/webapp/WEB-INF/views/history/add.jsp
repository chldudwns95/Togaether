<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<link href="/css/historyAdd.css" rel="stylesheet" type="text/css" />
<title>기깔난 후기</title>
</head>
<body>
<jsp:include page="../nav.jsp"></jsp:include>

<div class="historyAddWrap">
<h2 class="historyTopText">서비스가 만족스러우셧다면 기깔난 후기를 작성해주세요~!</h2>	
	<form method="post" enctype="multipart/form-data" class="historyForm">
		<div>
			<label>내정보 ${sessionScope.user.usrNickname}</label>
			<input type="hidden" type="number" name="usrId" value="${sessionScope.user.usrId }">
		</div>
		<div>
			<label>상대방 ${bookInfo.usrNickname }</label>
			<input type="hidden" type="number" name="historyUsrId" value="${bookInfo.usrId2}">			
		</div>
		<div>
			<label>만족도</label>
			<select class="historySelect" name="usrPoint">
				<option value="">--점수를 선택해주세요--</option>
				<option value="5">최고입니다</option>
				<option value="4">좋아요</option>
				<option value="3">흠.. 그냥 그래요</option>
				<option value="2">싫어요</option>
				<option value="1">뷁</option>
			</select>
		</div>
		<div>
			<label>내용</label>
			<textarea name="usrHistory"></textarea>			
		</div>
		<div>
			<label>후기사진</label>
			<input name="uploadFile" type="file">
		</div>
		<input class="historyAddButton" type="submit" value="등록">
	</form>
</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>
