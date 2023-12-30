<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <div id="content-allOver-cover" style="width: 70%; height: 70%; margin:auto;">
        <div id="forWidthAndHeight" style="width: 70%; height: 100%; margin: auto; background-color: pink; margin-top: 1%; display:table;">
        	<form action="insertAuction.adac" method="post">
	            <div style="margin-left: 5%;">경매 등록 페이지</div>
	            <div id="workNamePlace" style="margin-left: 5%; width: 100%;">작품명 <input type="text" readonly style="width: 80%;" name="conProduct" value="${ consignment.conAuthor }"></div>
	            <div id="artistNamePlace" style="margin-left: 5%; width: 100%;">작가명 <input type="text" readonly style="width: 80%;" name="conAuthor" value="${ consignment.conProduct }"></div>
	            <div id="startMoney" style="margin-left: 5%; width: 100%;">시작가 <input type="number" style="width: 80%;" name="aucStartPrice" value="${ consignment.conHope }"></div>
	            <div id="startDate" style="margin-left: 5%; width: 40%; display: inline-block;">
	            	경매 시작일 <input type="text" name="aucStartDate" style="width:50%"><button type="button" style="position: absolute;" id="startDateCalendar">달력</button>
	            	<div id="calendar"style="border:1px black solid; z-index:1; background:white; width:30%">
	            		<div style="text-align: center;">
	            			<div style="float:left; width: 8%; display:inline-block;"><button id="previous" type="button" style="width:100%; background:white; border:0;">&lt;</button></div>
	            			<span id="yearPlace"></span>년 <span id="monthPlace"></span>월
	            			<div style="float:right; width: 8%; display:inline-block;"><button id="next" type="button" style="width:100%; background:white; border:0;">&gt;</button></div>
	            		</div>
	            		<div style="margin-top:2%;">
	            			<div style="width:6.5%; margin: 0 3% 0 6.5%; display: inline-block;">월</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">화</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">수</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">목</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">금</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">토</div>
	            			<div style="width:6.5%; margin: 0 0% 0 3%; display: inline-block;">일</div>
	            		</div>
	            		<div>
	            			<div style="width:6.5%; margin: 0 3% 0 6.5%; display: inline-block;">월</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">화</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">수</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">목</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">금</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">토</div>
	            			<div style="width:6.5%; margin: 0 3% 0 3%; display: inline-block;">일</div>
	            		</div>
	            		<div style="text-align: right;">
	            			<button type="button" id="closeStart">닫기</button>
	            		</div>
	            	</div>
	            </div>
	            <div id="endDate" style="width: 40%; float: right; margin-right:5%;">
	            	경매 종료일<input type="text" name="aucFinishDate" style="width:50%;"><button type="button" id="endDateCalendar">달력</button>
	            </div>
	            <div style="margin-left: 5%; width: 40%; display: inline-block;">제작 년도<input type="number" name="conYear" value="${ consignment.conYear }"></div>
	            <div style="width: 100%;">
	            	<div style="margin-left: 5%; width: 40%; display:inline-block;">가로길이<input type="number" name="conWidth" value="${ consignment.conWidth }"></div>
	            	<div style="margin-left: 5%; width: 40%; display:inline-block;">세로길이<input type="number" name="conHeight" value="${ consignment.conHeight }"></div>
	            </div>
	            <div id="explainPlace" style="margin-left: 5%;">
	                <span>작품 설명</span><br>
	                <textarea style="width: 91%; resize: none;" name="conEtc">${ consignment.conEtc }</textarea>
	            </div>
	            <div style="margin-left: 5%; width: 100%;">
	            	<div style="width:25%; display:inline-block; margin-right: 3.125%;">대표 사진<br><img src="image/치즈 냥이.jpg" style="width:100%; height:100%;"></div>
	            	<div style="width:25%; display:inline-block; margin-right: 3.125%; margin-left: 3.125%;">전면 사진<br><img src="image/치즈 냥이.jpg" style="width:100%; height:100%;"></div>
	            	<div style="width:25%; display:inline-block; margin-left: 3.125%;">후면 사진<br><img src="image/치즈 냥이.jpg" style="width:100%; height:100%;"></div>
	            </div>
	            <div style="width: 100%; text-align: right;">
	            	<button style=" margin-right: 8%;">등록</button>
	            </div>
	            <input type="hidden" name="aucNo" value="33">
            </form>
        </div>
    </div>
  	<jsp:include page="../common/footer.jsp"/>
  	
  	
  	<script>
    	window.onload = () =>{
    		const calendar = document.getElementById("calendar");
    		const startDateCalendar = document.getElementById("startDateCalendar");
    		const endDateCalendar = document.getElementById("endDateCalender");
    		const closeStart = document.getElementById("closeStart");
    		const YearPlace = document.getElementById("yearPlace");
    		const monthPlace = document.getElementById("monthPlace");
    		const previous = document.getElementById("previous");
    		const next = document.getElementById("next");
    		calendar.style.display = 'none';
    		
			startDateCalendar.addEventListener('click',function(){
				calendar.style.position = 'absolute';
				calendar.style.display = 'block';
			});
			closeStart.addEventListener('click', function(){
				calendar.style.display = 'none';
			});
			const year = new Date().getFullYear();
			const month = new Date().getMonth() +1;
			const date = new Date().getDate();
			const day = new Date().getDay();
			
			
			yearPlace.innerText = year;
			monthPlace.innerText = month
			
			previous.addEventListener('click',function(){ // 달력 만들기 누르면 숫자 +1 로하는거 생성
				console.log(1);
				monthPlace.innerText = month + 1;
				if(monthPlace.innerText == '13'){
					yearPlace.innertText = year +1;
				}
			})
			
    	}
    </script>
</body>
</html>