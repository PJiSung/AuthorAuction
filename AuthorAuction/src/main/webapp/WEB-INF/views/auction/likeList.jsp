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
						style="background: gray; width: 9%; display: inline-block; text-align: center; padding: 1%;"
						onclick="hi();">전체 보기</div>
					<div class="seeWhich"
						style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;"
						id="ongoing">예정 경매</div>
					<div class="seeWhich"
						style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;"
						id="scheduled">진행 경매</div>
					<div class="seeWhich"
						style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;"
						id="finish">종료 경매</div>
				</div>
				<div
					style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-top: 1px black solid; border-bottom: 1px black solid;">
					<div
						style="width: 14%; display: inline-block; margin-top: 1%; margin-bottom: 1%;">
						<input type="checkbox" id="allCheck" name="allCheck"><label
							for="allCheck">전체 선택</label>
					</div>
					<div
						style="width: 14%; display: inline-block; margin-top: 1%; margin-bottom: 1%;">경매
						번호</div>
					<div style="width: 14%; display: inline-block;">작품 사진</div>
					<div style="width: 14%; display: inline-block;">작가 명</div>
					<div style="width: 14%; display: inline-block;">작품 명</div>
					<div style="width: 14%; display: inline-block;">경매 기간</div>
					<div style="width: 14%; display: inline-block;">경매 현황</div>
				</div>


				<c:if test="${ empty aList }">
					<div class="auction" style="width: 100%; height: 100px; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
						<h1>조회 가능한 데이터가 없습니다</h1>
					</div>
				</c:if>

				<%-- ${ aList } --%>
				<c:forEach items="${ aList }" var="auction">
					<div class="auction" style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
						<div style="width: 14%; display: inline-block; height: 100px; padding-top: 2%;">
							<input type="checkbox" class="eachCheck">
						</div>
						<div style="width: 14%; display: inline-block; height: 100px; padding-top: 2%;">${ auction.aucNo }</div>
						<div style="width: 14%; height: 100%; display: inline-block;">
							<img src="${ auction.attRename }"
								style="height: 100px; width: 100px; margin: 5px 0 5px 0;">
						</div>
						<div style="width: 14%; display: inline-block; height: 100px; padding-top: 2%;">${ auction.conAuthor }</div>
						<div style="width: 14%; display: inline-block; height: 100px; padding-top: 2%;">${ auction.conProduct }</div>
						<div style="width: 14%; display: inline-block; height: 100px; padding-top: 1.5%;">
							<span>시작일 : ${ fn:split(auction.aucStartDate, " ")[0] }</span><br>
							<span>종료일 : ${ fn:split(auction.aucFinishDate, " ")[0] }</span>
						</div>

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
								<div style="width: 14%; display: inline-block; height: 100px; padding-top: auto;">
									진행 상황 : 예정 경매<br> 시작 금액 : ${ auction.aucFinishPrice }
								</div>
							</c:when>
							<c:when test="${today.after(endDate)}">
								<div style="width: 14%; display: inline-block; height: 100px; padding-top: 1.5%;">
									진행 상황 : 종료 경매<br> 낙찰 금액 : ${ auction.aucFinishPrice }
								</div>
							</c:when>
							<c:otherwise>
								<div
									style="width: 14%; display: inline-block; height: 100px; padding-top: 1.5%;">
									진행 상황 : 진행 경매<br> 입찰 금액 : ${ auction.aucFinishPrice }
								</div>
							</c:otherwise>
						</c:choose>
					</div>
				</c:forEach>
				<div id="deleteBtnPlace"
					style="width: 100%; height: 100%; text-align: right; margin-top: 1%;">
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
		window.onload = () =>{
        	for(let a of document.getElementsByClassName('seeWhich')){
            	a.addEventListener('click',function(){
                	this.style.background = 'gray';
                	const clickedElement = this;

                    for(let b of document.getElementsByClassName('seeWhich')){
                    	if(b != clickedElement) {
                        	b.style.background = 'lightgray';
						}
					}
				})
			}
            
        	
        	
        	
			if(document.querySelectorAll("div[class='auction']")[0].children[0].tagName != 'H1'){
	       		for(const auction of document.querySelectorAll("div[class='auction']")){
	       			for(let i = 1; i < 7; i++){
	       				auction.children[i].addEventListener('click',function(){
	       					let auctionStatus = null;
	       					switch(auction.children[6].innerText.split(":")[1].trim().split(" ")[0]){
	       					case '예정':
	       						auctionStatus = 'scheduled';
	       						break;
	       					case '진행':
	       						auctionStatus = 'ongoing';
	       						break;
	       					default:
	       						auctionStatus = 'finish';
	   						break;
	       					}
	       					console.log(auctionStatus)
	       					//location.href='';
	       				})
	       			}
	       		}
			}
            
            let checkCount = 0;
          	for(const checkBox of document.querySelectorAll("input[class='eachCheck']")){
				checkBox.addEventListener('click',function(){
					
					if(checkBox.checked){
						checkCount++;
					}else{
						checkCount--;
					}
					
					if(checkCount == document.querySelectorAll("input[class='eachCheck']").length){
						document.getElementById("allCheck").checked = true;
					}else{
						document.getElementById("allCheck").checked = false;
					}
				})
          	} 
          	
          	document.getElementById("allCheck").addEventListener('click',function(){
          		if(document.getElementById("allCheck").checked){
          			for(const each of document.querySelectorAll("input[class='eachCheck']")){
          				each.checked = true;
          				checkCount = document.querySelectorAll("input[class='eachCheck']").length;
          			}
          		}else{
          			for(const each of document.querySelectorAll("input[class='eachCheck']")){
          				each.checked = false;
          				checkCount = 0;
          			}
          		}
          	})
        }
		
		const deleteLike = () =>{
			let checkedNum = [];
			for(let checkedBox of document.querySelectorAll("input[class='eachCheck']")){
				if(checkedBox.checked){
					checkedNum.push(checkedBox.parentElement.nextElementSibling.innerText);
				}
			}
			
			$.ajax({
				url:'interest.ac',
				type:'post',
				data:{checkedNum:checkedNum},
				success: (data) =>{
					 $("#divine").load(location.href + " #divine");
					$("#paging").load(location.href + " #paging");
				},
				error: data => console.log(data)
			})
		}
    </script>
</body>
</html>