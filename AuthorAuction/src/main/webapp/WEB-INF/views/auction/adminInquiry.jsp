<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<form action="search.adac" method="get">
	    <div id="coverAll" style="width: 100%; height: 100%;">
	        <div style="width: 70%; height: 100%; margin: auto; margin-top: 1%; border: 1px black solid; padding: 1% 0 1% 0;">
	            <div style="width: 20%; display: inline-block; margin-left: 3%;">
	                <input type="checkBox" class="auctionStatus" name="scheduled" id="scheduled" value="scheduled"><label for="scheduled">진행 예정 경매</label>
	            </div>
	            <div style="width: 20%; display: inline-block;">
	                <input type="checkBox" class="auctionStatus" name="ongoing" id="ongoing" value="ongoing"><label for="ongoing">진행 중인 경매</label>
	            </div>
	            <div style="width: 20%; display: inline-block;">
	                <input type="checkBox" class="auctionStatus" name="end" id="end" value="end"><label for="end">종료된 경매</label>
	            </div>
	            <div style="width: 35%; display: inline-block;">
	                <select name="searchType">
	                    <option value="all">---------</option>
	                    <option value="author">작가명</option>
	                    <option value="work">작품명</option>
	                </select>
	                <input type="text" id="content" name="content"><button>검색</button>
	            </div>
	            <div style="margin-left: 3%;">
	                <input type="checkbox" id="auctionTerm"> <label for="auctionTerm">경매 기간</label>
	            </div>
	        </div>
	        <div id="checkAuctionPeriod" style="width: 70%; height: 100%; margin: auto; margin-top: 1%; border: 1px black solid; padding: 1% 0 1% 0; display: none;">
	            <span style="margin-left: 3%;">기간검색</span>
	            <div style="margin-left: 3%;">
	                <div style="margin-top:2%; margin-bottom:1%;">
	                    경매 시작일 <button type="button">달력</button> <input type="text" name="aucSS" readonly> ~ <button type="button">달력</button> <input type="text" name="aucSE" readonly>
	                </div>
	                <div style="display:inline-block; width:89%; margin-top:1%; margin-bottom:2%;">
	                    경매 종료일 <button>달력</button> <input type="text" name="aucFS" readonly> ~ <button type="button">달력</button> <input type="text" name="aucFE" readonly>
	                </div>
	                <span style="display:inline-block;"><button type="button" id="reset">달력 초기화</button></span>
	            </div>
	        </div>
	        
	        <div style="width: 70%;  margin: auto; margin-top: 2%; margin-bottom: 2%;">
	        	<div style="margin-bottom: 1%"><span>현재 진행중인 경매</span>&nbsp;총 ${ total } 개</div>
	            <div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-top: 1px black solid; border-bottom: 1px black solid;">
	                <div style="width: 16.5%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;">경매 번호</div>
	                <div style="width: 16.5%; display: inline-block;">작품 사진</div>
	                <div style="width: 16.5%; display: inline-block;">작가 명</div>
	                <div style="width: 16.5%; display: inline-block;">작품 명</div>
	                <div style="width: 16.5%; display: inline-block;">경매 기간</div>
	                <div style="width: 16.5%; display: inline-block;">입찰 금액</div>
	            </div>
	            <c:forEach items="${ aList }" var="auction">
		            <div class="auction" style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-bottom: 1px black solid; cursor:pointer;">
						<div style="width: 16.5%; display: inline-block; ">${ auction.aucNo }</div>
		                <div style="width: 16.5%; height: 100%; display: inline-block;">
		                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
		                </div>
		                <div style="width: 16.5%; display: inline-block;">${ auction.conAuthor }</div>
		                <div style="width: 16.5%; display: inline-block;">${ auction.conProduct }</div>
		                <div style="width: 16.5%; display: inline-block;">${ fn:split(auction.aucStartDate, ' ')[0] } ~ ${ fn:split(auction.aucFinishDate, ' ')[0] }</div>
		                <div style="width: 16.5%; display: inline-block;">${ auction.aucFinishPrice }</div>	 
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
			const auctionTerm = document.getElementById("auctionTerm");
			const checkAuctionPeriod = document.getElementById("checkAuctionPeriod");
			const auction = document.querySelectorAll("div[class='auction']");
			console.log(document.querySelectorAll("input[type='text']"));
			
			
			//기간 검색 여닫이
			auctionTerm.addEventListener('click',function(){
				if(this.checked){
					checkAuctionPeriod.style.display="block";
				}else{
					checkAuctionPeriod.style.display='none';
				}
			})
			
			document.querySelector("button[id='reset']").addEventListener('click',function(){
				for(let i = 2; i < document.querySelectorAll("input[type='text']").length; i++){
					 document.querySelectorAll("input[type='text']")[i].value= "";
				}
			})
			
			for(const list of auction){
				list.addEventListener('click',function(){
					console.log(this.children[0].innerText);
					
				})
			}
			
		}
	</script>
</body>


</html>