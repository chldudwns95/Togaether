<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link href="css/guide.css" rel="stylesheet" type="text/css" />
 <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<title>이용안내</title>
<script>
$(document).ready(function(){
    $('#guide_menu2_wrap').css('display','none')
    $('#guide_menu1').css({'background':'#f19149', 'color':'#fff'});
    $('#guide_menu2').css({'background':'#f5f5f5', 'color':'#b2b2b2'});
});    

function menu1Show() {
    $('#guide_menu1_wrap').show();
    $('#guide_menu2_wrap').hide();
    $('#guide_menu1').css({'background':'#f19149', 'color':'#fff'});
    $('#guide_menu2').css({'background':'#f5f5f5', 'color':'#b2b2b2'});
}

function menu2Show() {
    $('#guide_menu2_wrap').show();
    $('#guide_menu1_wrap').hide();
    $('#guide_menu2').css({'background':'#f19149', 'color':'#fff'});
    $('#guide_menu1').css({'background':'#f5f5f5', 'color':'#b2b2b2'});
}



$(document).ready(function(){
   let status = 0;
   $('.menu_content').on('click',function(){
      if(status==0){
         $(this).children('.menu_content_A').css('display','block')
         $(this).children('.menu_content_Q').css('font-weight','bold')
         $(this).find('.upBtn').css('display','block')
         $(this).find('.downBtn').css('display','none')
         status=1;
      }
      else{
         $(this).children('.menu_content_A').css('display','none')
         $(this).children('.menu_content_Q').css('font-weight','normal')
         $(this).find('.upBtn').css('display','none')
         $(this).find('.downBtn').css('display','block')
         status=0;
      }

   });
});


// $().css({"width":"100%", "height":"100%"})
// $().css("width", "100%")
</script>

</head>
<body>
 <jsp:include page="nav.jsp"></jsp:include>
   <div id="guide_wrap">
      <div id="guide_menu">
         <div id="guide_menu1" onclick="javascript:menu1Show()"><p>이용 & 예약</p></div>
         <div id="guide_menu2" onclick="javascript:menu2Show()"><p>펫시터</p></div>
      </div>
      
      <div id="guide_menu1_wrap">
         <div class="menu_content">
            <div class="menu_content_Q"><p>예약은 어디에서 하나요?</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>예약은 메인화면에서 바로가기 버튼 또는 이용하기 메뉴에서 원하시는 서비스를 선택하신 후 예약하기를 통해 예약을 하실 수 있습니다.</p></div>
         </div>
         
         <div class="menu_content">
            <div class="menu_content_Q"><p>투개더는 어떤 서비스를 제공하나요?</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>저희 투개더는 기존 반려동물 케어 서비스에 존재하는 돌봄, 산책서비스 뿐만 아니라 장기돌봄, 펫시터가 제공가능한 추가적인 서비스 또한 다양하게 이용가능합니다.</p></div>
         </div>
         <div class="menu_content">
            <div class="menu_content_Q"><p>호텔이나 병원에 맡기는것과 다른점은 무엇인가요?</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>호텔이나 병원의 경우 여러 마리의 반려동물을 수용하여야 하기 때문에 맞춤케어가 힘들지만 투개더 서비스에서는 펫시터가 직접 돌봐주기 때문에 펫시터의 가정집에서 안전하게 지낼 수 있고, 펫시터마다 제공할 수 있는 추가 서비스가 있기 때문에 나의 반려견에 맞는 서비스를 선택할 수 있습니다.</p></div>
         </div>
         <div class="menu_content">
            <div class="menu_content_Q"><p>타 반려견 케어 서비스와 다른 점은 무엇인가요?</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>저희 투개더에서는 펫시터에 일반인들도 지원이 가능하기 때문에 좀 더 다양한 서비스와 저렴한 가격으로 장기적인 돌봄까지도 가능하며 서비스를 이용하시는 견주분들도 시간, 공간적인 여유가 있으시면 펫시터로도 활동 가능합니다.</p></div>
         </div>
         <div class="menu_content">
            <div class="menu_content_Q"><p>펫시터를 믿을 수 있나요?</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>저희 투개더에서는 회원 가입 시 이메일인증 절차를 통하여 본인 인증을 진행 중이며 추가적인 인증 서비스 또한 제공될 예정입니다. 서비스를 이용하시기 전에 펫시터와의 채팅을 통하여 펫시터에 대한 정보를 미리 알아보실 수 있습니다.</p></div>
         </div>
         <div class="menu_content">
            <div class="menu_content_Q"><p>비용은 얼마인가요?</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>저희 투개더는 크게 돌봄, 산책으로 서비스가 나눠져 있으며, 펫시터에 따라서 추가적인 서비스나 돌봐주는 기간이 다양하기 때문에 가격 또한 다양합니다. 원하시는 서비스와 기간, 가격 모두 잘 살펴보시고 예약을 신중히 진행해 주시기 바랍니다.</p></div>
         </div>
         <div class="menu_content">
            <div class="menu_content_Q"><p>예약하기 전에 펫시터와 사전만남도 가능한가요?</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>서비스를 예약하시기 전에 사전만남을 원하시는 펫시터님과 채팅을 통해 만남을 조율할 수 있습니다.</p></div>
         </div>
         <div class="menu_content">
            <div class="menu_content_Q"><p>돌봄 서비스를 이용하기 전에 준비사항은 뭐가 있나요?</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>펫시터님들마다 원하시는 준비물에는 차이가 있을 수 있으나 기본적으로 기존에 반려견이 사용하던 물품들과 사료, 간식 등이 필요하고, 견주님과 떨어져 있을동안 복용해야 하는 약물들 또한 포함됩니다.</p></div>
         </div>
      </div>
      
      <div id="guide_menu2_wrap" style="display:none;">
        <div class="menu_content">
            <div class="menu_content_Q"><p>투게더 와 타 서비스와 다른점</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>우리 투게더는 타서비스와 다르게 전문적인 펫시터가 아닌 펫을 사랑하는 마음 하나면 충분합니다. </p></div>
         </div>
        <div class="menu_content">
            <div class="menu_content_Q"><p>투게더의 펫시터 지원방법</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>"이용하기" - "산책 or 돌봄" 메뉴에서 등록을 하신후 견주님과의 채팅을 통하여 서로의 합의하에 돌봄 or 산책을 지원하시면 됩니다 </p></div>
         </div>
          <div class="menu_content">
            <div class="menu_content_Q"><p>투게더 펫시터의 업무</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>산책부터 장기돌봄까지 다양한 업무를 할수 있고 마이페이지의 추가 서비스를 통하여 내가 반려견에게 할수 있는 일을 추가 할 수 있습니다.</p></div>
         </div>
          <div class="menu_content">
            <div class="menu_content_Q"><p>투게더 펫시터의 금액</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>반려견을 돌보기위한 집 또는 나의 능력에 따라 내가 원하는 기간동안 원하는 금액을 적용한 후 견주님께 직접적으로 받으면 됩니다. </p></div>
         </div>
          <div class="menu_content">
            <div class="menu_content_Q"><p>투게더 예약에 약속취소</p><img class="downBtn" src="/image/guide_down_button.png"><img class="upBtn" src="/image/guide_up_button.png"></div>
            <div class="menu_content_A"><p>저희 투게더는 이미 잡힌 예약은 취소 할수 없습니다. 그렇기에 견주님과 충분히 이야기를 한 후 약속을 꼭이행해주세요 </p></div>
         </div>
      </div>
   </div>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
