<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>정보공유 수정</title>
<link href="/css/index.css" rel="stylesheet" type="text/css" />
<link href="/css/normalAdd.css" rel="stylesheet" type="text/css" />
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<script src="/summernote/lang/summernote-ko-KR.min.js"></script>>

</head>
<body>
<div class="top">
		<a href="/"><img alt="로고" src="/image/logo.png"></a>
			
	<div class="menu">
		<ul>
			<li><a href="/guide">이용안내</a></li>
			<li><a href="/take/list">이용하기</a></li>
			<li><a href="/board/goods/list">물품거래</a></li>
			<li><a href="/board/normal/list">정보공유</a></li>
		</ul>
	</div>

	<div class="user">
		<c:if test="${sessionScope.user == null }">
		<ul>			
			<li><a href="/login">로그인</a></li>
			<li>|</li>
			<li><a href="/user/agree">회원가입</a></li>
		</ul>
		</c:if>
		<c:if test="${sessionScope.user != null}">
	
		<%-- ${sessionScope.user.usrEmail}&nbsp;님 환영합니다. 
		${sessionScope.user.usrId} --%>
		<a href="/logout">로그아웃</a>
	</c:if>
	</div>	
</div>

  <div id="add_wrap">
    <form method="post" action="../${item.boardId}/update" enctype="multipart/form-data">
      <div id="form_wrap">
        <div id="title"><h1>게시글 수정</h1></div>
        <div><input type="hidden" name="usrId" value="${sessionScope.user.usrId}"></div>
        <div><input type="hidden" name="boardSort" value="2"></div>
        <div id="nick"><p>작성자: ${sessionScope.user.usrNickname}</p></div>
      
        
        <div id="boardTitle"><input type="text" name="boardTitle" placeholder="제목을 입력해주세요."></div>
        
        <div id="content">
          <textarea  id="summernote" name="boardContent"></textarea>
        </div>
            <script>
            $('#summernote').summernote({
                height: 500,
                minHeight: 500,
                maxHeight: 500,
                lang : 'ko-KR',
                placeholder:"내용을 입력해 주세요.",
                toolbar: [
                ['style', ['bold', 'italic', 'underline', 'clear']],
                ['font', ['strikethrough', 'superscript', 'subscript']],
                ['fontsize', ['fontsize']],
                ['color', ['color']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']]
                ]
        
              });
          </script>
     		<div>
				<label>현재이미지:</label>
				<a href="/upload/${item.cover}" target="_blank">${item.cover}</a>				
			</div>
        	<div>
				<label>새로윤 이미지:</label>
				<input type="file" name="uploadFile">
			</div>
				
			<div >
				<label>완료여부:</label>
				<select name="boardIng" value="${item.boardIng}" >
					<option value=1>완료</option>
					<option value=2>진행중</option>
				</select>						
			</div>
			
          <div id="addBtn"><input type="submit" value="등록" ></div>
      </div>      
    </form>
  </div>
 
 <footer>
        <div id="footer_wrap">
           <div id="footer_info">
               <div><img src="/image/logo.png"></div>
               <div>
                   <address>
                       (주) 투개더 <br>
                       대전광역시 동구 우암로 352-21<br>
                       대표: 장영진, 김민재, 최영준, 김지해<br>
                       대표전화: 010-5923-2028<br>
                       업무시간: 평일 10:-18:00 (점심 12:00-13:00)<br>
                       이메일: rlawlgo0703@gmail.com<br>
                       © 2021. TOGAETHER Co. all rights reserved
                   </address>
               </div>
           </div>

           <div id="footer_list">
               <ul>
                   <li class="footer_list_title">투개더 정보
                        <ul class="footer_list_menu">
                            <li>투개더 소개</li>
                            <li>이용안내</li>
                            <li>채팅상담</li>
                            <li>이용약관</li>
                            <li>개인정보 처리방침</li>
                        </ul>
                    </li>
                    <li class="footer_list_title">이용하기
                        <ul class="footer_list_menu">
                            <li>산책 서비스</li>
                            <li>돌봄 서비스</li>
                            <li>물품거래</li>
                            <li>정보공유</li>
                        </ul>
                    </li>
                    <li class="footer_list_title">투개더 계정
                        <ul class="footer_list_menu">
                            <li>로그인</li>
                            <li>회원가입</li>
                        </ul>
                    </li>
               </ul>
           </div>

           <div id="footer_img"><img src="/image/footer_img.png"></div>
        </div>
    </footer>
</body>
</html>