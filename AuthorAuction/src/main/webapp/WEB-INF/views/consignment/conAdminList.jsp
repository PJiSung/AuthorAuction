<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="imagetoolbar" content="no">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <meta name="title" content="웹사이트">
  <meta name="description" content="웹사이트입니다.">
  <meta name="keywords" content="키워드,키워드,키워드">
  <meta property="og:title" content="웹사이트">
  <meta property="og:description" content="웹사이트입니다">
  <meta property="og:image" content="https://웹사이트/images/opengraph.png">
  <meta property="og:url" content="https://웹사이트">
  <title>관리자 위탁 내역 | 침대</title>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <link rel="stylesheet" href="consignment/css/setting.css">
  <link rel="stylesheet" href="consignment/css/plugin.css">
  <link rel="stylesheet" href="consignment/css/template.css">
  <link rel="stylesheet" href="consignment/css/common.css">
  <link rel="stylesheet" href="consignment/css/style.css">
  
  <style type="text/css">
  	table{
		width:100%;
		
	}

	th{
	padding: 0 0 0 5%;
	
	}
	td{
	text-align: center;
	height:35px;
	}
  
  
  	.modal{
		position:fixed;
		transform: translate(-50%, -50%);
		top:50%;
		left:50%;
		width:100%;
		height:100%;
		display:flex;
	}
	
	.modal_content{
		box-shadow: 0 10px 20px rgba(0,0,0,0.19), 0 6px 6px rgba(0,0,0,0.23);
		background-color:white;
		padding: 50px 100px;
		text-align:center;
		top:50%;
		left:50%;
		transform: translateX(-50%);
		border-radius:10px;
		position:relative;
		width:50%;
	}
	
	.modal_overlay{
		background-color: rgba(0,0,0,0.6);
		width:100%;
		height:100%;
		position:absolute;
	}
	
	#modal_h3{
		margin:0;
	}
	
	#closeAlertModal{
		background:black;
		color:white;
		float:right;
		border-radius: 5px;
		cursor:pointer;
	}
  </style>
  
  <script type="text/javascript">
	$(document).ready(function() {
    // 승인여부 수락/거절 상태일 때 승인여부 제외하고 상세내용으로 이동
	    const $tbody = $("#tbody");
	    const $tds = $tbody.find('td');
	
	    $tds.on('mouseover', function() {
	        const $currentTd = $(this);
	
	        if ($currentTd.parent().children().eq(8).find("div").length === 2) {
	            for (let i = 1; i < 8; i++) {
	                $currentTd.parent().children().eq(i).on('click', function() {
	                    location.href = "selectUser.adco?conNo=" + $currentTd.parent().children().eq(0).find("input").val() + "&page=" + ${pi.currentPage};
	                });
	            }
	        } else {
	            $currentTd.parent().children().on('click', function() {
	            	for (let i = 1; i < $currentTd.parent().children().length; i++) {
		                $currentTd.parent().children().eq(i).on('click', function() {
	                		location.href = "selectUser.adco?conNo=" + $currentTd.parent().children().eq(0).find("input").val() + "&page=" + ${pi.currentPage};
	            });
	        }
	    });
	}
	    })
	});
	
	/* 경매 등록 모달 스크립트  */
	window.onload = () =>{
   		const startCalendar = document.getElementById("startCalendar");
   		const startDateCalendar = document.getElementById("startDateCalendar");
   		const endCalendar = document.getElementById("endCalendar");
   		const endDateCalendar = document.getElementById("endDateCalendar");
   		const closeStart = document.getElementById("closeStart");
   		const closeEnd = document.getElementById("closeEnd");
   		const yearPlace = document.getElementById("yearPlace");
   		const monthPlace = document.getElementById("monthPlace");
   		const previous = document.getElementById("previous");
   		const next = document.getElementById("next");
   		const selectStartBtn = document.getElementById("selectStart");
   		const selectEndBtn = document.getElementById("selectEnd");
   		const dateInput = document.querySelectorAll('input');
   		const monthPlaceEnd = document.getElementById("monthPlaceEnd");
   		const yearPlaceEnd = document.getElementById("yearPlaceEnd");
   		const previousEnd = document.getElementById("previousEnd");
   		const nextEnd = document.getElementById("nextEnd");
   		const span = document.querySelectorAll('span')
   		const modal = document.querySelector(".modal");
   		const closeAlertModal = document.getElementById("closeAlertModal");
   		const enrollModal = document.getElementsByClassName("modal_overlay")[0];
   		const closeAuctionModal = document.getElementById("closeAuctionModal");
   		const insertAuctionBtn = document.getElementById("insertAuctionBtn");
   		const modalContent = document.getElementById("modal_h3"); 
   		const ajaxConHope = document.getElementById("ajaxConHope");
   		const ajaxConYear = document.getElementById("ajaxConYear");
   		const ajaxConWidth = document.getElementById("ajaxConWidth");
   		const ajaxConHeight = document.getElementById("ajaxConHeight");
   		
   		console.log(modal);
   		
   		insertAuctionBtn.addEventListener('click',function(){
   			let checkInt = false;
   			if(parseInt(ajaxConHope.value) != ajaxConHope.value){
   				console.log(ajaxConHope.value);
   				checkInt = true;
   				ajaxConHope.value = '';
   			}
   			
			if(parseInt(ajaxConYear.value) != ajaxConYear.value){
				console.log(ajaxConYear.value);
				checkInt = true;		
				ajaxConYear.value = '';
				
			}
			
			if(parseInt(ajaxConWidth.value) != ajaxConWidth.value){
				console.log(ajaxConWidth.value);
				checkInt = true;
				ajaxConWidth.value = '';
			}
			
			if(parseInt(ajaxConHeight.value) != ajaxConHeight.value){
				console.log(ajaxConHeight.value);
				checkInt = true;
				ajaxConHeight.value = '';
			}
			
   			if(checkInt){
   				modalContent.innerText = '숫자를 입력해주세요';
   				modal.style.display = 'block';
   			}else if(document.querySelector('input[name="aucStartDate"]').value == '' || document.querySelector('input[name="aucFinishDate"]').value == ''){
   				modalContent.innerText = '달력에서 날짜를 선택해주세요';
   				modal.style.display = 'block';
   			}else{
   				$.ajax({
   					url:'insertAuction.adac',
   					type:'post',
   					data:{aucNo:document.querySelector('input[name="aucNo"]').value, aucStartPrice:ajaxConHope.value,
   						  aucStartDate:document.querySelector('input[name="aucStartDate"]').value, aucFinishDate:document.querySelector('input[name="aucFinishDate"]').value,
   						  conWidth:ajaxConWidth.value, conHeight:ajaxConHeight.value,conYear:ajaxConYear.value,conEtc:ajaxConEtc.value},
   					success: (data) =>{
   						console.log(document.querySelector('input[name="aucStartDate"]').value);
   						if(data == 'success'){
   							document.querySelector('input[name="aucStartDate"]').value = '';
	   	                    document.querySelector('input[name="aucFinishDate"]').value = '';
	   	                    enrollModal.style.display = 'none';
	   	                    alert('경매 등록에 성공하였습니다')
   						}else{
   							document.querySelector('input[name="aucStartDate"]').value = '';
   		                    document.querySelector('input[name="aucFinishDate"]').value = '';
   		                    enrollModal.style.display = 'none';
   		                 	alert('경매 등록에 실패하였습니다')
   						}
   					},
   					error: (data) => console.log(data)
   				})
   			}
   		})
   		
   		closeAuctionModal.addEventListener('click',function(){
   			document.querySelector('input[name="aucStartDate"]').value = '';
			document.querySelector('input[name="aucFinishDate"]').value = '';
   			enrollModal.style.display = 'none';
   		})
   		
   		closeAlertModal.addEventListener('click',function(){
   			modal.style.display = 'none';
   		})
   		
   		modal.style.display = 'none';
   		
   		startCalendar.style.display = 'none';
   		endCalendar.style.display = 'none';
   		
   		
   		//달력 닫기버튼에 닫힘 효과 부여
		
		closeStart.addEventListener('click', function(){
			startCalendar.style.display = 'none';
		});
		
		closeEnd.addEventListener('click', function(){
			endCalendar.style.display = 'none';
		});
		
		
		//처음 달력에 년,월 대입
		const year = new Date().getFullYear();
		const month = new Date().getMonth() +1;
		
		yearPlace.innerText = year;
		yearPlaceEnd.innerText = year;
		
		//10월 이하에는 0을 붙여서 넣어줌
		if(parseInt(month) < 10){
			monthPlace.innerText = "0" + month;
			monthPlaceEnd.innerText = "0" + month;
		}else{
			monthPlace.innerText = month;
			monthPlaceEnd.innerText = month;
		}
		
		
		
		//이전 이후 버튼으로 월 이동
		previous.addEventListener('click',function(){
			if(parseInt(monthPlace.innerText) > 10){
				monthPlace.innerText = parseInt(monthPlace.innerText) - 1;
			}else{
				monthPlace.innerText = "0" + (parseInt(monthPlace.innerText) - 1);
			}
			
			if(parseInt(monthPlace.innerText) == 0) {
				yearPlace.innerText = parseInt(yearPlace.innerText) - 1;
				monthPlace.innerText = 12;
			}
			changeYearMonth(document.getElementById("yearPlace").innerText, document.getElementById("monthPlace").innerText);
		})
		
		
		next.addEventListener('click',function(){
			if(parseInt(monthPlace.innerText) >= 9){
				monthPlace.innerText = parseInt(monthPlace.innerText) + 1;
			}else{
				monthPlace.innerText = "0" + (parseInt(monthPlace.innerText) + 1);
			}
			
			if(parseInt(monthPlace.innerText) == 13) {
				yearPlace.innerText = parseInt(yearPlace.innerText) + 1;
				monthPlace.innerText = '01';
			}
			changeYearMonth(document.getElementById("yearPlace").innerText, document.getElementById("monthPlace").innerText);
		})
		
		
		previousEnd.addEventListener('click',function(){
			if(parseInt(monthPlaceEnd.innerText) > 10){
				monthPlaceEnd.innerText = parseInt(monthPlaceEnd.innerText) - 1;
			}else{
				monthPlaceEnd.innerText = "0" + (parseInt(monthPlaceEnd.innerText) -1)
			}
			
			if(parseInt(monthPlaceEnd.innerText) == 0) {
				yearPlaceEnd.innerText = parseInt(yearPlaceEnd.innerText) - 1;
				monthPlaceEnd.innerText = 12;
			}
			changeYearMonth(document.getElementById("yearPlaceEnd").innerText, document.getElementById("monthPlaceEnd").innerText);
		})
		
		
		nextEnd.addEventListener('click',function(){
			if(parseInt(monthPlaceEnd.innerText) >= 9){
				monthPlaceEnd.innerText = parseInt(monthPlaceEnd.innerText) + 1;
			}else{
				monthPlaceEnd.innerText = "0" + (parseInt(monthPlaceEnd.innerText) + 1);
			}
			
			if(parseInt(monthPlaceEnd.innerText) == 13) {
				yearPlaceEnd.innerText = parseInt(yearPlaceEnd.innerText) + 1;
				monthPlaceEnd.innerText = '01';
			}
			changeYearMonth(document.getElementById("yearPlaceEnd").innerText, document.getElementById("monthPlaceEnd").innerText);
		})
		changeYearMonth(document.getElementById("yearPlace").innerText, document.getElementById("monthPlace").innerText);
		changeYearMonth(document.getElementById("yearPlaceEnd").innerText, document.getElementById("monthPlaceEnd").innerText);
		
		
		//달력 열때 이벤트 부여
		startDateCalendar.addEventListener('click', openStartCalendar);
		endDateCalendar.addEventListener('click', openEndCalendar);

		//1개의 달력이 열리면 다른 달력이 닫히게 부여와 동시에 td들에 이벤트부여
	    function openStartCalendar() {
	        startCalendar.style.display = 'block';
	        endCalendar.style.display = 'none';
	        document.getElementsByClassName("tb_body")[0].addEventListener('click', chooseStartDay);
	    }
	    
	    function openEndCalendar(){
	    	endCalendar.style.display = 'block';
	    	startCalendar.style.display = 'none';
	    	document.getElementsByClassName("tb_body")[1].addEventListener('click', chooseEndDay);
	    }
	
   
	    //td들에 이벤트부여 선택 td 색 변경 + 다른게 선택되면 취소 됨
    	function chooseStartDay (event) {
    		if (event.target.tagName === 'TD') {
 	            const targetDay = event.target;
 	            const allTds = document.querySelectorAll('.tb_body td');

 	            allTds.forEach(td => {
 	                if (td != targetDay) {
 	                    td.style.background = 'white';
 	                    td.style.color = 'black';
 	                }
 	            });

 	            if (targetDay.innerText != '') {
 	                targetDay.style.background = 'black';
 	                targetDay.style.color = 'white';
 	                selectStart(targetDay.innerText);
 	            }
 	        }
		}
    	
    	function chooseEndDay (event) {
    		if (event.target.tagName === 'TD') {
		        const targetDay = event.target;
		        const allTds = document.querySelectorAll('.tb_body td');

		        allTds.forEach(td => {
		            if (td != targetDay) {
		                td.style.background = 'white';
		                td.style.color = 'black';
		            }
		        });

		        if (targetDay.innerText != '') {
		            targetDay.style.background = 'black';
		            targetDay.style.color = 'white';
		            selectEnd(targetDay.innerText);
		        }
		    }
    	}
   	}
   	
	
	
	//위에서 선택받은 td의 정보를 받아와서 만약 1자리 숫자라고 한다면 0을 붙여준다
   	function selectStart(targetDay) {
   		if(parseInt(targetDay) < 10){
   			targetDay = "0" + targetDay;
   		}
   		const datePlace = document.querySelectorAll('span'); 
   		const dateInput = document.querySelectorAll('input');
   		const startCalendar = document.getElementById("startCalendar");
   		const selectStartBtn = document.getElementById("selectStart");
   		const modal = document.querySelector(".modal");
	 	const modalContent = document.getElementById("modal_h3");
   		
	 	
	 	
	 	function selectStartBtnEvent() {
	        if (dateInput[5].value != '') {
	            if (new Date(dateInput[5].value + " 23:59:59") > new Date(datePlace[29].innerText + "-" + datePlace[30].innerText + "-" + targetDay + " 00:00:00") && new Date(datePlace[29].innerText + "-" + datePlace[30].innerText + "-" + targetDay + " 00:00:00") > new Date()) {
	            	switch(true){
	            	case parseInt(datePlace[30].innerText) < 10 :
	            		dateInput[4].value = datePlace[29].innerText + "-" + datePlace[30].innerText + "-" + targetDay;
	            		break;
	            	default:
	            		dateInput[4].value = datePlace[29].innerText + "-" + datePlace[30].innerText + "-" + targetDay;
	            		break;
	            	}
	                startCalendar.style.display = 'none';
	            }else if(areDatesEqual(new Date(), new Date(datePlace[31].innerText + "-" + datePlace[32].innerText + "-" + targetDay))){
	            	modalContent.innerText = '금일은 시작일로 지정하실 수 없습니다';
	                modal.style.display = 'block';
	                
	            }else{
	            	modalContent.innerText = '시작일을 종료일보다 후일로 설정할 수 없습니다';
	                modal.style.display = 'block';
	            }
	        }else if (new Date(datePlace[29].innerText + "-" + datePlace[30].innerText + "-" + targetDay + "T00:00:00") < new Date()) {
	        	modalContent.innerText = '시작일을 금일보다 이전으로 설정할 수 없습니다';
                modal.style.display = 'block';
	        }else if(areDatesEqual(new Date(), new Date(datePlace[31].innerText + "-" + datePlace[32].innerText + "-" + targetDay))){
	        	modalContent.innerText = '금일은 시작일로 지정하실 수 없습니다';
                modal.style.display = 'block';
	        }else {
	        	switch(true){
            	case parseInt(datePlace[30].innerText) < 10 :
            		dateInput[4].value = datePlace[29].innerText + "-" + datePlace[30].innerText + "-" + targetDay;
            		break;
            	default:
            		dateInput[4].value = datePlace[29].innerText + "-" + datePlace[30].innerText + "-" + targetDay;
            		break;
            	}
	        	startCalendar.style.display = 'none';
	    	}
			selectStartBtn.removeEventListener('click', selectStartBtnEvent);
		}
   		selectStartBtn.addEventListener('click', selectStartBtnEvent); 
   	}
   	
   	function selectEnd(targetDay){
   		if(parseInt(targetDay) < 10){
   			targetDay = "0" + targetDay;
   		}
   		const datePlace = document.querySelectorAll('span');
   		const dateInput = document.querySelectorAll('input');
   		const endCalendar = document.getElementById("endCalendar");
   		const selectEndBtn = document.getElementById("selectEnd");
   		const modal = document.querySelector(".modal");
	 	const modalContent = document.getElementById("modal_h3");
   		
	 	function selectEndBtnEvent(){
   			if(dateInput[4].value != ''){
	    		if(new Date(dateInput[4].value + " 00:00:00") < new Date(datePlace[31].innerText + "-" + datePlace[32].innerText + "-" + targetDay + " 23:59:59")){
					dateInput[5].value = datePlace[31].innerText + "-" + datePlace[32].innerText + "-" + targetDay;
					endCalendar.style.display = 'none';
				}else if(areDatesEqual(new Date(), new Date(datePlace[31].innerText + "-" + datePlace[32].innerText + "-" + targetDay))){
    				modalContent.innerText = '금일은 종료일로 지정하실 수 없습니다';
		            modal.style.display = 'block';
    			}else{
					modalContent.innerText = '경매 종료일을 경매시작일보다 전으로 설정할 수 없습니다';
	                modal.style.display = 'block';
				}
   			}else{
   				if(areDatesEqual(new Date(), new Date(datePlace[31].innerText + "-" + datePlace[32].innerText + "-" + targetDay))){
   					modalContent.innerText = '금일은 종료일로 지정하실 수 없습니다';
	            	modal.style.display = 'block';
   				}else{
   					dateInput[5].value = datePlace[31].innerText + "-" + datePlace[32].innerText + "-" + targetDay;
					endCalendar.style.display = 'none';
   				}
   			}
   			selectEndBtn.removeEventListener('click', selectEndBtnEvent);
   		}
   		selectEndBtn.addEventListener('click', selectEndBtnEvent);
   	}
   	
   	
   	function areDatesEqual(currentDate, selectDate) {
   	    return (
   	    		currentDate.getDate() === selectDate.getDate() &&
   	    		currentDate.getMonth() === selectDate.getMonth() &&
   	    		currentDate.getFullYear() === selectDate.getFullYear()
   	    );
   	}
   	
   	/* 달력 */
   	function checkLeapYear(selectYear){
		if(selectYear%400 == 0){
			return true;
		}else if(selectYear%100 == 0){
			return false;
		}else if(selectYear%4 == 0){
			return true;
		}else{
			return false;
		}
	}
	
	function getFirstDay(selectYear, selectMonth){
		if(selectMonth < 10){
			selectMonth = "0" + selectMonth;	
		}
		
		return (new Date(selectYear+ "-" + selectMonth + "-01").getDay());
	}
	
	
	function changeYearMonth(selectYear, selectMonth){
		let month_day = [31,28,31,30,31,30,31,31,30,31,30,31];
		if(selectMonth == 2){
			if(checkLeapYear(selectYear)) {
				month_day[1] = 29;
			}
		}
		
		let first_day_of_week = getFirstDay(selectYear, selectMonth);
		let arr_calendar = [];
	
		for(let i =0; i< first_day_of_week; i++){
			arr_calendar.push("");
		}
		
		for(let i = 1; i <= month_day[selectMonth-1]; i++){
			arr_calendar.push(String(i))
		}
		
		let remain_day = 7 - (arr_calendar.length%7);
		
		if(remain_day < 7) {
			for(let i =0; i < remain_day; i++){
				arr_calendar.push("");
			}
		}
		
		renderCalendar(arr_calendar);
	}
	
	function renderCalendar(data) {
		let h = [];
		for(let i = 0; i < data.length; i++){
			if(i == 0) {
				 h.push('<tr>');
			}else if(i%7 == 0){
				h.push('</tr>');
				h.push('<tr>');
			}
			h.push('<td>' + data[i] + '</td>');
		}
		
		h.push('</tr>');
		
		document.getElementsByClassName("tb_body")[0].innerHTML = h.join("");
		document.getElementsByClassName("tb_body")[1].innerHTML = h.join("");
	}
	/*  */
	/*  */
	/*  */
	
	
	<!-- 상세보기로 이동 -->
	const userDetail = (conNo) =>{												
		location.href="selectUser.adco?conNo=" + conNo + "&page=" + ${pi.currentPage};
	}

    <!-- 전체선택 / 해제 -->
		conNo =[];
		<!-- 체크박스 선택 -->
		const check1 = () =>{
			const checkboxes = document.querySelectorAll('input[name="check"]');       // 전체 체크박스들
            const checked = document.querySelectorAll('input[name="check"]:checked')   // 선택된 체크박스
            const checkAll = document.querySelector('input[name="checkAll"]');         // 전체선택 박스
          
         	for(i=0; i < checked.length; i++){
            
          	}
          
          	if(checkboxes.length == checked.length){                           // 체크박스 전체개수 = 선택된 체크박스
            	checkAll.checked = true;
          	} else {
            	checkAll.checked = false;
          	}
        }
       	<!-- 전체 선택 -->
      	const checkAll1 = () =>{
        	const checkboxes = document.querySelectorAll("input[type=checkbox]");
         	for(let i=1; i<checkboxes.length; i++){
           		checkboxes[i].checked = checkboxes[0].checked;                     // 배열 갯수만큼 체크된 체크박스 = 전체선택 박스
            }
        } 
      	<!-- 선택 삭제 -->
      	const minus = () =>{
        	const checkboxes = document.querySelectorAll("input[name='check']:checked");
            const deleteIds = [];
           
            for(i=0; i<checkboxes.length; i++){
               deleteIds[i] = checkboxes[i].id;
               console.log(deleteIds[i]);
            }
            if(deleteIds.length != 0){
               location.href = "checkDelete.adco?deleteIds="+deleteIds;
            }
      };     
