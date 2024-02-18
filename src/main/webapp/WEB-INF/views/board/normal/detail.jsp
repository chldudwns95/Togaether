<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반게시판 상세정보</title>
<link href="/css/normalDetail.css" rel="stylesheet" type="text/css" />
<script>
	function remove(id,button){
		let data = {
			cmtId:id
		};
		console.log(data);
			
		const xhr = new XMLHttpRequest();

		xhr.open("DELETE", "/detail");

		xhr.setRequestHeader("content-type", "application/json");

		xhr.onreadystatechange = function(){
			if(this.readyState == XMLHttpRequest.DONE){
				if(this.status == 200){
					console.log(this.reponseText);
					
					console.log("ajax 완료");
					
					let div1 = button.parentNode.parentNode.parentNode;
					let div2 = button.parentNode.parentNode;

					div1.removeChild(div2);
					
					
				}else{
					console.log("ajax 실패");
			  }
			}
		};
		xhr.send(JSON.stringify(data));
		
	}


	function displayList(list){
		let html = "";

		for(let index=0; index<list.length; index++){
			html += makeItem(list[index]);
		}

		let ul = document.getElementById("display");
		ul.innerHTML = html;

	}

	function makeItem(item){
		let html ="";

		html +="<div>";
		html +="<div>";
		html +="<span>"+item.cmtNickname
		html +="</span>&nbsp&nbsp";
		html +="<span data-id='"+ item.cmtId +"'>"+item.cmtContent		
		html +="<button onclick='remove("+item.cmtId+", this)'>삭제</button>";
		html +="</span>";
		html +="</div>";
		html +="</div>";	
		
		
		return html;
	}

	function append(item){
		let html = makeItem(item);

		const ul =document.querySelector("#display");
		html += ul.innerHTML;
		
		ul.innerHTML = html;
	}

	function submit(){
		let textarea = document.querySelector("#add .comment");
		let id = document.querySelector("#add .id");
		let nickname = document.querySelector("#add .nickname");

		let comment ={
			cmtNickname:nickname.value,	
			cmtContent:textarea.value,
			boardId:id.value
			
		};

		const xhr = new XMLHttpRequest();

		xhr.open("POST","/detail");
		
		xhr.setRequestHeader("content-type", "application/json");

		xhr.onreadystatechange = function(){
			if(this.readyState == XMLHttpRequest.DONE){
				if(this.status == 200){
					console.log(this.responseText);

					let data = JSON.parse(this.responseText);
					append(data);
				}  else {
					console.log('ajax 실패');
				}
			}

		};		
		xhr.send(JSON.stringify(comment));
		console.log(comment);
	}
	

	function getData(boardid){
		const xhr = new XMLHttpRequest();
		
		xhr.open("GET", "/detail?boardid=" + boardid ); 

		xhr.onreadystatechange = function(){
			if(this.readyState == XMLHttpRequest.DONE){
				if(this.status == 200){
					console.log(this.responseText);
					
					const data = JSON.parse(this.responseText)

					console.log(data);

					displayList(data);
																								
				
				}
			}
		};
		xhr.send();
	}

	window.onload = function(){
		getData(${item.boardId});
	}
	
</script>
</head>
<body>
<jsp:include page="../../nav.jsp"></jsp:include>
    <div class="normal_detail_wrap">
        <div class="normal_detail_content_wrap">
            <div class="normal_img_content">
				<c:if test="${item.cover != null}">
	            	<img src="/normal/${item.cover}" alt="">
	            </c:if>
	            <c:if test="${item.cover == null}">
	                 <img src="/image/coverDefault.png" alt="">
	            </c:if>
            </div>
            <div class="normal_detail_usrInfo">
                <ul>
                    <li>
                    	<c:if test="${item.usrCover != null}">
                    		<img src="/user/${item.usrCover}" alt="">
                    	</c:if>
                    	<c:if test="${item.usrCover == null}">
                    		<img src="/image/usrCover_default.png" alt="">
                    	</c:if>
                    </li>
                    <li>${item.usrNickname} 님</li>
                    <li>${item.usrAddr}</li>
                    <li>
                        <c:if test="${item.usrId == sessionScope.user.usrId}">
                            <div>
                                <a href="/board/normal/${item.boardId}/update" class="updateBtn"><img src="/image/update.png"></a> 
                                <a href="/board/normal/${item.boardId}/delete" class="deleteBtn"><img src="/image/delete.png"></a>
                            </div> 
                        </c:if>
                    </li>
                </ul>
            </div>
            <div><p>${item.boardTitle}</p></div>
            <div><p>${item.boardDate}</p></div>
            <div><p>${item.boardContent}</p></div>
        </div>

        <div class="normal_detail_cmtWrap">
            <div><p>댓글 총 개수</p></div>
            <div><img src="/image/megaphone.png"><p>로그인을 하셔야 댓글작성이 가능합니다.</p></div>
            <div id="add">
            	<input class="nickname" type="hidden" value="${sessionScope.user.usrNickname}">
				<textarea class="comment" rows="4" cols="50" name="cmtContent" placeholder="댓글을 입력하세요"></textarea>		
				<input class="id" type="hidden" type="number" value="${item.boardId}">		
				<button type="button" onclick="submit()" class="strayAddBtn">등록</button>
			</div>
           
          	<div id="display">
				<span>${cItem.cmtNickname}</span>	          	
   				<span>${cItem.cmtContent}</span>           	     		        		
          	</div>
         
        </div>
    </div>
</body>
<jsp:include page="../../footer.jsp"></jsp:include>
</html>