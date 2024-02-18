<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<link href="/css/signup.css" rel="stylesheet" type="text/css" />
</head>
<script>

	function checkNick(){
		const form = document.getElementById("form")

		const xhr = new XMLHttpRequest();
		xhr.open("GET","checkNick?id=" + form.usrNickname.value, true);
		
		xhr.onreadystatechange = function() { 	//xhr상태 변경되면 할일			
			if(xhr.readyState == XMLHttpRequest.DONE){ //readystate ==done 요청이 완료되면 할일				
				if(xhr.status == 200){ //성공					
					const result = xhr.responseText;
					if(result == "OK"){
						alert("사용 가능한 닉네임 입니다.");
						form.checkNick.value = form.usrNickname.value;
					} else
						alert("사용 불가능한 닉네임 입니다.");
				}
			}
		};

		xhr.send();
	}
	function checkID(){
		const form = document.getElementById("form");
		const xhr = new XMLHttpRequest();

		xhr.open("GET", "checkID?id=" + form.usrEmail.value, true);
		//언제올지 모르기 떄문에 오기전에 일을 시킨다 open send 사이

		xhr.onreadystatechange = function() { 	//xhr상태 변경되면 할일			
			if(xhr.readyState == XMLHttpRequest.DONE){ //readystate ==done 요청이 완료되면 할일				
				if(xhr.status == 200){ //성공					
					const result = xhr.responseText;
					if(result == "OK"){
						alert("사용 가능한 이메일 입니다.");
						form.checkID.value = form.usrEmail.value;
					} else
						alert("사용 불가능한 이메일 입니다.");
				}
			}
		};

		xhr.send();
	}

	
	
	function submit(){	//valudatation 검증
		// alert("submit()")
		
		let form = document.getElementById("form");
		
		//alert(signup.usrEmail.value);
		if(form.checkID.value ==""){
			alert("이메일 중복확인을 하셔야합니다");
			return; 
		}
		
		//email 인증도 하셔야합니다.
		
		if(form.usrEmail.value == ""){			
			alert("이메일을 입력해주세요");
			form.usrEmail.focus();
			return;
		}
		if(form.usrPassword.value == ""){			
			alert("비밀번호를 입력해주세요");
			form.usrPassword.focus();
			return;
		}
		if(form.usrPassword.value.length < 4){
			alert("비밀번호의 길이는 4글자 이상으로 하셔야 합니다");
			form.usrPassword.focus();
			return;
		}
		if(form.usrNickname.value == ""){
			alert("닉네임을 입력해주세요")
			form.usrNickname.focus();
			return;
		}
		if(form.checkNick.value ==""){
			alert("닉네임 중복확인을 하셔야합니다");
			
		}
		if(form.usrName.value == ""){
			alert("이름을 입력해주세요");
			form.usrName.focus();
			return;
		}
		if(form.usrTell.value == ""){
			alert("연락처를 입력해주세요");
			form.usrTell.focus();
			return;
		}
		if(form.usrAddr.value == ""){
			alert("주소를 입력해주세요");
			form.usrAddr.focus();
			return;
		}
/* 		if(form.usrCareer.value== ""){
			alert("경력사항을 선택해주세요")
			form.usrCareer.focus();
			return;
		}
		if(form.usrCirtificate.value== ""){
			alert("자격증을 입력해주세요")
			form.usrCirtificate.focus();
			return;
		} */
		form.submit(); //등록해 주세욘 
	}
	$(document).on('change', '#usrEmail', function(){
		$('input[name=checkID]').val('');
	});
	
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
               console.log(extraRoadAddr);
               
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
               /* if(roadAddr !== ''){
                   document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }
				*/	
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<c:if test="${not empty message }"> 
	<script>
	alert('${message}');
	</script>
</c:if>

<body>
<%-- <jsp:include page="../nav.jsp"></jsp:include> --%>
	<div class="signup-top2">
	<h1> <a href="/"><img src="/image/signup-logo.png"></a> </h1>	
	<ul class="select"> <li>01.약관동의</li> <li>02.회원가입</li> <li>03.가입완료</li></ul>
	</div>
	
	<div class="signup-container">		
		<form id="form" method="post">
		<input type="hidden" name="checkID" value="">
		<input type="hidden" name="checkNick" value="">
	<div>
		<input type="hidden" type="number" value="2" name="usrSort" >
	</div>		
			<div class="form-group">
				<label>이메일</label><br>
				<input type="email" id="usrEmail" name="usrEmail" value="${user.usrEmail }" placeholder="ex)togaether@togaether.com"> <a href="javascript:checkID()">중복확인</a> <!-- 자바스크립트의 checkID(function) 실행 -->		
			</div>
			<div class="form-group">
				<label>비밀번호</label><br>
				<input type="password" name="usrPassword">
			</div>
			<div class="form-group">
				<label>닉네임</label><br>
				<input type="text" name="usrNickname"> <a href="javascript:checkNick()">중복확인</a>
			</div>
			<div class="form-group">
				<label>이름</label><br>
				<input type="text" name="usrName">
			</div>
			<div class="form-group">
				<label>연락처</label><br>
				<input type="tel" name="usrTell" placeholder=" '-'없이 숫자만 입력해 주세요.">								
			</div>
			<div class="form-group">
			<label>주소</label><br>
			<input type="text" id="sample4_postcode" placeholder="우편번호">&nbsp;<a href="javascript:sample4_execDaumPostcode()">우편번호 찾기</a>	<br>
			<!-- <input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기"><br> -->				
			<input type="text" id="sample4_roadAddress" name="usrAddr" placeholder="도로명주소" >
			<input type="text" id="sample4_extraAddress" name="usrAddr2" placeholder="상세주소">
			<!-- <input type="text" id="sample4_detailAddress" placeholder="상세주소" > -->
			<!-- <input type="text" id="sample4_jibunAddress" placeholder="지번주소" style="display:none;"> -->
			<span id="guide" style="color:#999;display:none"></span>
				 			
			</div>
			
			<div class="form-group">
				<label>경력사항</label><br>
				<input type="text" name="usrCareer" >
			</div>
			<div class="form-group"class="form-group">
				<label>자격증</label><br>
				<input type="text" name="usrCirtificate">
			</div>			
		</form>
		</div>
		<div class="submit">				
			<button onclick="submit()">회원가입</button>
		</div>
	
</body>
<%-- <jsp:include page="../footer.jsp"></jsp:include> --%>
</html>