
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<title>회원 찾기</title>
<link href="/css/findInfo.css" rel="stylesheet" type="text/css">
</head>
<script>
 //아이디 값을 저장
let saveMail = "";
	
//아이디 값을 받고 출력하는 ajax
function emailSearch(){ 
			
	$.ajax({
		type: "POST",
		url: "emailSearch?inputName="+$('#inputName').val()+"&inputPhone="+$('#inputPhone').val(),
        success: function(result){
            if(result == 0){
				console.log('1');
				alert("입력하신 정보가 일치하지 않습니다.");
				/* $('#id_value').text("회원정보를 확인해 주세요"); 					*/
			} else{
				/* $('saveMale').text(result); */
				alert('고객님의 이메일은' + result + '입니다.');
				//id값 별도로 저장
				saveMail = result;
            }
        }
    });
}


$(document).ready(function(){
	
	
	$("#pwSearch").click(function(){
		
		let userInfo = {
				usrEmail : $("#usrEmail").val(),
				usrName : $("#usrName").val()
		}
		
		$.ajax({
			type : 'POST',
			url : '/user/pwSearch',
			data : userInfo,
			dataType : 'JSON',
			success : function(result){
				if(result > 0){
					alert('입력하신 이메일로 임시 비밀번호가 발송되었습니다. 이메일을 확인해 주세요!');
					location.replace('/login');
				} else {
					alert('입력하신 정보가 일치하지 않습니다.');
					location.replace('/user/findInfo');
				}
			}, error : function(){
				alert('AJAX ERROR');
			}
		});
		
	});
	
	
});

$(document).ready(function(){
    $('#find_content2_wrap').css('display','none')
    $('#find_content1_title').css({'background':'#f19149', 'color':'#fff'});
    $('#find_content2_title').css({'background':'#f5f5f5', 'color':'#b2b2b2'});
});    

function content1() {
    $('#find_content1_wrap').show();
    $('#find_content2_wrap').hide();
    $('#find_content1_title').css({'background':'#f19149', 'color':'#fff'});
    $('#find_content2_title').css({'background':'#f5f5f5', 'color':'#b2b2b2'});
}

function content2() {
    $('#find_content2_wrap').show();
    $('#find_content1_wrap').hide();
    $('#find_content2_title').css({'background':'#f19149', 'color':'#fff'});
    $('#find_content1_title').css({'background':'#f5f5f5', 'color':'#b2b2b2'});
}

</script>
<body>
<jsp:include page="../nav.jsp"></jsp:include>

   <div id="find_wrap">
       <div id="find_title"><h1>회원가입시 입력하신 정보를 입력해주세요.</h1></div>
       <div id="find_content_title_wrap">
           <div id="find_content1_title" onclick="javascript:content1()"><h2>이메일 찾기</h2></div>
           <div id="find_content2_title" onclick="javascript:content2()"><h2>비밀번호 찾기</h2></div>
       </div>

       <div id="find_content1_wrap">
           <div class="find_form_wrap">
                <form method="post">
                    <div class="find_content_wrap">
                        <div class="find_content1">
                            <label>성함</label>
                            <input id="inputName" type="text" name="usrName" placeholder="ex) 투개더">
                        </div>
                        <div class="find_content2">
                            <label>연락처</label>
                            <input id="inputPhone"type="tel" name="usrTell" placeholder="ex) 01012345678">
                        </div>
                    </div>
                </form>
                <diV class="findBtn"><button onclick="emailSearch()">이메일 찾기</button></diV>
            </div>
        </div>  

        <div id="find_content2_wrap">
            <div class="find_form_wrap">
               <form action="pwSearch">
                   <div class="find_content_wrap">
                        <div class="find_content1">
                            <label>이메일</label>
                            <input id="usrEmail" type="text" name="usrEmail" placeholder="ex) togaether@togaether.com">
                        </div>
                        <div class="find_content2">
                            <label>성함</label>
                            <input id="usrName" type="text" name="usrName" placeholder="ex) 투개더">
                        </div>
                    </div>
               </form>
               <div class="findBtn"><button id="pwSearch">비밀번호 찾기</button></div>
           </div>
         </div> 
   </div>
</body>
<jsp:include page="../footer.jsp"></jsp:include>
</html>