<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.kh.auction.user.model.vo.Auction"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.auction{
		cursor:pointer;
	}
	
	.info{
		width: 14%;
		margin-top: 1%;
		margin-bottom: 1%;" 
	}
	
	.infoCover{
		background: lightgray;
	}
	
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />

	<div id="content-allOver-cover" style="width: 100%; height: 100%;">
		<div id="divine" style="width: 100%; height: 100%; min-height: 950px;">
			<div id="headline" style="width: 70%; margin: auto;">
				<div
					style="width: 100%; margin-top: 5%; margin-bottom: 5%; font-size: x-large; font-weight: 1000;">참여 
					경매 목록</div>
				<div id="btnPlace" style="width: 100%;">
					<div class="seeWhich"
						style="background: gray; width: 9%; display: inline-block; text-align: center; padding: 1%;"
						onclick="all();">전체 보기</div>
					<div class="seeWhich"
						style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;"
						id="ongoing" onclick="ongoingAuction();">진행 경매</div>
					<div class="seeWhich"
						style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;"
						id="scheduled" onclick="endAuction();">종료된 경매</div>
				</div>
				<div class="infoCover"
					style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-top: 1px black solid; border-bottom: 1px black solid;">
					<div class="info">경매 번호</div>
					<div class="info">작품 사진</div>
					<div class="info">작가 명</div>
					<div class="info">작품 명</div>
					<div class="info">입찰 상태</div>
					<div class="info">금액</div>
					<div class="info">진행 상황</div>
				</div>

				<c:if test="${ empty myBidList }">
					<div class="auction" style="width: 100%; height: 100px; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
						<h1>조회 가능한 데이터가 없습니다</h1>
					</div>
				</c:if>
					
				<c:forEach items="${ myBidList }" var="myBidList">
					<div class="auction" onclick="moveToAuction('${ myBidList.aucNo }');"
						style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
						<div style="width: 14%;">${ myBidList.aucNo }</div>
						<div style="width: 14%; height: 100%;">
							<img src="${ myBidList.attRename }"
								style="height: 100px; width: 100px; margin-top: 3%; margin-bottom: 3%;">
						</div>
						<div style="width: 14%;">${ myBidList.conAuthor }</div>
						<div style="width: 14%;">${ myBidList.conProduct }</div>

						<div style="width: 14%;" class="biddingStatus"></div>
						<div style="width: 14%;" class="myBidListPrice"></div>
						<div style="width: 14%;" class="auctionStatus"></div>
					</div>
				</c:forEach>
			</div>

		</div>
	</div>

	<br>

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
				<a class="pagiset-link pagiset-first" href="${ goFirst }"> <span
					class="visually-hidden">처음</span>
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
			<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
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
	<br>

	<c:forEach items="${ detailList }" var="detailList">
		<input type="hidden" value="${ detailList.bidPrice }" class="detailBidPrice">
	</c:forEach>
	
	<c:forEach items="${ myBidList }" var="myBidList">
		<input type="hidden" value="${ myBidList.aucFinishPrice }" class="aucNowPrice">
		<input type="hidden" value="${ myBidList.aucFinishDate}" class="aucFinishDate">
	</c:forEach>
	<jsp:include page="../common/footer.jsp" />

	<script>
        window.onload = () =>{
            const auctionStatus = document.querySelectorAll("div[class='auctionStatus']")
            console.log(document.querySelectorAll("input[class='detailBidPrice']"));
            
            for (let i = 0; i < document.querySelectorAll("input[class='detailBidPrice']").length; i++){
            	if(document.querySelectorAll("input[class='detailBidPrice']")[i].value != document.querySelectorAll("input[class='aucNowPrice']")[i].value){
            		document.querySelectorAll("div[class='biddingStatus']")[i].innerText = '패찰'
            	}else{
            		document.querySelectorAll("div[class='biddingStatus']")[i].innerText = '입찰'
            	}
            	
            	document.querySelectorAll("div[class='myBidListPrice']")[i].innerHTML = document.querySelectorAll("input[class='detailBidPrice']")[i].value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",") + " 원"
            	
            	
            	 if(new Date(document.querySelectorAll("input[class='aucFinishDate']")[i].value) > new Date()){
            		 document.querySelectorAll("div[class='auctionStatus']")[i].innerText = '진행 경매';
                 }else{
                	 document.querySelectorAll("div[class='auctionStatus']")[i].innerText = '종료 경매';
                 }
            }
        }
        
        const moveToAuction = (data)=>{
        	location.href="auctionDetail.ac?aucNo=" + data + "&page=" + ${pi.currentPage};
        }
        
        const ongoingAuction = () =>{
        	seeSwitch();
        	/* $({
        		url:'getAllOngoingAuction.ac,
        		type:'post',
        		
        	
        	}) */
        }
        const seeSwitch = () =>{
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
        
        const endAuction = () =>{
        	seeSwitch();
        }
        
        const all = () =>{
        	seeSwitch();
        	//location.href =''
        }
	</script>
</body>
</html>