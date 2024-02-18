<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<title>투개더 회원가입</title>
<link href="/css/signup.css" rel="stylesheet" type="text/css">

<script type="text/javascript"> 
 function agree() {
	 var chk1 = document.agreefrm.chk1.checked;
	 var chk2 = document.agreefrm.chk2.checked;
	 var chk3 = document.agreefrm.chk3.checked;
	 
	 if(!chk1){
         alert('투개더 이용약관에 동의해주세요');
         return false;
     }
	 if(!chk2){
         alert('개인정보 취급방침에 동의해주세요');
         return false;
     }
	 if(!chk3){
         alert('위치정보 제공에 동의해주세요');
         return false;
     }
	 location.href = "/user/signup";
 }

</script>



</head>
<body>
	<div id="agree_wrap">
		<div class="signup-top">
			<h1><a href="/" id="logo"><img src="/image/signup-logo.png"></a></h1>
			<ul class="select"><li>01 약관동의</li><li>02 회원가입</li><li>03 가입완료</li></ul>
		</div>
		
	<div id="agree_container">
		
		<form action="" name="agreefrm">
			<div class="text">
				<div class="termsOfService">
				<h2>(목적)</h2>	
					<p>이 약관은 주식회사 투개더(이하 “회사”라 합니다)이 스마트폰 등 이동통신기기를 통해 제공되는 ‘투개더’ 어플리케이션( Application) 등
				(휴대형 단말기, PC, TV 등의 각종 유무선 장치를 통해 이용하는 경우를 전부 포함함, 이하 “투개더”라 합니다)을 통하여 제공되는 중개서비스 및 
				기타 정보서비스와 관련하여 회사와 회원 사이의 권리와 의무, 서비스 이용 절차에 관한 사항을 규정함을 목적으로 합니다.</p>
				<h2>(정의규정)</h2>
					<ol>
						<li>"서비스"라 함은 투개더에서 이용할 수 있는 투개더 관련 제반 서비스(중개서비스 포함)를 말합니다.</li>
						
						<li>" 회원"이라 함은 이 약관을 승인하고 회사와 서비스 이용계약을 체결한 자를 말합니다.</li>
						
						<li>"이용계약"이라 함은 서비스와 관련하여 회사와 회원 간에 체결하는 계약을 말합니다.</li>
						
						<li>"아이디(ID)"라 함은 회원의 식별과 회원의 서비스 이용을 위해 필요한 전자우편 (e-mail) 주소를 말합니다.</li>
						
						<li>"비밀번호"라 함은 회원이 그 자신의 비밀을 보호하기 위해 회원 본인이 설정한 문자, 숫자 또는 기호 등의 조합을 말합니다.</li>
						
						<li>"펫시팅 서비스"라 함은 반려동물의 소유자를 대신하여 소유자로부터 의뢰를 받아 계약기간 동안 반려동물에 대한 보호, 사료 급여, 목욕, 산책 등의
							업무를 수행하는 서비스를 말합니다.</li>
						
						<li>"펫시터"라 함은 회사가 운영하는 투개더를 통해 의뢰하는 반려동물 소유자에게 펫시팅 상품을 판매하고 해당 펫시팅 서비스를 제공하는 회원을 말합니다.</li>
						
						<li>"의뢰인" 이라 함은 투개더를 통해 펫시팅 서비스를 구매·이용하는 회원을 말합니다.</li>
						
						<li>"의뢰계약"이라 함은 의뢰인이 투개더를 통해 펫시팅 서비스를 이용하고자 펫시터와 체결하는 계약을 말한다.</li>
						
						<li>"이용대금"이라 함은 의뢰인이 펫시팅 서비스를 제공받기 위해 의뢰계약에 체결하고 지급하는 금원을 말합니다.</li>
						
						<li>"중개"라 함은 투개더에서 회원 사이의 의뢰계약을 알선하는 것을 말합니다.</li>
						
						<li>"중개서비스"라 함은 구현되는 단말기와 상관없이 회원이 투개더를 통해 이용하는 의뢰계약 중개서비스 또는 이와 관련된 제반 서비스를 말한다.</li>
						
						<li>"투개더 메시지"라 함은 회사가 서비스를 제공함에 있어 필요한 공지, 문의 또는 대화가 가능한 투개더 내에서의 팝업메시지 등의 수단을 말합니다.</li>
						
						<li>정의되지 않은 약관상의 용어는 일반적인 거래관행에 의합니다.</li>
					</ol>
				
				<h2>(약관의 명시, 효력 및 변경)</h2>
					<ol>
						<li>회사는 이 약관을 서비스를 이용하고자 하는 자와 회원이 알 수 있도록 서비스가 제공되는 투개더의 초기화면(연결화면 포함)에 게시합니다.</li>
						
						<li>이 약관은 회사가 서비스 제공을 위해 개설한 투개더 또는 해당 서비스에 공지하거나, 전자우편(e-mail) 또는 기타의 방법으로 회원에게 공지 또는 통지함으로써 효력이 발생합니다.</li>
						
						<li>회사가 이 약관을 개정하는 경우에는 개정된 약관의 적용일자 및 개정사유를 명시하여 현행 약관과 함께 그 적용일자 7일(다만 회원에게 불리한 내용으로 변경한 경우에는 30일) 이전부터
							적용일자 전일까지 제1항이 방법으로 공지합니다. 개정된 약관은 개정약관에서 소급효를 부여하지 않는 이상 적용일자 이전으로 소급되어 적용되지 않습니다.</li>
						
						<li>이 약관에 동의하는 것은 정기적으로 회사가 운영하는 투개더에 방문하여 약관의 변경사항을 확인하는 것에 동의함을 의미합니다. 변경된 약관에 대한 정보를 알지 못하여 발생하는 회원 또는
							회원의 피해에 대하여 회사는 책임을 부담하지 않습니다.</li>
						
						<li>이 약관은 회사와 회원 간에 성립되는 서비스이용계약의 기본약정입니다. 회사는 필요한 경우 특정 서비스에 관하여 적용될 사항(이하 "개별약관"이라고 합니다)을 정하여 미리 공지할 수 있습니다.
							회원이 이러한 개별약관에 동의하고 특정 서비스를 이용하는 경우에는 개별약관이 우선적으로 적용되고, 이 약관은 보충적인 효력을 갖습니다. 개별약관의 게시·변경에 관해서는 제1항 및 제2항을 준용합니다.</li>
						
						<li>회사와 펫시터 간의 펫시팅 서비스 중개에 관한 사항은 ‘투개더 펫시터 중개계약서’가 우선하고, ‘투개더 펫시터 중개계약서’에서 명시하지 아니한 사항은 이 약관에 따릅니다.</li>
					</ol>
				<h2>(약관 외 준칙)</h2>
				
					<p>이 약관에 명시되지 아니한 사항은 전기통신기본법, 전기통신사업법, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 기타 관계법령에 따릅니다.</p>
				
				<h2>(회사 정보 등의 제공)</h2>
				
					<p>회사는 회사의 상호, 대표자 성명, 주소, 전화번호, 전자우편(e-mail) 주소, 사업자등록번호, 통신판매업 신고번호, 이용약관, 개인정보취급방침 및 개인정보관리책임자 등에 대한 정보를 회원이 쉽게 알 수 있도록 투개더의 초기화면(연결화면 포함)에 게시합니다.</p>
				
				<h2>(회원에 대한 통지)</h2>
					<ol>
						<li>회사는 회원에게 알려야 할 사항이 발생하는 경우 회원가입 시 회원이 공개한 전자우편(e-mail) 주 소로 전자우편(e-mail)을 보내거나 투개더의 공지 또는 팝업창 등 투개더 메시지를 게시·전송하는 방법 등으로 통지할 수 있습니다.</li>
						
						<li>제1항과 같이 통지한 경우 그 때부터 14일 이내에 회원이 회사가 정하는 방법으로 그 통지 내용에 동의하지 않음을 표시하지 않을 경우 그 회원에게는 통지 내용이 도달하였고 통지 내용에 동의하였다고 간주됩니다.</li>
						
						<li>통지 내용에 동의하지 아니하는 회원은 회사가 정하는 방법으로 그 의사를 표시할 수 있습니다.</li>
					</ol>
				
				<h2>(서비스 이용계약)</h2>
					<ol>
						<li>회사가 제공하는 서비스에 관한 이용계약은 해당 서비스를 이용하고자 하는 자(이하 "이용신청자"라 합니다)의 이용신청(회원가입신청, 이하 "이용신청"이라 합니다) 에 대하여 회사가 승낙함으로써 성립합니다.</li>
						
						<li>이용신청자가 서비스 가입 시청 시 이 약관을 읽고 '동의' 버튼을 누르면 이 약관에 동의한 것으로 간주됩니다.</li>
						
						<li>이용신청자는 제1항의 규정에 따라 이용계약을 체결할 때 회사가 제공하는 서비스의 원활한 이용을 위해 필요한 개인정보를 제공해야 합니다.</li>
						
						<li>회원가입은 만 19세 이상이 할 수 있습니다.</li>
					</ol>
				<h2>(이용신청)</h2>
					<ol>
						<li>이용신청자는 이용신청 시 실제로 사용하는 본인 명의의 휴대폰 번호로 본인 인증 절차를 거쳐야 합니다.</li>
						
						<li>이용신청자는 회사가 요청하는 소정의 신규회원가입 양식(이하 "신청서"라 합니다)에 다음 각 호에서 정한 필요항목을 기재하여 신청합니다. 또한 실제 거래 진행 또는 서비스 판매 시에 회사가 요청하는 추가 정보를 기재해야 합니다.</li>
							<ol>
								<li>1. 성명</li>
							
								<li>2. 생년월일</li>
							
								<li>3. 주소(해당 주소로 온 우편물을 촬영한 사진으로 인증 여부 판단 예정입니다)</li>
							
								<li>4. 휴대폰번호(본인 인증 가능한 번호)</li>
							
								<li>5. 전자우편(e-mail) 주소</li>
							
								<li>6. 비밀번호</li>
							</ol>
						<li>이용신청자는 실명으로 이용신청을 하여야 합니다. 실명의 기준은 개인회원신청의 경우 고유식별정보(CI, DI)를 기준으로 합니다. 실명이 아니거나 타인의 정보를 도용하여 회원으로 가입한 자는 관계법령에 따라 처벌받을 수 있고,
							계정이 삭제되거나 기타 회사가 제공하는 서비스를 이용할 수 없습니다.</li>
						
						<li>회원의 아이디(ID) 및 닉네임은 실명 1인당 1개의 아이디(ID)를 사용하는 것을 원칙으로 합니다.</li>
					</ol>
				<h2>(이용신청의 승낙)</h2>
					<ol>
						<li>승낙은 회사가 이용신청을 한 자에게 아이디(ID) 및 서비스 이용 개시를 통보함으로써 이루어집니다.</li>
						
						<li>회사는 이용신청자가 제8조에서 정한 필수항목을 정확하게 기재하고 이 약관에 동의한 경우 이 약관에 규정된 실명확인절차를 거쳐 서비스 이용에 승낙할 수 있다.</li>
						
						<li>회사는 법령에 따라 이용 가능한 신용정보회사 또는 신용정보집중기관을 통하여 실명확인절차를 취하며, 실명확인절차를 취할 수 없는 이용신청에 대해서는 이용신청자에게 증빙자료를 요청할 수 있습니다.</li>
						
						<li>회사는 다음 각 호에서 정한 어느 하나에 해당하는 경우 이용신청에 대한 승낙을 거부할 수 있습니다.</li>
							<ol>
								<li>1. 만 19세 미만의 자가 이용신청을 하는 경우</li>
							
								<li>2. 본인의 실명으로 신청하지 않은 경우</li>
							
								<li>3. 다른 사람의 명의를 빌리거나 도용하여 차명으로 신청한 경우</li>
							
								<li>4. 이용신청 시 기재하는 필수항목 또는 그 밖에 신청서의 내용을 허위로 기재했거나 허위 내용이 포함된 자료를 첨부한 경우</li>
							
								<li>5. 이미 가입된 회원과 이름 및 고유식별정보 등이 동일한 경우</li>
							
								<li>6. 이 약관 제32조에 의해 회사가 이용계약을 해지한 전(前)회원이 재 이용신청을 하는 경우</li>
							
								<li>7. 이 약관 제32조에 의해 회사로부터 회원자격정지 조치를 받은 회원이 이용정지 중에 이용계약을 임의 해지하고 재 이용신청을 하는 경우</li>
							
								<li>8. 기타 회사가 정한 이용신청 요건이 미비된 경우</li>
							
								<li>9. 이용신청의 승낙이 다른 회원의 정당한 이용에 중대한 지장을 초래하거나 회사의 정당한 서비스 제공에 장애가 될 수 있다고 판단되는 경우</li>
							
								<li>10. 이 약관에 위배되거나 위법 또는 부당한 이용신청임이 확인된 경우</li>
							</ol>
						<li>회사는 다음 각 호에서 정한 어느 하나에 해당하는 경우 이용신청에 대한 승낙을 유보할 수 있습니다. 이 경우 회사는 이용신청자에게 승낙유보의 사유, 승낙가능시기 또는 승낙에 필요한 추가요청정보
							내지 자료 등 기타 승낙유보와 관련된 사항을 해당 서비스화면에 게시하거나투개더 메시지 또는 전자우편(e-mail)을 통하여 통지합니다.</li>
							<ol>
								<li>1. 서비스 관련 설비의 용량이 부족한 경우</li>
							
								<li>2. 기술상 또는 업무 수행상 지장이 있는 경우</li>
							
								<li>3. 회사의 실명확인절차에서 실명가입신청 여부가 확인되지 않는 경우</li>
							
								<li>4. 기타 회사가 합리적인 판단에 의하여 필요하다고 인정하는 경우</li>
							</ol>
						<li>회사는 이용승낙의 의사를 해당 서비스화면에 게시하거나 투개더 메시지, 전자우편(e-mail) 또는 기타 방법으로 이용신청자에 통지합니다.</li>
					</ol>
				<h2>(개인정보의 수집과 보호)</h2>
					<ol>
						<li>회사는 회원의 개인정보 수집 시 필요한 최소한의 정보를 수집합니다.</li>
						
						<li>회사는 회원의 개인정보를 수집할 때 다음 각 호의 어느 하나에 해당하는 경우를 제외하고는 그 회원의 동의를 받습니다.</li>
							<ol>
								<li>1. 법률에 특별한 규정이 있는 경우</li>
							
								<li>2. 전자거래 계약의 이행을 위하여 필요한 경우</li>
							
								<li>3. 서비스 제공에 따른 이용대금 정산을 위하여 필요한 경우</li>
							</ol>
						<li>회사는 회원의 개인정보를 그 회원의 동의 없이 목적 외로 사용하거나 제3자에게 제공할 수 없습니다. 다만 다음 각 호의 어느 하나에 해당하는 경우에는 예외로 합니다.</li>
							<ol>
								<li>1. 아이디(ID) 등 서비스화면을 통하여 공개되는 정보</li>
							
								<li>2. 서비스 제공에 따른 이용대금 정산을 위해 필요한 경우</li>
							
								<li>3. 전기통신기본법 등 법령의 규정에 의한 국가기관의 요구가 있는 경우</li>
							
								<li>4. 범죄에 대한 수사상의 목적이 있거나 정보통신윤리위원회의 요청이 있는 경우</li>
							
								<li>5. 통계작성, 학술연구 또는 시장조사를 위하여 필요한 경우로서 특정 개인을 식별할 수 없는 형태로 제공되는 경우</li>
							
								<li>6. 이 약관 또는 법률에 특별한 규정이 있는 경우</li>
							</ol>
						<li>회사는 회원이 이 약관 제8조 제2항에 따라 제공한 정보 및 그 밖에 제공받은 정보의 정확성을 확인하기 위하여 관련법령이 허용하는 범위 내에서 증빙자료의 제출을 요청할 수 있고,
							회원이 정당한 사유 없이 증빙자료를 제출하지 않는 경우 회사는 서비스의 이용을 제한하거나 이용계약을 해지할 수 있습니다.</li>
						
						<li>회사는 이용계약을 위하여 회원이 제공한 정보 외에도 회원의 동의를 얻어 회원으로부터 필요한 정보를 수집·이용할 수 있습니다.
							이 경우 개인정보의 수집·이용·제공에 관한 회원의 동의거절 시 제한되는 서비스를 구체적으로 명시하고, 필수항목이 아닌 개인정보의 수집·이용·제공에 관한 이용신청자의 동의 거절을 이유로 회원가입 등 서비스 제공을 제한하거나 거절하지 않습니다.</li>
						
						<li>회사가 정보수집·이용을 위하여 회원의 동의를 받는 경우 회사는 정보의 수집목적 및 이용목적, 제3자에 대한 정보제공인 경우에는 그 관련사항(제공받는 자, 제공목적, 제공정보의 내용)을 미리 명시하거나 고지합니다. 회원은 정보제공에 동의하더라도 언제든지 그 동의를 철회할 수 있습니다.</li>
						
						<li>회원은 언제든지 개인정보관리시스템을 통해 자신의 개인정보를 열람할 수 있고, 회사 또는 정보관리책임자에게 잘못된 정보에 대한 정정을 요청할 수 있습니다.
							회사는 회원으로부터 정보 정정의 요청이 있는 경우 그 오류를 정정하거나 정정하지 못하는 사유를 회원에게 통지하는 등 필요한 조치를 취할 때까지 당해 정보를 이용하지 않습니다.</li>
						
						<li>회사는 회사의 고의 또는 과실로 회원정보가 분실, 도난, 유출, 변조되거나 위법하게 제3자에게 제공된 경우 그로 인한 회원의 손해에 대하여 모든 책임을 부담합니다.</li>
						
						<li>이용계약이 종료된 경우 회사는 해당 회원의 정보를 파기하는 것을 원칙으로 합니다. 다만 다음 각 호의 어느 하나에 해당하는 경우 회원정보를 보관할 수 있습니다. 이 경우 관계법령에서 정한 기간 또는 필요한 최소한의 기간 동안 정보를 보관합니다.</li>
							<ol>
								<li>1. 관계법령의 규정에 의하여 보존할 필요가 있는 경우</li>
							
								<li>2. 비방이나 허위사실 유포 등으로 타인에게 피해를 입힌 경우, 지적재산권 침해, 인터넷 사기행위 등으로부터 회원과 회사를 보호하고 법적 절차에 따른 수사 협조를 위한 목적으로 보관하는 경우</li>
							
								<li>3. 기타 정보수집에 관한 동의를 받을 때 보유기간을 명시한 경우</li>
							</ol>
						<li>회사의 개인정보관리책임자 및 연락처는 회원정보 보호와 관리에 관한 개인정보취급방침에 공지하고, 이를 회원과 회사의 서비스를 이용하고자 하는 자가 알 수 있도록 투개더에 공개합니다.</li>
						
						<li>회사는 수집된 개인정보의 취급 및 관리 등의 업무를 스스로 수행함을 원칙으로 하나, 필요한 경우 업무의 일부 또는 전부를 위탁업체에 위탁할 수 있습니다.
							이 경우 위탁업무의 내용 및 수탁사의 명칭 등에 관한 사항을 서면, 전자우편(e-mail), 전화 또는 홈페이지를 통해 미리 회원에게 고지하여 동의를 받거나, 개인정보취급방침을 통해 확인할 수 있도록 투개더에 공개합니다.</li>
					</ol>
				<h2>(회원정보의 변경)</h2>
					<p>회원은 가입신청 시 기재한 사항 및 이용계약에 관한 사항이 변경되었을 경우 수정하거나 정보 정정의 요청하여야 합니다. 정보의 수정 또는 정정의 요청을 하지 않거나 허위 정보 입력으로 인해 발생하는 문제의 모든 책임은 회원에게 있습니다.</p>
				<h2>(회원의 아이디와 비밀번호 등 관리에 관한 의무)</h2>
					<ol>
					<li>아이디(ID) 및 비밀번호에 관한 모든 관리 책임은 회원에게 있습니다.</li>
						
						<li>회원은 아이디(ID) 및 비밀번호를 타인에게 양도, 대여할 수 없습니다.</li>
						
						<li>회사의 귀책사유에 의하지 아니한 아이디(ID) 또는 비밀번호의 유출, 양도, 대여, 부정사용 등으로 인한 손해에 대하여 회사는 아무런 책임을 지지 않습니다.</li>
						
						<li>회원이 아이디(ID) 또는 비밀번호를 도난 당하거나 제3자가 이를 사용하고 있음을 인지한 경우 즉시 회사에게 통지하여야 합니다. 이를 통지하지 아니하거나 회사의 조치에 응하지 않아 발생하는 모든 손해는 해당 회원이 부담합니다.</li>
					</ol>
				<h2>(회사의 의무)</h2>
					<ol>
						<li>중개인은 중개서비스가 원활히 제공될 수 있도록 각종 설비와 자료를 관리한다.></li>
						
						<li>회사는 지속적이고 안정적인 서비스를 제공하기 위하여 최선을 다합니다. 다만 다음 각 호의 어느 하나에 해당하는 경우 서비스 제공을 중지하거나 제한할 수 있습니다.></li>
							<ol>
								<li>1. 서비스용 설비의 최적화를 위한 시스템 점검, 보수 등으로 인하여 부득이한 경우></li>
							
								<li>2. 분산서비스거부(DDos)공격 등에 의해 발생한 서비스 장애 복구를 위하여 부득이한 경우></li>
							
								<li>3. 기타 서비스용 설비의 장애 또는 서비스 이용의 폭주 등으로 서비스 이용에 지장이 있는 경우></li>
							
								<li>4. 전기통신사업법에 규정된 기간통신사업자가 전기통신 서비스를 중지하였을 경우></li>
							
								<li>5. 전시, 사변, 천재지변 또는 이에 준하는 국가비상사태가 발생하거나 발생할 우려가 있는 경우></li>
							
								<li>6. 기타 합리적인 이유가 있는 경우로서 회사가 필요하다고 인정하는 경우></li>
						</ol>
				<li>회사는 제2항 단서에 의해 서비스 제공을 중지하거나 제한하는 경우 이를 회원에게 공지 또는 통지합니다. 다만 회사의 귀책사유 없이 회원에게 공지 또는 통지할 수 없는 경우는 예외로 합니다.></li>
				
				<li>회사는 회사가 제공하는 서비스가 그 목적에 맞게 이용되는지 여부를 수시로 점검하여야 합니다. 이용 목적에 위반되거나 그러한 우려가 있다고 판단되는 경우 관련된 회원에 대해 소명을 요청할 수 있으며,
					회원이 이를 정당한 사유 없이 거부할 경우 서비스의 일부 또는 전부를 제한할 수 있습니다.></li>
				
				<li>회사는 회사가 제공하는 서비스를 이용하는 회원에게 서비스 이용에 관련한 중요사항을 공지 또는 통지합니다.></li>
				
				<li>회사는 회원에 의해 제기되는 의견이나 불만이 정당하다고 객관적으로 인정될 경우에는 적절한 절차를 거쳐 즉시 처리하여야 합니다. 다만 처리가 지연되는 경우는 회원에게 그 사유 및 처리 일정을 알려주어야 합니다.></li>
				</ol>
				<h2>(회원의 의무)</h2>
					<ol>
						<li>회원은 관계법령, 이 약관의 규정, 이용안내, 공지사항 및 기타 회사가 정한 제반 규정을 준수하여야 합니다.</li>
						
						<li>회원은 이용신청, 회원정보 변경 및 기타 거래 시 모든 사항을 실명과 진실한 사실에 근거하여 진행하여야 합니다. 타인 또는 도용한 명의를 이용하거나 타인 정보를 등록할 경우 이 약관에서 정한 권리를 행사할 수 없으며, 그에 따른 모든 책임을 부담합니다.</li>
						
						<li>회원은 직접 의뢰계약을 체결하거나, 이 약관에서 정한 정산금 지급 외 별도의 방법으로 이용대금 결제하거나 이를 요청 또는 수락하는 직거래 행위를 해서는 안 됩니다. 이 경우 회사는 애플리케이션 내에서 이루어진 회원과 펫시터 간의 대화를 열람하고 처리할 수 있고,
							경고, 서비스 이용 제한 또는 회원자격정지 등의 조치를 취할 수 있으며, 이로 인해 손해가 발생한 경우 해당 회원에게 손해배상을 청구할 수 있습니다.</li>
						
						<li>회원은 다음 각 호에 해당하는 행위를 해서는 안 됩니다.</li>
							<ol>
								<li>1. 서비스 이용 신청 또는 변경 시 허위로 등록하는 행위</li>
							
								<li>2. 타인의 ID, 비밀번호, 연락처 등을 도용하거나 자신의 ID 등을 타인과 거래하는 행위</li>
							
								<li>3. 회사의 서비스에 위해를 가하거나 고의로 업무를 방해하는 행위</li>
							
								<li>4. 회사의 운영진, 직원 또는 관계자를 사칭하는 행위</li>
							
								<li>5. 회사 또는 제3자의 명예와 신용을 훼손하거나 업무를 방해할 우려가 있는 행위</li>
							
								<li>6. 회사가 제공하는 서비스 또는 이와 관련된 정보를 이용한 영리행위, 이와 관련하여 영업활동 하는 행위 및 자료를 배포하거나 게재하는 행위</li>
							
								<li>7. 회사 또는 제3자의 저작권 등 지적재산권에 대한 침해 행위</li>
							
								<li>8. 회사로부터 특별한 권리를 허락 받지 않고투개더 관련 프로그램을 임의로 변경하거나 회사의 서버를 해킹 또는 게시된 정보를 임의로 변경하는 행위</li>
							
								<li>9. 회사의 서비스 이용 과정에서 얻은 정보를 회사의 사전 승낙 없이 서비스 외 목적으로 이용, 복제하거나, 출판, 방송 및 제3자에게 제공 또는 다른 서비스에 게시·유포하는 행위</li>
							
								<li>10. 욕설, 성인물, 비난, 악용, 광고성, 스팸, 저작권 위반, 사기와 관련된 정보 및 공공질서 또는 미풍양속에 반하는 저속·음란한 내용의 정보, 문장, 도형, 음향, 동영상을 전송, 게시, 전자우편(e-mail) 또는
									기타의 방법으로 타인에게 유포하는 행위</li>
							
								<li>11. 다른 회원을 모욕 또는 위협하거나 특정 회원에게 지속적으로 고통 또는 불편을 주는 행위</li>
							
								<li>12. 다른 회원 또는 제3자의 개인정보를 수집 또는 저장하는 행위</li>
							
								<li>13. 기타 범죄행위에 해당하거나 이에 해당할 우려가 있는 행위</li>
							
								<li>14. 이 약관을 포함하여 회사가 정한 제반 규정, 공지사항 및 관계법령을 위반하는 행위</li>
							</ol>
						<li>회사는 회원이 제4항의 규정을 위반하였을 경우 경고, 서비스 이용제한 및 회원자격정지 등의 조치를 취할 수 있으며, 회원은 위반행위에 대한 손해를 배상할 책임이 있습니다.</li>
					</ol>
				<h2>(서비스의 성질과 목적)</h2>
					<ol>
						<li>회사는 회원에게 직접 펫시팅 서비스를 제공하지 않습니다. 또한 회사는 회원에게 서비스 또는 물품 등을 판매하거나 회원으로부터 서비스 또는 물품 등을 구매하지 않습니다.</li>
						
						<li>회사가 제공하는 서비스는 회사가 회원 각자의 자기결정에 의하여 회원 상호 간에 펫시팅 서비스 등 매매거래가 이루어질 수 있도록 사이버 거래장소(marketplace)를 온라인으로 제공하고, 안전하고 편리한 결제가 이루어질 수 있는 수단을 제공하는데 한합니다.</li>
						
						<li>회원 간에 성립된 거래와 관련된 책임은 거래당사자인 회원 스스로가 부담하여야 합니다. 회원 상호 간에 이루어지는 펫시팅 의뢰 및 진행에 관련된 청약, 청약철회, 이행 등의 거래 진행은 거래 당사자인 회원 간에 수행되어야 하고, 회사는 거래 진행과 관련하여 어떠한 책임도 부담하지 않습니다.</li>
						
						<li>회사는 펫시터의 목록, 펫시팅 서비스의 제공, 조건, 품질, 적법성 또는 적합성 등에 관여하지 않고 어떠한 책임도 부담하지 않습니다.</li>
						
						<li>회사는 회사가 제공하는 서비스의 이용에 대하여 회원에게 소정의 수수료를 부과할 수 있습니다.</li>
					</ol>
				<h2>(서비스의 종류)</h2>
					<ol>
						<li>회사는 다음 각 호의 서비스를 제공합니다.</li>
							<ol>
								<li>1. 중개서비스 : 회사가 구현되는 단말기와 상관없이 투개더를 통해 회원 간의 반려동물 펫시팅 서비스 이용계약의 체결 및 이행이 이루어질 수 있도록 사이버 거래장소(marketplace)를 온라인으로 제공하는 서비스</li>
							
								<li>2. 안전결제서비스 : 회사가 운영하는 투개더에서 회사 또는 외부 결제대행 전문업체의 결제시스템을 연결해 서비스 이용 수수료와 이용대금을 결제할 수 있도록 결제시스템을 제공하는 서비스</li>
							
								<li>3. 기타서비스 : 정보서비스, 고객지원센터 운영 서비스 등</li>
							</ol>
						<li>서비스의 종류와 내용은 회사의 정책에 따라 추가 또는 변경될 수 있습니다.</li>
						
						<li>회원은 아이디(ID)와 비밀번호를 통해 회사가 제공하는 서비스에 접속할 수 있고, 해당 서비스를 이용하여 펫시팅 서비스를 구매할 수 있습니다.</li>
					</ol>
				<h2>(서비스 이용 시간)</h2>
					<p>서비스는 회사의 업무상 또는 기술상 문제 등 특별한 사정이 없는 한 연중무휴, 1일 24시간 운영을 원칙으로 합니다. 다만 회사는 전부 또는 일부의 서비스 이용 가능 시간을 별도로 정할 수 있으며, 이 경우 투개더에 이를 공지합니다.</p>
				<h2>(의뢰계약 체결)</h2>
					<ol>
						<li>의뢰계약은 펫시터가 제시한 이용대금과 조건 등에 의뢰인이 동의하여 청약의 의사표시를 하고, 이에 대하여 펫시터가 승낙의 의사표시를 함으로써 체결됩니다.</li>
						
						<li>회원은 투개더에 게시된 팻시터와 이용대금 등 기타 조건에 관한 상세정보를 신중히 검토하여 의뢰계약을 체결하여야 합니다.</li>
						
						<li>투개더에 게시된 펫시터의 자격, 경력, 보유기술 등은 펫시터가 제공한 정보를 기반으로 작성된 것이므로, 회사의 고의 또는 중대한 과실이 없는 한 해당 정보 및 그로 인한 손해에 대해 어떠한 책임도 지지 않습니다.</li>
						
						<li>회사는 의뢰인의 의뢰계약 체결 내용을 투개더 메시지를 통해 확인할 수 있도록 조치하며, 의뢰계약의 취소방법 및 절차를 안내합니다.</li>
					</ol>
				<h2>(펫시팅 서비스의 진행)</h2>
					<ol>
						<li>의뢰인은 펫시팅 서비스의 진행을 위해 자신이 의뢰하는 반려동물(이하 "대상 반려동물"이라 합니다)에 관한 정보로서 다음 각 호에서 정한 사항(이하 "필수정보"라 합니다)을 펫시터에게 정확하게 제공하여야 합니다.</li>
							<ol>
								<li>1. 대상 반려동물의 성격, 공격성 등의 특성</li>
							
								<li>2. 대상 반려동물의 주요 병력</li>
							
								<li>3. 대상 반려동물의 중성화수술 여부(의뢰계약에서 발생한 교배 및 임신의 문제에 회사는 관여하지 않습니다</li>
							
								<li>4. 기타 펫시팅 서비스에 필요하다고 판단되는 모든 정보</li>
						</ol>
						<li>의뢰계약 체결 시 또는 이행 과정에서 필수정보를 제공하지 않거나 사실과 다른 허위 정보를 제공한 경우 펫시터는 의뢰계약을 해지할 수 있으며, 이 경우 펫시터와 회사는 그로 인한 어떠한 책임도 부담하지 않습니다.</li>
						
						<li>펫시터는 회사에 의해 의뢰인의 이용대금 결제가 확인되면 상호 협의된 일시(이하 “시작일”이라 합니다)에 의뢰계약에서 정한 내용대로 펫시팅 서비스를 진행하여야 합니다. 펫시터는 시작일 5일 전까지 의뢰인과 협의하여 시작일을 변경할 수 있습니다.
							펫시터가 시작일에 펫시팅 서비스를 개시하지 않거나 펫시팅 기간 동안 의뢰계약의 내용대로 이행하지 않는 등 의뢰계약을 불이행할 경우, 펫시터는 회사와 의뢰인에게 그로 인한 모든 손해를 부담합니다.</li>
						
						<li>의뢰인은 펫시터가 의뢰계약을 이행할 수 있도록 협조하여야 합니다. 의뢰인이 협조의무를 다하지 않음으로 인해 의뢰계약이 이행되지 않은 경우 제3항 제2문을 적용하지 않습니다.</li>
						
						<li>펫시터가 의뢰진행을 완료한 경우 의뢰인이 그로부터 48시간 내에 이의를 제기하지 않는 한 의뢰계약의 이행이 완료된 것으로 봅니다. 펫시터의 의뢰계약 이행 완료 또는 미완료로 인한 효과는 다음 각 호에서 정한 바와 같습니다.</li>
							<ol>
								<li>1. 완료 : 회사는 '투개더 펫시터 중개계약서' 제17조 및 제18조의 정산절차를 진행합니다.</li>
							
								<li>2. 미완료 : 회사는 투개더 방침에 따라 해당 사유를 확인하고, 그 결과가 확정될 때까지 ‘투개더 펫시터 중개계약서’ 제17조 및 제18조의 정산절차를 보류합니다.</li>
							</ol>
						<li>제5항의 규정에 따라 이행이 완료되면 의뢰인이 회사에 보관 의뢰한 이용대금이 정산되어 펫시터에게 이관 처리 되므로, 그 이후에 발생하는 환불, 추가 문의 등은 의뢰인과 펫시터가 직접 연락하여 해결하여야 합니다.</li>
						
						<li>펫시터는 의뢰계약에서 정한 종료일에 대상 반려동물을 원래의 상태대로 인도하여야 합니다. 펫시터가 대상 반려동물을 반환하지 않거나 원래의 상태대로 인도하지 않는 경우 의뢰계약 불이행 또는 위반으로 간주됩니다.</li>
						
						<li>펫시터가 의뢰계약을 이행하던 중 대상 반려동물의 상해 등의 사고(제3자로 인한 사고 포함)를 당한 경우 펫시터의 고의 또는 과실에 의한 사고로 인정되어, 회사는 이에 대한 책임을 부담하지 않고 의뢰인은 회사의 안전보상제도의 적용을 받을 수 없습니다. 이 경우 의뢰인은 펫시터에게 모든 손해배상을 청구할 수 있습니다.</li>
						
						<li>의뢰계약기간 동안 대상 반려동물에 대한 응급상황이 발생한 경우 펫시터는 의뢰인 및 회사에 즉시 연락하여야 합니다. 다만 의뢰인이 연락되지 않을 경우 회사는 반려동물에 대한 응급 조치를 취할 권한이 있으며, 이 경우 의뢰인에게 발생한 비용을 청구할 수 있습니다.</li>
						
						<li>의뢰인은 의뢰계약에서 정한 방법에 따라 대상 반려동물을 찾아가거나 인도받아야 합니다. 의뢰인이 의뢰계약에서 정한 방법에 따라 대상 반려동물을 찾아가지 않거나 의뢰인의 귀책사유로 인도할 수 없는 경우 제8항 제2문을 적용하지 않습니다. 이 경우 의뢰인은 펫시터 또는 회사에 대해 의뢰계약에서 정한 의무 위반을 이유로 한 손해배상을 청구할 수 없습니다.
							또한 펫시팅 종료 후 대상 반려동물에 대한 인도가 이루어지지 않는 기간 동안 발생한 모든 손해에 대해 책임을 부담합니다.</li>
						
						<li>의뢰인이 의뢰계약에서 정한 방법에 따라 대상 반려동물을 찾아가지 않거나 의뢰인의 귀책사유로 인도할 수 없는 경우 펫시터는 1주일간 대상 반려동물을 평균적인 펫시팅 환경에서 보호하여야 합니다. 펫시팅 종료일로부터 1주일이 경과한 경우 의뢰인은 회사에 대상 반려동물에 대한 처분권한을 이전한 것으로 간주하며, 대상 반려동물은 유기견보호소로 이전됩니다.</li>
						
						<li>제11항의 경우 의뢰인은 펫시터에게 의뢰계약 체결 시 적용된 1박 이용대금 기준에 따라 종료일 이후부터 실제로 인도받은 시점까지 발생한 기간만큼 산정된 추가 이용대금을 지급하여야 합니다. 또한 의뢰인은 위 기간 동안 발생한 모든 비용 및 손해에 관해 펫시터 또는 회사에 대한 책임을 부담합니다.</li>
						
						<li>회사는 의뢰인이 제12항의 추가 이용대금을 지급한 경우 지체 없이 펫시터에게 해당 금원을 지급하여야 합니다.</li>
					</ol>
				<h2>(펫시터의 취소 등)</h2>
					<ol>
					<li>펫시터는 의뢰계약이 성립된 건에 대해서는 해당 의뢰계약을 취소할 수 없습니다.</li>
						
						<li>펫시터는 다음 각 호에서 정한 부득이한 사정으로 이용계약을 취소한 경우 이를 증명할 수 있는 문서를 회사에 제출하면 제2항 제 2문의 경고를 면할 수 있습니다.</li>
							<ol>
								<li>1. 4촌 이내 친족의 사망</li>
							
								<li>2. 본인의 중대한 사고 및 상해</li>
							
								<li>3. 기타 이에 준하는 사유</li>
							</ol>
						<li>천재지변, 전쟁, 테러, 폭동, 소요, 국가비상사태 및 기타 이와 유사한 사태가 발생한 경우 회사와 펫시터는 그로 인한 책임 을 면합니다.</li>
						
						<li>펫시터의 의뢰 취소 등에 관한 규정은 ‘펫플레닛 펫시터 중개계약서’가 우선합니다.</li>
					</ol>
				</div>
			<input type="checkbox" name="agree" id="chk1"><label for="chk1">투개더 이용약관에 동의합니다.</label>
			</div>

		<div class="text">
			<div class="privacy">
				<p>개인정보보호법에 따라 투개더에 회원가입 신청하시는 분께 수집하는 개인정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간, 동의 거부권 및 동의 거부 시 불이익에 관한 사항을 안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p>

				<h2>(수집하는 개인정보)</h2>
					<ol>
						<li>이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 투개더 서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페, 블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할 경우, 투개더는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.


						<li>회원 가입 시에 ‘아이디, 비밀번호, 이름, 생년월일, 휴대전화번호’를 필수항목으로 수집합니다. 만약 이용자가 입력하는 생년월일이 만14세 미만 아동일 경우에는 법정대리인 정보(법정대리인의 이름, 생년월일, 중복가입확인정보(DI), 휴대전화번호)를 추가로 수집합니다. 그리고 선택항목으로 이메일 주소, 프로필 정보를 수집합니다.

						<li>투개더 내의 개별 서비스 이용, 이벤트 응모 및 경품 신청 과정에서 해당 서비스의 이용자에 한해 추가 개인정보 수집이 발생할 수 있습니다. 추가로 개인정보를 수집할 경우에는 해당 개인정보 수집 시점에서 이용자에게 ‘수집하는 개인정보 항목, 개인정보의 수집 및 이용목적, 개인정보의 보관기간’에 대해 안내 드리고 동의를 받습니다.
							<ol>
								<p>* 서비스 이용 과정에서 IP 주소, 쿠키, 서비스 이용 기록, 기기정보, 위치정보가 생성되어 수집될 수 있습니다. 또한 이미지 및 음성을 이용한 검색 서비스 등에서 이미지나 음성이 수집될 수 있습니다.</p>
								<li>1. 서비스 이용 과정에서 이용자에 관한 정보를 자동화된 방법으로 생성하여 이를 저장(수집)</li>
								<li>2. 이용자 기기의 고유한 정보를 원래의 값을 확인하지 못 하도록 안전하게 변환하여 수집합니다. 서비스 이용 과정에서 위치정보가 수집될 수 있으며,
								투개더에서 제공하는 위치기반 서비스에 대해서는 '투개더 위치정보 이용약관'에서 자세하게 규정하고 있습니다.</li>
								<p>* 이와 같이 수집된 정보는 개인정보와의 연계 여부 등에 따라 개인정보에 해당할 수 있고, 개인정보에 해당하지 않을 수도 있습니다.</p>
							</ol>
					</ol>
				<h2>(수집한 개인정보의 이용)</h2>
					<p>투개더 및 투개더 관련 제반 서비스(모바일 웹/앱 포함)의 회원관리, 서비스 개발・제공 및 향상, 안전한 인터넷 이용환경 구축 등 아래의 목적으로만 개인정보를 이용합니다.</p>
					<ol>
						<li>회원 가입 의사의 확인, 연령 확인 및 법정대리인 동의 진행, 이용자 및 법정대리인의 본인 확인, 이용자 식별, 회원탈퇴 의사의 확인 등 회원관리를 위하여 개인정보를 이용합니다.</li>
						<li>콘텐츠 등 기존 서비스 제공(광고 포함)에 더하여, 인구통계학적 분석, 서비스 방문 및 이용기록의 분석, 개인정보 및 관심에 기반한 이용자간 관계의 형성, 지인 및 관심사 등에 기반한 맞춤형 서비스 제공 등 신규 서비스 요소의 발굴 및 기존 서비스 개선 등을 위하여 개인정보를 이용합니다.</li>
						<li>법령 및 투개더 이용약관을 위반하는 회원에 대한 이용 제한 조치, 부정 이용 행위를 포함하여 서비스의 원활한 운영에 지장을 주는 행위에 대한 방지 및 제재, 계정도용 및 부정거래 방지, 약관 개정 등의 고지사항 전달, 분쟁조정을 위한 기록 보존, 민원처리 등 이용자 보호 및 서비스 운영을 위하여 개인정보를 이용합니다.</li>
						<li>유료 서비스 제공에 따르는 본인인증, 구매 및 요금 결제, 상품 및 서비스의 배송을 위하여 개인정보를 이용합니다.</li>
						<li>이벤트 정보 및 참여기회 제공, 광고성 정보 제공 등 마케팅 및 프로모션 목적으로 개인정보를 이용합니다.</li>
						<li>서비스 이용기록과 접속 빈도 분석, 서비스 이용에 대한 통계, 서비스 분석 및 통계에 따른 맞춤 서비스 제공 및 광고 게재 등에 개인정보를 이용합니다.</li>
						<li>보안, 프라이버시, 안전 측면에서 이용자가 안심하고 이용할 수 있는 서비스 이용환경 구축을 위해 개인정보를 이용합니다.</li>
					</ol>
				<h2>(개인정보의 보관기간)</h2>
					<p>회사는 원칙적으로 이용자의 개인정보를 회원 탈퇴 시 지체없이 파기하고 있습니다.
					단, 이용자에게 개인정보 보관기간에 대해 별도의 동의를 얻은 경우, 또는 법령에서 일정 기간 정보보관 의무를 부과하는 경우에는 해당 기간 동안 개인정보를 안전하게 보관합니다.</p>


				<h2>(부정 가입 및 이용 방지)</h2>
					<ol>
						<li>부정 이용자의 가입인증 휴대전화번호 또는 DI (만14세 미만의 경우 법정대리인DI) : 탈퇴일로부터 6개월 보관</li>
						<li>탈퇴한 이용자의 휴대전화번호(복호화가 불가능한 일방향 암호화(해시처리)) : 탈퇴일로부터 6개월 보관</li>
					</ol>
				<h2>(전자상거래)</h2> 
					<ol>
						<li>전자상거래 등에서 소비자 보호에 관한 법률</li>
							<ol>
								<li>1. 계약 또는 청약철회 등에 관한 기록: 5년 보관</li>
								<li>2. 대금결제 및 재화 등의 공급에 관한 기록: 5년 보관</li>
								<li>3. 소비자의 불만 또는 분쟁처리에 관한 기록: 3년 보관</li>
							</ol>
						<li>전자문서 및 전자거래 기본법</li>
							<ol>
								<li>1. 공인전자주소를 통한 전자문서 유통에 관한 기록 : 10년 보관</li>
							</ol>
						<li>통신비밀보호법</li>
							<ol>
								<li>1. 로그인 기록: 3개월</li>
							</ol>
						<p>* 참고로 투개더는 ‘개인정보 유효기간제’에 따라 1년간 서비스를 이용하지 않은 회원의 개인정보를 별도로 분리 보관하여 관리하고 있습니다.</p>
					</ol>
				<h2>(개인정보 수집 및 이용 동의를 거부할 권리)</h2>
					<p>이용자는 개인정보의 수집 및 이용 동의를 거부할 권리가 있습니다.
					회원가입 시 수집하는 최소한의 개인정보, 즉, 필수 항목에 대한 수집 및 이용 동의를 거부하실 경우, 회원가입이 어려울 수 있습니다.</p>
			</div>
			<input type="checkbox" name="agree" id="chk2"><label for="chk2">개인정보 처리방침에 동의합니다.</label>
		</div>
		
		<div class="text">
			<div class="location">
				<p>위치정보 이용약관에 동의하시면, 위치를 활용한 광고 정보 수신 등을 포함하는 투개더 위치기반 서비스를 이용할 수 있습니다.</p>


<h2>(목적)</h2>
<p>이 약관은 투개더 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>

<h2>(약관 외 준칙)</h2>
<p>이 약관에 명시되지 않은 사항은 위치정보의 보호 및 이용 등에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 전기통신기본법, 전기통신사업법 등 관계법령과 회사의 이용약관 및 개인정보처리방침, 회사가 별도로 정한 지침 등에 의합니다.</p>

<h2>(서비스 내용 및 요금)</h2>
<ol>
<li>회사는 직접 위치정보를 수집하거나 위치정보사업자인 이동통신사로부터 위치정보를 전달받아 아래와 같은 위치기반서비스를 제공합니다.</li>
<ol>
<li>1. Geo Tagging 서비스: 게시물에 포함된 개인위치정보주체 또는 이동성 있는 기기의 위치정보가 게시물과 함께 저장됩니다.</li>
<li>2. 위치정보를 활용한 검색결과 제공 서비스: 정보 검색을 요청하거나 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 제공 시 본 위치정보를 이용한 검색결과 및 주변결과(맛집, 주변업체, 교통수단 등)를 제시합니다.</li>
<li>3. 위치정보를 활용한 친구찾기 및 친구맺기: 현재 위치를 활용하여 친구를 찾아주거나 친구를 추천하여 줍니다.</li>
<li>4. 연락처 교환하기: 위치정보를 활용하여 친구와 연락처를 교환할 수 있습니다.</li>
<li>5. 이용자 위치를 활용한 광고정보 제공: 검색결과 또는 기타 서비스 이용 과정에서 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 광고소재를 제시합니다.</li>
<li>6. 이용자 보호 및 부정 이용 방지: 개인위치정보주체 또는 이동성 있는 기기의 위치를 이용하여 권한없는 자의 비정상적인 서비스 이용 시도 등을 차단합니다.</li>
<li>7. 위치정보 공유: 개인위치정보주체 또는 이동성 있는 기기의 위치정보를 안심귀가 등을 목적으로 지인 또는 개인위치정보주체가 지정한 제3자에게 공유합니다.</li>
<li>8. 길 안내 등 생활편의 서비스 제공: 교통정보와 길 안내 등 최적의 경로를 지도로 제공하며, 주변 시설물 찾기, 뉴스/날씨 등 생활정보, 긴급구조 서비스 등 다양한 운전 및 생활 편의 서비스를 제공합니다.</li>
</ol>
<li>제1항 위치기반서비스의 이용요금은 무료입니다.</li>
</ol>
<h2>(개인위치정보주체의 권리)</h2>
<ol>
<li>개인위치정보주체는 개인위치정보 수집 범위 및 이용약관의 내용 중 일부 또는 개인위치정보의 이용ㆍ제공 목적, 제공받는 자의 범위 및 위치기반서비스의 일부에 대하여 동의를 유보할 수 있습니다.</li>
<li>개인위치정보주체는 개인위치정보의 수집ㆍ이용ㆍ제공에 대한 동의의 전부 또는 일부를 철회할 수 있습니다.</li>
<li>개인위치정보주체는 언제든지 개인위치정보의 수집ㆍ이용ㆍ제공의 일시적인 중지를 요구할 수 있습니다. 이 경우 회사는 요구를 거절하지 아니하며, 이를 위한 기술적 수단을 갖추고 있습니다.</li>
<li>개인위치정보주체는 회사에 대하여 아래 자료의 열람 또는 고지를 요구할 수 있고, 당해 자료에 오류가 있는 경우에는 그 정정을 요구할 수 있습니다. 이 경우 회사는 정당한 이유 없이 요구를 거절하지 아니합니다.</li>
	<ol>
	<li>1. 개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료</li>
	<li>2. 개인위치정보주체의 개인위치정보가 위치정보의 보호 및 이용 등에 관한 법률 또는 다른 법령의 규정에 의하여 제3자에게 제공된 이유 및 내용</li>
	</ol>	
<li>회사는 개인위치정보주체가 동의의 전부 또는 일부를 철회한 경우에는 지체 없이 수집된 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료를 파기합니다.
	단, 동의의 일부를 철회하는 경우에는 철회하는 부분의 개인위치정보 및 위치정보 수집ㆍ이용ㆍ제공사실 확인자료에 한합니다.</li>
<li>개인위치정보주체는 제1항 내지 제4항 의 권리행사를 위하여 이 약관 제13조의 연락처를 이용하여 회사에 요구할 수 있습니다.</li>
</ol>
<h2>(법정대리인의 권리)</h2>
<ol>
<li>회사는 만14세 미만 아동으로부터 개인위치정보를 수집ㆍ이용 또는 제공하고자 하는 경우에는 만14세 미만 아동과 그 법정대리인의 동의를 받아야 합니다.</li>
<li>법정대리인은 만14세 미만 아동의 개인위치정보를 수집ㆍ이용ㆍ제공에 동의하는 경우 동의유보권, 동의철회권 및 일시중지권, 열람ㆍ고지요구권을 행사할 수 있습니다.</li>
</ol>
<h2>(위치정보 이용ㆍ제공사실 확인자료 보유근거 및 보유기간)</h2>
<p>회사는 위치정보의 보호 및 이용 등에 관한 법률 제16조 제2항에 근거하여 개인위치정보주체에 대한 위치정보 수집ㆍ이용ㆍ제공사실 확인자료를 위치정보시스템에 자동으로 기록하며, 6개월 이상 보관합니다.</p>

<h2>(서비스의 변경 및 중지)</h2>
<ol>
<li>회사는 위치정보사업자의 정책변경 등과 같이 회사의 제반 사정 또는 법률상의 장애 등으로 서비스를 유지할 수 없는 경우, 서비스의 전부 또는 일부를 제한, 변경하거나 중지할 수 있습니다.</li>
<li>제1항에 의한 서비스 중단의 경우에는 회사는 사전에 인터넷 등에 공지하거나 개인위치정보주체에게 통지합니다.</li>
</ol>
<h2>(개인위치정보 제3자 제공시 즉시 통보)</h2>
<ol>
<li>회사는 개인위치정보주체의 동의 없이 당해 개인위치정보주체의 개인위치정보를 제3자에게 제공하지 아니하며, 제3자 제공 서비스를 제공하는 경우에는 제공 받는 자 및 제공목적을 사전에 개인위치정보주체에게 고지하고 동의를 받습니다.</li>
<li>회사는 개인위치정보를 개인위치정보주체가 지정하는 제3자에게 제공하는 경우에는 개인위치정보를 수집한 당해 통신단말장치로 매회 개인위치정보주체에게 제공받는 자, 제공일시 및 제공목적을 즉시 통보합니다.</li>
<li>다만, 아래에 해당하는 경우에는 개인위치정보주체가 미리 특정하여 지정한 통신단말장치 또는 전자우편주소 등으로 통보합니다.</li>
	<ol>
	<li>1. 개인위치정보를 수집한 당해 통신단말장치가 문자, 음성 또는 영상의 수신기능을 갖추지 아니한 경우</li>
	<li>2. 개인위치정보주체가 개인위치정보를 수집한 당해 통신단말장치 외의 통신단말장치 또는 전자우편주소 등으로 통보할 것을 미리 요청한 경우</li>
</ol>
</ol>
<h2>(8세 이하의 아동 등의 보호의무자의 권리)</h2>
<ol>
<li>회사는 아래의 경우에 해당하는 자(이하 “8세 이하의 아동”등이라 한다)의 보호의무자가 8세 이하의 아동 등의 생명 또는 신체보호를 위하여 개인위치정보의 이용 또는 제공에 동의하는 경우에는 본인의 동의가 있는 것으로 봅니다.</li>
	<ol>
	<li>1. 8세 이하의 아동</li>
	<li>2. 금치산자</li>
	<li>3. 장애인복지법제2조제2항제2호의 규정에 의한 정신적 장애를 가진 자로서 장애인고용촉진및직업재활법 제2조제2호의 규정에 의한 중증장애인에 해당하는 자(장애인복지법 제29조의 규정에 의하여 장애인등록을 한 자에 한한다)</li>
	</ol>
<li>8세 이하의 아동 등의 생명 또는 신체의 보호를 위하여 개인위치정보의 이용 또는 제공에 동의를 하고자 하는 보호의무자는 서면동의서에 보호의무자임을 증명하는 서면을 첨부하여 회사에 제출하여야 합니다.</li>
<li>보호의무자는 8세 이하의 아동 등의 개인위치정보 이용 또는 제공에 동의하는 경우 개인위치정보주체 권리의 전부를 행사할 수 있습니다.</li>
</ol>
<h2>(손해배상)</h2>
<p>개인위치정보주체는 회사의 위치정보의 보호 및 이용 등에 관한 법률 제15조 내지 26조의 규정을 위반한 행위로 손해를 입은 경우에 회사에 대하여 손해배상을 청구할 수 있습니다. 이 경우 회사는 고의 또는 과실이 없음을 입증하지 아니하면 책임을 면할 수 없습니다.</p>

<h2>(분쟁의 조정)</h2>
<ol>
<li>회사는 위치정보와 관련된 분쟁에 대하여 개인위치정보주체와 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 방송통신위원회에 재정을 신청할 수 있습니다.</li>
<li>회사 또는 개인정보위치 주체는 위치정보와 관련된 분쟁에 대해 당사자간 협의가 이루어지지 아니하거나 협의를 할 수 없는 경우에는 개인정보보호법에 따라 개인정보분쟁조정위원회에 조정을 신청할 수 있습니다.</li>
</ol>
			</div>
			<input type="checkbox" name="agree" id="chk3"><label for="chk3">위치정보 제공에 동의 합니다.</label>
		</div>	
			
		</form>
		<div class="agree_okBtn">
			<a href="javascript:agree();">확인</a>
		</div>	
		</div>
	
	</div>
</body>

</html>