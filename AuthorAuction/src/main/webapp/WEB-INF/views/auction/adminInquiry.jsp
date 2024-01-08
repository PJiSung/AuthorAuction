<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
table {
	width: 100%;
}

th {
	padding: 0 0 0 5%;
}

td {
	text-align: center;
	height: 35px;
}


.calendar{
	display:none;
}

</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<form action="search.adac" method="get">
	    <div id="coverAll" style="width: 100%; height: 100%;">
	    
	        <div style="width: 70%; height: 100%; margin: auto; margin-top: 1%; border: 1px black solid; padding: 1% 0 1% 0;">
	        	<div style="width: 4.5%; display: inline-block; margin-left: 3%;">
	                <input type="checkBox" id="all"><label for="all">전체</label>
	            </div>
	            <div style="width: 10%; display: inline-block; margin-left: 3%;">
	                <input type="checkBox" class="auctionStatus" value="scheduled" name="scheduled" id="scheduled" onclick="allCheck(this);"><label for="scheduled">진행 예정 경매</label>
	            </div>
	            <div style="width: 10%; display: inline-block; margin-left: 3%;">
	                <input type="checkBox" class="auctionStatus" value="ongoing" name="ongoing" id="ongoing" onclick="allCheck(this);"><label for="ongoing">진행 중인 경매</label>
	            </div>
	            <div style="width: 10%; display: inline-block; margin-left: 3%;">
	                <input type="checkBox" class="auctionStatus" value="end" name="end" id="end" onclick="allCheck(this);"><label for="end">종료된 경매</label>
	            </div>
	            <div style="width: 35%; display: inline-block; float:right;">
	                <select name="searchType">
	                    <option value="all">---------</option>
	                    <option value="author">작가명</option>
	                    <option value="work">작품명</option>
	                </select>
	                <input type="text" id="content" name="content"><button>검색</button>
	            </div>
	            <div style="margin-left: 3%;">
	                <input type="checkbox" id="auctionTerm" onclick="openPeriod(this);"> <label for="auctionTerm">경매 기간</label>
	            </div>
	        </div>
	        <div id="checkAuctionPeriod" style="width: 70%; height: 100%; margin: auto; margin-top: 1%; border: 1px black solid; padding: 1% 0 1% 0; display: none;">
	            <span style="margin-left: 3%;">기간검색</span>
	            <div style="margin-left: 3%;">
	                <div style="margin-top:2%; margin-bottom:1%;">
	                    경매 시작일 
	                    <button type="button" onclick="openCalendar(this);">달력</button> <input type="text" name="aucSS" readonly>
	                    <!-- 시작/시작 달력 -->
	                    <div id="startFirstCalendar" class="calendar"
							style="border: 1px black solid; background: white; width: 30%; position: absolute;">
							<div style="text-align: center;">
								<div style="float: left; width: 8%; display: inline-block;">
									<button class="previous" type="button"
										style="width: 100%; background: white; border: 0;">&lt;</button>
								</div>
								<span class="yearPlace"></span>년 <span class="monthPlace"></span>월
								<div style="float: right; width: 8%; display: inline-block;">
									<button class="next" type="button"
										style="width: 100%; background: white; border: 0;">&gt;</button>
								</div>
							</div>
							<table>
								<thead>
									<tr>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
										<th>일</th>
									</tr>
								</thead>
								<tbody class="tb_body"></tbody>
							</table>
							<div style="text-align: right;">
								<button type="button" class="select">선택</button>
								<button type="button" class="close">닫기</button>
							</div>
						</div> 
						<!-- 시작/시작 끝 -->
	                    ~ 
	                    <button type="button" onclick="openCalendar(this);">달력</button> <input type="text" name="aucSE" readonly>
	                    <!-- 시작/끝 시작 -->
	                    <div id="startSecondCalendar" class="calendar"
							style="border: 1px black solid; background: white; width: 30%; position: absolute;">
							<div style="text-align: center;">
								<div style="float: left; width: 8%; display: inline-block;">
									<button class="previous" type="button"
										style="width: 100%; background: white; border: 0;">&lt;</button>
								</div>
								<span class="yearPlace"></span>년 <span class="monthPlace"></span>월
								<div style="float: right; width: 8%; display: inline-block;">
									<button class="next" type="button"
										style="width: 100%; background: white; border: 0;">&gt;</button>
								</div>
							</div>
							<table>
								<thead>
									<tr>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
										<th>일</th>
									</tr>
								</thead>
								<tbody class="tb_body"></tbody>
							</table>
							<div style="text-align: right;">
								<button type="button" class="select">선택</button>
								<button type="button" class="close">닫기</button>
							</div>
						</div>
	                    <!-- 시작/끝 끝 -->
	                </div>
	                <div style="display:inline-block; width:89%; margin-top:1%; margin-bottom:2%;">
	                    경매 종료일 <button type="button" onclick="openCalendar(this);">달력</button> <input type="text" name="aucFS" readonly>
	                    <!-- 끝/시작 시작 -->
	                    <div id="endFirstCalendar" class="calendar"
							style="border: 1px black solid; background: white; width: 30%; position: absolute;">
							<div style="text-align: center;">
								<div style="float: left; width: 8%; display: inline-block;">
									<button class="previous" type="button"
										style="width: 100%; background: white; border: 0;">&lt;</button>
								</div>
								<span class="yearPlace"></span>년 <span class="monthPlace"></span>월
								<div style="float: right; width: 8%; display: inline-block;">
									<button class="next" type="button"
										style="width: 100%; background: white; border: 0;">&gt;</button>
								</div>
							</div>
							<table>
								<thead>
									<tr>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
										<th>일</th>
									</tr>
								</thead>
								<tbody class="tb_body"></tbody>
							</table>
							<div style="text-align: right;">
								<button type="button" class="select">선택</button>
								<button type="button" class="close">닫기</button>
							</div>
						</div>
	                    <!-- 끝/시작 끝 -->
	                     ~ 
	                     <button type="button" onclick="openCalendar(this);">달력</button> <input type="text" name="aucFE" readonly>
	                     <!-- 끝/끝 시작 -->
	                     <div id="endSecondCalendar" class="calendar"
							style="border: 1px black solid; background: white; width: 30%; position: absolute;">
							<div style="text-align: center;">
								<div style="float: left; width: 8%; display: inline-block;">
									<button class="previous" type="button"
										style="width: 100%; background: white; border: 0;">&lt;</button>
								</div>
								<span class="yearPlace"></span>년 <span class="monthPlace"></span>월
								<div style="float: right; width: 8%; display: inline-block;">
									<button class="next" type="button"
										style="width: 100%; background: white; border: 0;">&gt;</button>
								</div>
							</div>
							<table>
								<thead>
									<tr>
										<th>월</th>
										<th>화</th>
										<th>수</th>
										<th>목</th>
										<th>금</th>
										<th>토</th>
										<th>일</th>
									</tr>
								</thead>
								<tbody class="tb_body"></tbody>
							</table>
							<div style="text-align: right;">
								<button type="button" class="select">선택</button>
								<button type="button" class="close">닫기</button>
							</div>
						</div>
	                     <!-- 끝/끝 끝 -->
	                </div>
	                <span style="display:inline-block;"><button type="button" id="reset" onclick="resetCalendar();">달력 초기화</button></span>
	            </div>
	        </div>
	        
	        <div style="width: 70%;  margin: auto; margin-top: 2%; margin-bottom: 2%;">
	        	<div style="margin-bottom: 1%"><span>총 경매</span>&nbsp; ${ total } 개</div>
	            <div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-top: 1px black solid; border-bottom: 1px black solid;">
	                <div style="width: 14%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;">경매 번호</div>
	                <div style="width: 14%; display: inline-block;">작품 사진</div>
	                <div style="width: 14%; display: inline-block;">작가 명</div>
	                <div style="width: 14%; display: inline-block;">작품 명</div>
	                <div style="width: 14%; display: inline-block;">경매 기간</div>
	                <div style="width: 14%; display: inline-block;">경매 상황</div>
	                <div style="width: 14%; display: inline-block;">입찰 금액</div>
	            </div>
	            <c:forEach items="${ aList }" var="auction">
		            <div class="auction" style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-bottom: 1px black solid; cursor:pointer;">
						<div style="width: 14%; display: inline-block; ">${ auction.aucNo }</div>
		                <div style="width: 14%; height: 100%; display: inline-block;">
		                    <img src="${ auction.attRename }" style="height: 100px; width: 100px; margin: 3% 0 3% 0;">
		                </div>
		                <div style="width: 14%; display: inline-block;">${ auction.conAuthor }</div>
		                <div style="width: 14%; display: inline-block;">${ auction.conProduct }</div>
		                <div style="width: 14%; display: inline-block;">시작일 : ${ fn:split(auction.aucStartDate, ' ')[0] }<br>종료일 : ${ fn:split(auction.aucFinishDate, ' ')[0] }</div>
		               
		                <c:set var="startDateVar" value="${auction.aucStartDate}" />
						<c:set var="endDateVar" value="${auction.aucFinishDate}" />

						<%
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

						Date startDate = dateFormat.parse((String) pageContext.getAttribute("startDateVar"));
						Date endDate = dateFormat.parse((String) pageContext.getAttribute("endDateVar"));

						pageContext.setAttribute("startDate", dateFormat.format(startDate));
						pageContext.setAttribute("endDate", dateFormat.format(endDate));
						%>

						<c:choose>
							<c:when test="${today.before(startDate)}">
								<div style="width: 14%; display: inline-block; height: 100px;">
									예정 경매
								</div>
							</c:when>
							<c:when test="${today.after(endDate)}">
								<div style="width: 14%; display: inline-block; height: 100px; padding-top: 1.5%;">
									종료 경매
								</div>
							</c:when>
							<c:otherwise>
								<div
									style="width: 14%; display: inline-block; height: 100px; padding-top: 3.5%;">
									진행 경매
								</div>
							</c:otherwise>
						</c:choose>
		                <div style="width: 14%; display: inline-block;"><fmt:formatNumber value="${ auction.aucFinishPrice }"/> 원</div>	 
	                </div>           
	            </c:forEach>
	        </div>
	    </div>
    </form>
	
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




    <jsp:include page="../common/footer.jsp"/>
    
    <script>
		window.onload = () =>{
			console.log(document.querySelectorAll("input[type='text']"));
			
			
			const checkAuctionPeriod = document.getElementById("checkAuctionPeriod");
			const auction = document.querySelectorAll("div[class='auction']");
			const monthPlace = document.querySelectorAll("span[class='monthPlace']");
			const yearPlace = document.querySelectorAll("span[class='yearPlace']");
			console.log(document.querySelectorAll("input[type='text']"));
			
			//체크박스 컨트롤
			document.querySelector("input[id='all']").addEventListener('click',function(){
				if(this.checked){
					for(const checkBox of document.querySelectorAll("input[class='auctionStatus']")){
						checkBox.checked = true;
					}
				}else{
					for(const checkBox of document.querySelectorAll("input[class='auctionStatus']")){
						checkBox.checked = false;
					}
				}
			})
			
			
			for(const closeBtn of document.querySelectorAll("button[class='close']")){
				closeBtn.addEventListener('click',function(){
					closeBtn.parentElement.parentElement.style.display = 'none';
				})
			}
			
			
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
			
			const year = new Date().getFullYear();
			const month = new Date().getMonth() +1;
			
			
			for(const yearSelect of yearPlace){
				yearSelect.innerText = year;
			}
			
			if(parseInt(month) < 10){
				for(const monthSelect of monthPlace){
					monthSelect.innerText = "0" + month;	
				}
			}else{
				for(const monthSelect of monthPlace){
					monthSelect.innerText = month;	
				}
			}
			
			
			
			
			for (let i = 0; i < monthPlace.length; i++) {
				changeYearMonth(yearPlace[i].innerText, monthPlace[i].innerText);
				
			    let currentIndex = i;

			    document.querySelectorAll("button[class='previous']")[currentIndex].addEventListener('click', function () {
			        if (parseInt(monthPlace[currentIndex].innerText) > 10) {
			            monthPlace[currentIndex].innerText = parseInt(monthPlace[currentIndex].innerText) - 1;
			        } else {
			            monthPlace[currentIndex].innerText = "0" + (parseInt(monthPlace[currentIndex].innerText) - 1);
			        }

			        if (parseInt(monthPlace[currentIndex].innerText) == 0) {
			            yearPlace[currentIndex].innerText = parseInt(yearPlace[currentIndex].innerText) - 1;
			            monthPlace[currentIndex].innerText = 12;
			        }
			        changeYearMonth(yearPlace[currentIndex].innerText, monthPlace[currentIndex].innerText);
			    });

			    document.querySelectorAll("button[class='next']")[currentIndex].addEventListener('click', function () {
			        if (parseInt(monthPlace[currentIndex].innerText) >= 9) {
			            monthPlace[currentIndex].innerText = parseInt(monthPlace[currentIndex].innerText) + 1;
			        } else {
			            monthPlace[currentIndex].innerText = "0" + (parseInt(monthPlace[currentIndex].innerText) + 1);
			        }

			        if (parseInt(monthPlace[currentIndex].innerText) == 13) {
			            yearPlace[currentIndex].innerText = parseInt(yearPlace[currentIndex].innerText) + 1;
			            monthPlace[currentIndex].innerText = '01';
			        }
			        changeYearMonth(yearPlace[currentIndex].innerText, monthPlace[currentIndex].innerText);
			    });
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
				document.getElementsByClassName("tb_body")[2].innerHTML = h.join("");
				document.getElementsByClassName("tb_body")[3].innerHTML = h.join("");
			}
		}
		
		////////////////////////////////
		////////////////////////////////
		////////////////////////////////
		////////////////////////////////
		////////////////////////////////
		
		const resetCalendar = () =>{
				for(let i = 2; i < document.querySelectorAll("input[type='text']").length; i++){
					 document.querySelectorAll("input[type='text']")[i].value= "";
				}
			}
		
		
		const openPeriod = (data) =>{
			if(data.checked){
				document.getElementById("checkAuctionPeriod").style.display="block";
			}else{
				document.getElementById("checkAuctionPeriod").style.display='none';
			}
		}
		
		
		const allCheck = (data) =>{
			let checkCount = 0;
			if(event.target.checked){
				for(const checkBox of document.querySelectorAll("input[class='auctionStatus']")){
					if(checkBox.checked){
						checkCount++;
					}
				}
			}
			if(checkCount == document.querySelectorAll("input[class='auctionStatus']").length){
				document.querySelector("input[id='all']").checked = true;
			}else{
				document.querySelector("input[id='all']").checked = false;
			}
		}
		
		for(const td of document.getElementsByClassName("tb_body")){
			td.addEventListener('click', chooseDay);
		}
		//달력 선택 이벤트 추가해야됨
		
		function openCalendar(data){
			for(const calendars of document.querySelectorAll("div[class='calendar']")){
				if(calendars == data.nextElementSibling.nextElementSibling){
					data.nextElementSibling.nextElementSibling.querySelector("tbody[class='tb_body']").addEventListener('click',chooseDay);
					calendars.style.display='block';
				}else{
					calendars.style.display='none';
				}
			}
			
		}
		
		function chooseDay (event) {
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
 	                selectDay(targetDay.innerText);
 	            }
 	        }
		}
		
		
		function selectDay(targetDay) {
	   		if(parseInt(targetDay) < 10){
	   			targetDay = "0" + targetDay;
	   		}
	   		
	   		for(const selectBtn of document.querySelectorAll('button[class="select"]')){
	   			selectBtn.addEventListener('click',function(){
	   				event.target.parentElement.parentElement.previousElementSibling.value = event.target.parentElement.parentElement.querySelectorAll("span")[0].innerText + "-" + event.target.parentElement.parentElement.querySelectorAll("span")[1].innerText + "-" + targetDay;
	   				event.target.parentElement.parentElement.style.display = 'none';
	   			})
	   		}
		}
	</script>
</body>


</html>