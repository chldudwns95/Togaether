<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서비스 이용상태 수정</title>
</head>
<body>
	<div>
		<form method="post">
			<div>진행상황</div>
				<select name="serviceIng">
					<option value="진행중">진행중</option>
					<option value="완료">완료</option>					
				</select>
			<div>
			<input type="submit" value="예약">
		</div>
		</form>
		</div>
</body>
</html>