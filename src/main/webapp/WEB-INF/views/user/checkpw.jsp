<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 확인</title>
<style>
@import "reset.css";

#chkPw_wrap{width:100%; height:650px; display:flex; flex-direction:column; justify-content:center; align-items:center;}
#chkPw_content_wrap {background: url("/image/chkPwImg.png") no-repeat; width:450px; height:410px; display: flex; flex-direction:column; justify-content:flex-end; align-items:center;}
#chkPw_content {width:450px; height:250px; display: flex; flex-direction:column; justify-content:center; align-items:center;}
label, input {margin-bottom:20px;}
input{border-radius:5px; border:2px solid #d3d3d3;}
button {width:70px; height:30px; background:#f19149; color:#fff; border:0px; border-radius:5px;}
</style>
<script>
	var msg = '${msg}';
	if(msg.length > 0)
		alert(msg);
</script>
</head>
<body>
	    <div id="chkPw_wrap">
        <div id="chkPw_content_wrap">
            <form method="post" action="">
                <div id="chkPw_content">        
                    <input type="hidden" type="text" name="usrEmail" value="${sessionScope.user.usrEmail }">
                    <label>비밀번호를 입력해주세요.</label>
                    <input type="password" name="usrPassword">
                    <button type="submit">확인</button>		    
                </div>    
            </form>			
        </div>	
	</div>
</body>
</html>