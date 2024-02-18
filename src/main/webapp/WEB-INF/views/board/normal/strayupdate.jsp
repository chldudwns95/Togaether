<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유기견 정보 수정</title>
</head>
<body>
<jsp:include page="../../nav.jsp"></jsp:include>
	<div>
		<form method="post" action="../${item.boardId}/update" enctype="multipart/form-data">
			<div>
				<label>게시글분류: 유기견정보</label>
				<input type="hidden" type="number" value=1>
			</div>			
			<div >
				<label>게시판번호:</label>
				<input type="number" name="boardId" value="${item.boardId}" readonly>
			</div>
			
			<div >				
				<input type="hidden" type="number" name="usrId" value="${sessionScope.user.usrId}">
			</div>						
			
			<div >
				<label>닉네임: ${sessionScope.user.usrNickname}</label>
				
			</div>
			
			<div >
				<label>게시글제목:</label>
				<input type="text" name="boardTitle" value="${item.boardTitle}">
			</div>		
			
			<div >
				<label>게시글내용:</label>
				<input type="text" name="boardContent" value="${item.boardContent}">
			</div>
			
			
			<div >
				<label>완료여부:</label>
				<select name="boardIng" value="${item.boardIng}" >
					<option value="0">찾는중</option>
					<option value="1">보호중</option>
				</select>						
			</div>
			
			<div>
				<label>현재이미지:</label>
				<a href="/upload/${item.cover}" target="_blank">${item.cover}</a>
			</div>
			
			<div>
				<label>새로운이미지:</label>
				<input name="uploadFile" type="file">
			</div>
			
			<div >
				<input type="submit" value="등록" >
			</div>			
		</form>			
	</div>
</body>
<jsp:include page="../../footer.jsp"></jsp:include>
</html>