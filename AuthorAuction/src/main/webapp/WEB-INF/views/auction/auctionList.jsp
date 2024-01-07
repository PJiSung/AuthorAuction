<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>경매품 리스트 페이지</title>
<style type="text/css">
	.auction{
		cursor:pointer;
	}
</style>

</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	<button onclick="location.href='adminInquiry.adac'">관리자</button>
	
	<!-- <button onclick="location.href='enrollAuction.adac'">경매 등록</button> -->
	
	<button onclick="location.href='myInterest.ac'">내 관심 목록</button>
	
	<button onclick="location.href='myBidList.ac'">내 입찰 경매</button>
	
	<button onclick="location.href='scheduledAuction.adac'">예정 경매</button>
	
    <div id="containerCover" style="width: 70%; margin: auto; margin-top: 1%;">
        <div style="">
            <div id="searchLine">
                <span><span>전체 경매</span><span>${ total }</span> 개</span>
                <div style="float: right; width: 80%; text-align: right;">
                    <span style="margin: 0 1.5% 0 1.5%;">입찰 낮은순</span> 
                    <span style="margin: 0 1.5% 0 1.5%;">입찰 높은순</span>
                    <select name="searchType">
                        <option value="artist">작가명</option>
                        <option value="work">작품명</option>
                    </select>
                    <input type="text" style="height: 100%;"><button>검색</button>
                </div>
            </div>

            <div id="mainContentCover" style="border: 1px black solid;">
                <div id="mainContent" style="margin-top: 1%;">
                <c:forEach items="${ aList }" var="auction">
                	 <div class="auction" id="img" style="width: 21%; height: 100%; display: inline-block; text-align: center; margin: 0 1.5% 0 2.1%">
                	 <img src="${ auction.attRename }" style="width: 100%; height: 100%;">
                        <span>${ auction.conProduct }</span><br><span>현재 입찰 금액 : <fmt:formatNumber value="${ auction.aucFinishPrice }"/> 원</span><br><span>${ fn:split(auction.aucStartDate, " ")[0] } ~ ${ fn:split(auction.aucFinishDate, " ")[0] }</span>
                        <input type="hidden" value="${ auction.aucNo }">
                    </div>
                </c:forEach>
                </div>
            </div>
        </div>
        
        
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
        
        
        <br>
        <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
    </div>
    <jsp:include page="../common/footer.jsp"/>
    <script>
        window.onload = () =>{
            const auction = document.getElementsByClassName("auction");
            
            for(const inputValue of auction){
            	inputValue.addEventListener('click',function(){
            		const aucNo = this.children[6].value;
            		location.href='auctionDetail.ac?aucNo=' + aucNo + "&page=" + ${ pi.currentPage};
            	})
            }
        }
    </script>
</body>
</html>