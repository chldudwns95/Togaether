/* Korean initialisation for the jQuery calendar extension. */
/* Written by DaeKwon Kang (ncrash.dk@gmail.com), Edited by Genie and Myeongjin Lee. */
( function( factory ) {
	"use strict";

	if ( typeof define === "function" && define.amd ) {

		// AMD. Register as an anonymous module.
		define( [ "../widgets/datepicker" ], factory );
	} else {

		// Browser globals
		factory( jQuery.datepicker );
	}
} )( function( datepicker ) {
"use strict";

datepicker.regional.ko = {
		closeText: '닫기',
        prevText: '이전달',
        nextText: '다음달',
        currentText: '오늘',
        monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
        '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월',
        '7월','8월','9월','10월','11월','12월'],
        dayNames: ['일','월','화','수','목','금','토'],
        dayNamesShort: ['일','월','화','수','목','금','토'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        weekHeader: 'Wk',
        dateFormat: 'yy-mm-dd',
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,  // 월, 년순의 셀렉트 박스를 년,월 순으로 바꿔준다. 
        yearSuffix: '',
        showOn: 'focus', 
        changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
        yearRange: '2021:2099',
        minDate:'sysdate'};
datepicker.setDefaults( datepicker.regional.ko );

return datepicker.regional.ko;

} );
