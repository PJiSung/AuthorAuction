<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<style type="text/css">
	.seeWhich{
		 width: 9%; display: inline-block; text-align: center; padding: 1%;
	}
	
	#frame{
		width: 100%;
		height: 100%;
		display: flex;
		align-items: center;
		justify-content: center;
		text-align: center;
		border-top: 1px black solid;
		border-bottom: 1px black solid;
		background: lightgray;
	}
	
	.firstLine{
		width:14%;
		margin: 1% 0 1% 0;
	}
	
	.auction{
		width: 100%;
		height: 110px;
		border-bottom: 1px black solid;
		display: flex;
		align-items: center;
		justify-content: center; 
		text-align: center;
		cursor:pointer;
	}
	
	.checkZone{
		width: 14%;
		display: inline-block;
		height: 100px;
		padding-top: 2%;
	}
	
	#term{
		width: 14%;
		display: inline-block;
		height: 100px;
		padding-top: 1.5%;
	}
	
	.detailInfo{
		width: 14%;
		display: inline-block;
		height: 110px;
		padding-top: 2%;
	}
	
	#deleteBtnPlace{
		width: 100%;
		height: 100%; 
		text-align: right;
		margin-top: 1%;
	}
</style>

</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<div id="content-allOver-cover" style="width: 100%; height: 100%;">
		<div id="divine" style="width: 100%; height: 100%;">
			<div id="headline" style="width: 70%; height: 100%; margin: auto;">
				<div
					style="width: 100%; margin-top: 5%; margin-bottom: 5%; font-size: x-large; font-weight: 1000;">관심
					경매 목록</div>
				<div id="btnPlace" style="width: 100%;">
					<div class="seeWhich"
						style="background: gray;"
						onclick="chooseAuction('all');">전체 보기</div>
					<div class="seeWhich"
						style="background: lightgray"
						id="scheduled" onclick="chooseAuction('scheduled');">예정 경매</div>
					<div class="seeWhich"
						style="background: lightgray;"
						id="ongoing" onclick="chooseAuction('ongoing');">진행 경매</div>
					<div class="seeWhich"
						style="background: lightgray;"
						id="end" onclick="chooseAuction('end');">종료 경매</div>
				</div>
				<div id="frame">
					<div class="firstLine">
						<input type="checkbox" id="allCheck" name="allCheck" onclick="allCheck(this);">
						<label for="allCheck">전체 선택</label>
					</div>
					<div class="firstLine">경매 번호</div>
					<div class="firstLine">작품 사진</div>
					<div class="firstLine">작가 명</div>
					<div class="firstLine">작품 명</div>
					<div class="firstLine">경매 기간</div>
					<div class="firstLine">경매 현황</div>
				</div>


				<c:if test="${ empty aList }">
					<div class="auction">
						<h1>조회 가능한 데이터가 없습니다</h1>
					</div>
				</c:if>

				<%-- ${ aList } --%>
				<c:forEach items="${ aList }" var="auction">
					<div id="new">
					<div class="auction" onclick="moveAuction(${auction.aucNo});">
						<div class="checkZone">
							<input type="checkbox" class="eachCheck" onclick="eachCheckForAll();">
						</div>
						<div class="detailInfo">${ auction.aucNo }</div>
						<div class="detailInfo" style="padding-top: 0.3%;">
							<img src="${ auction.attRename }"
								style="height: 100px; width: 100px;">
						</div>
						<div class="detailInfo" >${ auction.conAuthor }</div>
						<div class="detailInfo">${ auction.conProduct }</div>
						<div id="term">
							<span>시작일 : ${ fn:split(auction.aucStartDate, " ")[0] }</span><br>
							<span>종료일 : ${ fn:split(auction.aucFinishDate, " ")[0] }</span>
						</div>

						<c:set var="startDateVar" value="${auction.aucStartDate}" />
						<c:set var="endDateVar" value="${auction.aucFinishDate}" />
						<c:set var="now" value="<%=new java.util.Date()%>" />
						<fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />
						
						
						
						<%
						SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

						Date startDate = dateFormat.parse((String) pageContext.getAttribute("startDateVar"));
						Date endDate = dateFormat.parse((String) pageContext.getAttribute("endDateVar"));

						pageContext.setAttribute("startDate", dateFormat.format(startDate));
						pageContext.setAttribute("endDate", dateFormat.format(endDate));
						%>
						
						<c:choose>
							<c:when test="${today < startDate}">
								<div class="detailInfo" style="padding-top: auto;">
									진행 상황 : 예정 경매<br> 시작 금액 : <fmt:formatNumber value="${ auction.aucStartPrice }"/> 원
								</div>
							</c:when>
							<c:when test="${today > endDate}">
								<div class="detailInfo" style="padding-top: 1.5%;">
									진행 상황 : 종료 경매<br> 낙찰 금액 : <fmt:formatNumber value="${ auction.aucFinishPrice }"/> 원
								</div>
							</c:when>
							<c:when test="${ today <= endDate and today >= startDate }">
								<div class="detailInfo"
									style="padding-top: 1.5%;">
									진행 상황 : 진행 경매<br> 입찰 금액 : <fmt:formatNumber value="${ auction.aucFinishPrice }"/> 원
								</div>
							</c:when>
						</c:choose>
					</div>
					</div>
				</c:forEach>
				<div id="deleteBtnPlace">
					<button style="width: 5%;" onclick="deleteLike();">삭제</button>
				</div>
			</div>
		</div>
	</div>
	
	<nav id="paging" class="pagiset pagiset-line">
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
	
	
	<jsp:include page="../common/footer.jsp" />

	<script>
		function allCheck(data){
			if(data.checked){
				for(const checkBox of document.querySelectorAll("input[class='eachCheck']")){
					checkBox.checked = true;
				}
			}else{
				for(const checkBox of document.querySelectorAll("input[class='eachCheck']")){
					checkBox.checked = false;
				}
			}
		}
		
		function eachCheckForAll(){
			let checkCount = 0;
			for(const checkBox of document.querySelectorAll("input[class='eachCheck']")){
				if(checkBox.checked){
					checkCount++;
				}
				if(checkCount == document.querySelectorAll("input[class='eachCheck']").length){
					document.getElementById("allCheck").checked = true;
				}else{
					document.getElementById("allCheck").checked = false;
				}
			}
		}
		
		const deleteLike = () =>{
			let checkedNum = [];
			for(let checkedBox of document.querySelectorAll("input[class='eachCheck']")){
				if(checkedBox.checked){
					checkedNum.push(checkedBox.parentElement.nextElementSibling.innerText);
				}
			}
			if(checkedNum.length > 0){
				$.ajax({
					url:'interest.ac',
					type:'get',
					data:{checkedNum:checkedNum},
					success: (data) =>{
						if(data == 'deleteMypage'){
							$("#divine").load(location.href + " #divine");
							$("#paging").load(location.href + " #paging");
						}
					},
					error: data => console.log(data)
				})
			}
		}
		
		function moveAuction (aucNo){
			if(document.querySelectorAll("div[class='auction']")[0].children[0].tagName != 'H1'){
				if(event.target.className != 'eachCheck' && event.target.className != 'checkZone'){
					switch(event.target.parentElement.children[6].innerText.split(":")[1].trim().split(" ")[0]){
					case '예정':
						//location.href='auctionDetailScheduled.ac?aucNo=' + aucNo + "&page="  + ${ pi.currentPage };
						break;
					default:
						location.href='auctionDetail.ac?aucNo=' + aucNo + "&page=" + ${ pi.currentPage };
						break;
					}
				}
	       	}
		}
			
		
		const chooseAuction = (data) =>{
			seeWhich();
			console.log(data);
			/* $({
				url:'myInterestChoose.ac',
				type:'get',
				data:{type:data},
				success: data => {
					if(data == 'success'){
						console.log(data)
						$("#new").load(location.href + " #new");
						$("#paging").load(location.href + " #paging");
					}
				},
				error: data => console.log(data)
			}) */
		}
		
		const scheduledAuction = () =>{
			seeWhich();
			/* $({
				url:'',
				type:'get',
				data:{type:'scheduled'},
				success: data => {
					$("#divine").load(location.href + " #divine");
					$("#paging").load(location.href + " #paging");
				},
				error: data => console.log(data)
			}) */
		}
		
		const ongoingAuction = () =>{
			seeWhich();
			/* $({
				url:'',
				type:'get',
				data:{type:'ongoing'},
				success: data => {
					$("#divine").load(location.href + " #divine");
					$("#paging").load(location.href + " #paging");
				},
				error: data => console.log(data)
			}) */
		}
		
		const endAuction = () =>{
			seeWhich();
		/* 	$({
				url:'myInterestEnd.ac',
				type:'get',
				data:{type:'end'},
				success: data => {
					if(data == 'success'){
						console.log(data)
						$("#content-allOver-cover").load(location.href + " #content-allOver-cover");
						$("#paging").load(location.href + " #paging");
					}
				},
				error: data => console.log(data)
			}) */
		}
		
		const seeWhich = () =>{
			document.addEventListener('click',function(event){
				if(event.target.className == 'seeWhich'){
					event.target.style.background = 'gray';
					const clickedElement = event.target;

                    for(let b of document.getElementsByClassName('seeWhich')){
                    	if(b != clickedElement) {
                        	b.style.background = 'lightgray';
						}
					}
				}
			})
		}
    </script>
</body>
</html>