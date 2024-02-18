<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일반 게시판</title>
<link href="/css/normalList.css" rel="stylesheet" type="text/css" />
</head>
<body>
<jsp:include page="../../nav.jsp"></jsp:include>
	<div id="list_wrap">
            <div id="list_tap"><a href="list" id="tap1">정보 공유</a><a href="straylist" id="tap2">유기견</a></div>

       <div id="list_top">
       		<div id="search_wrap">
                <div id="search_img" ><img src="/image/search.png"></div>
                <form method="get" action="">
                    <span>
                        <select name="search" style="display:none;">
                            <option value="0">선택</option>
                            <option value="1"${pager.search == 1 ? 'selected': '' }>제목</option>
                            <option value="2"${pager.search == 2 ? 'selected': '' }>내용</option>					
                        </select>
                    </span>
                    <span>
                        <input id="search_text" type="text" name="keyword" placeholder="검색어를 입력해주세요" > 
                    </span>
                    <span style="display:none;">
                        <input type="submit" value="검색" onKeypress="javascript:if(event.keyCode==13)" >
                    </span>
                </form>
            </div>
       		
            <div id="list_name"><h1>정보 공유 게시판</h1></div>
            
            <div id="addBtn"><a href="add"><img src="/image/add.png">게시글 등록</a></div>
        </div>

        <div id="list_content_wrap">
            <div id="list_content">
                <c:forEach var="item" items="${list}">
                    <c:if test="${item.boardSort ==2 }">
                    <div class="list">
                        <ul  onclick="location.href='${item.boardId}/detail'">
                            <li><span>${item.boardTitle}</span></li>
                            <li>${item.boardContent}</li>
                            <li>${item.usrNickname} 님</li> <!-- join Nickname -->
                            <li>${item.boardDate}</li>
                        </ul>
                    </div>
                    </c:if>
                </c:forEach>
            </div>        

            <div class= "page"> <!--페이지넨션 -->
                <ul class="page_ul">					
                   <li class="page_li"><a href="?page=${pager.prev}&${pager.query}"><img src="/image/page_left.png"></a></li>				
                   <c:forEach var="page" items="${pager.list}">
                   <li  class="${page == pager.page ? 'page-item active' : ''}"><a href="?page=${page}&${pager.query}">${page}</a></li>				
                   </c:forEach>
                   <li class="page_li"><a href="?page=${pager.next}&${pager.query}"><img src="/image/page_right.png"></a></li>					
               </ul>
           </div>
        </div>
    </div>
</body>
<jsp:include page="../../footer.jsp"></jsp:include>
</html>