</script>
</head>

<body>
<jsp:include page="../common/header.jsp"/>
  <main class="th-layout-main ">
    <!-- [S]hooms-N48 -->
    <div class="hooms-N48" data-bid="no2CLZNtZF5">
      <div class="contents-inner" style="padding: 6rem 2.4rem 10rem;">
        <div class="contents-container container-md">
          <div class="textset">
            <a class="textset-tit">관리자(위탁 문의 내역)</a>
            <br><br>
            <div class="date-box">
              <div class="date">
             	<form action="searchList.adco" class="searchForm">
	                <span><a>조회 기간</a></span>
	                <span>
					  <input type="date" class="con_startdate">
					</span>
					~
					<span>
					  <input type="date" class="con_enddate" style="margin-left:20px;">
					</span>
	                <span>
	                  <a>검색어</a>
	                  <select style="width: 5%; height: 3rem;" name="select">
	                    <option>전체</option>
	                    <option>작가명</option>
	                    <option>작품명</option>
	                  </select>
	                  <input type="text" class="inputText" value="" placeholder="작가명/작품명" name="keyword" aria-label="내용" style="width: 10%;">
	                </span>
	                <span><button type="submit" class="admsearch">검색</button></span>
	                <span><button type="reset" class="admcancel">초기화</button></span>
	             </form>   
              </div>
            </div>
            <br><br>
          </div>
          <form action="list.adco" method="post" class="listForm">
	          <div class="tableset">
	            <table class="tableset-table table">
	              <colgroup>
	                <col>
	                <col>
	                <col>
	                <col>
	                <col>
	                <col>
	                <col>
	              </colgroup>
	              <thead class="thead-light thead-border-top">
	                <tr>
	                  <th scope="col">
	                    <input id="checkset-b-1-1" class="checkset-input input-fill" type="checkbox" id="checkAll" name="checkAll" onclick="checkAll1()">
	                  </th>
	                  <th scope="col">회원아이디</th>
	                  <th scope="col">작가명</th>
	                  <th scope="col">작품명</th>
	                  <th scope="col">작품의 크기</th>
	                  <th scope="col">희망가</th>
	                  <th scope="col">삭제여부</th>
	                  <th scope="col">열람여부</th>
	                  <th scope="col">승인여부</th>
	                </tr>
	              </thead>
	              <tbody>
		             <c:forEach items="${list}" var="c"> 
		                <tr>
		                  <td class="tableset-mobile"   onclick="javascript:event.stopPropagation();">
		                   <!-- <input id="checkset-b-1-1" class="checkset-input input-fill" type="checkbox" name="check" onclick="check1()">	-->
		                    <input id="${c.conNo}" class="checkset-input input-fill" type="checkbox" name="check" onclick="check1()">
		                  </td>
		                  <td class="tableset-tit tableset-order02" style="text-align: center;">
		                    <a href="javascript:void(0)">
		                      <span>${c.memId}</span>
		                    </a>
		                  </td>
		                  <td class="tableset-order05">${ c.conAuthor }</td>
		                  <td class="tableset-order05">${ c.conProduct }</td>
		                  <td class="tableset-order05">${ c.conWidth }*${ c.conHeight }cm</td>
		                  <td class="tableset-order05">${ c.conHope }</td>

		                  
		                  <c:if test="${ c.conDelStatus == 'Y' }">
		                  	<td class="tableset-order05">Y</td>
		                  </c:if>
		                  <c:if test="${ c.conDelStatus == 'N' }">
		                  	<td class="tableset-order05">N</td>
		                  </c:if>
		                  

		                  
		                  <c:if test="${ c.conAdmStatus == 'N'}">
			                  <td class="tableset-order05">N</td>
		                  </c:if>
		                  <c:if test="${ c.conAdmStatus == 'Y'}">
			                  <td class="tableset-order05">Y</td>
		                  </c:if>
		                  
		                  
		                  <c:if test="${c.conConStatus == 'N'}">
			                  <td class="tableset-order01">
			                   <div class="badgeset badgeset-active" style="width:45%; display: inline-block;">
			                    	<intput type="button">수락	
			                    </div>
			                    <div class="badgeset" style="width:45%; display: inline-block; background: gray;">
			                    	거절
			                    </div> 
			                  </td>
		                  </c:if>
						  <c:if test="${c.conConStatus == 'Y'}">
						  	<c:if test="">
						  	  <td>진행중</td>	
						  	</c:if>
						  	<c:if test="">
						  	  <td>예정</td>	
						  	</c:if>
						  	<c:if test="">
						  	  <td>종료</td>	
						  	</c:if>
						  </c:if>
		                  
		                  
		                  <td><input type="hidden" value="${ c.conNo }" name="conNo"></td>
		                </tr>
	                </c:forEach>
	              </tbody>
	            </table>
	            <input class="btnset btnset-lg" value="선택 삭제" type="button" id="deleteBtn();" name="deleteBtn" onclick="minus()">
	          </div>
	        </form>
        </div>
        
        <br><br><br>
        
		<nav class="pagiset pagiset-line">
			<c:if test="${ pi.currentPage <= 1 }">
			   <div class="pagiset-ctrl">
			      <a class="pagiset-link pagiset-first"> <span
			         class="visually-hidden">처음</span>
			      </a>
			   </div>
			   <div class="pagiset-ctrl">
			      <a class="pagiset-link pagiset-prev"> <span
			         class="visually-hidden">이전</span>
			      </a>
			   </div>
			</c:if>
			<c:if test="${ pi.currentPage > 1 }">
			   <div class="pagiset-ctrl">
			      <c:url var="goFirst" value="${ loc }">
			         <c:param name="page" value="${ pi.startPage }"></c:param>
			      </c:url>
			      <a class="pagiset-link pagiset-first" href="${ goFirst }">
			         <span class="visually-hidden">처음</span>
			      </a>
			   </div>
			   <div class="pagiset-ctrl">
			      <c:url var="goBack" value="${ loc }">
			         <c:param name="page" value="${ pi.currentPage-1 }"></c:param>
			      </c:url>
			      <a class="pagiset-link pagiset-prev" href="${ goBack }"> <span
			         class="visually-hidden">이전</span>
			      </a>
			   </div>
			</c:if>
			<div class="pagiset-list">
			   <c:forEach begin="${ pi.startPage }" end="${ pi.endPage }"
			      var="p">
			      <c:url var="goNum" value="${ loc }">
			         <c:param name="page" value="${ p }"></c:param>
			      </c:url>
			      <c:choose>
			         <c:when test="${p eq pi.currentPage}">
			            <a class="pagiset-link active-fill" href="${ goNum }">${ p }</a>
			         </c:when>
			         <c:otherwise>
			            <a class="pagiset-link" href="${ goNum }">${ p }</a>
			         </c:otherwise>
			      </c:choose>
			   </c:forEach>
			</div>
			
			<c:if test="${ pi.currentPage >= pi.maxPage }">
			   <div class="pagiset-ctrl">
			      <a class="pagiset-link pagiset-next"> <span
			         class="visually-hidden">다음</span>
			      </a>
			   </div>
			   <div class="pagiset-ctrl">
			      <a class="pagiset-link pagiset-last"> <span
			         class="visually-hidden">마지막</span>
			      </a>
			   </div>
			</c:if>
			<c:if test="${ pi.currentPage < pi.maxPage }">
			   <div class="pagiset-ctrl">
			      <c:url var="goNext" value="${ loc }">
			         <c:param name="page" value="${ pi.currentPage+1 }"></c:param>
			      </c:url>
			      <a class="pagiset-link pagiset-next" href="${ goNext }"> <span
			         class="visually-hidden">다음</span>
			      </a>
			   </div>
			   <div class="pagiset-ctrl">
			      <c:url var="goList" value="${ loc }">
			         <c:param name="page" value="${ pi.maxPage }"></c:param>
			      </c:url>
			      <a class="pagiset-link pagiset-last" href="${ goList }"> <span
			         class="visually-hidden">마지막</span>
			      </a>
			   </div>
			</c:if>
		</nav>     

      </div>
    </div>
    <!-- [E]hooms-N48 -->
  </main>
<jsp:include page="../common/footer.jsp"/>    
  
  <script src="consignment/js/setting.js"></script>
  <script src="consignment/js/plugin.js"></script>
  <script src="consignment/js/template.js"></script>
  <script src="consignment/js/common.js"></script>
  <script src="consignment/js/script.js"></script>
</body>
</html>