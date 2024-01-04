<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	
	<button onclick="location.href='enrollAuction.adac'">경매 등록</button>
	
	<button onclick="location.href='myInterest.ac'">내 관심 목록</button>
	
	<button onclick="location.href='myBidList.ac'">내 입찰 경매</button>
	
	<button onclick="location.href='endAuction.adac'">종료된 경매</button>
	
	<button onclick="location.href='scheduledAuction.adac'">예정 경매</button>
	
    <div id="containerCover" style="width: 70%; margin: auto; margin-top: 1%;">
        <div style="">
            <div id="searchLine">
                <span><span>전체 경매</span><span>${ total }</span> 개</span>
                <div style="float: right; width: 80%; text-align: right;">
                    <span style="margin: 0 1.5% 0 1.5%;">예전 등록순</span> 
                    <span style="margin: 0 1.5% 0 1.5%;">최근 등록순</span> 
                    <span style="margin: 0 1.5% 0 1.5%;">금액 낮은순</span> 
                    <span style="margin: 0 1.5% 0 1.5%;">금액 높은순</span>
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
                        <span>${ auction.conProduct }</span><br><span>현재 입찰 금액 : ${ auction.aucFinishPrice }</span><br><span>${ fn:split(auction.aucStartDate, " ")[0] } ~ ${ fn:split(auction.aucFinishDate, " ")[0] }</span>
                        <input type="hidden" value="${ auction.aucNo }">
                    </div>
                </c:forEach>
                </div>
            </div>
        </div>
        
        
        <div id="pagingPlace" style="background: yellow; width: 100%; text-align: center;">for paging</div>
        
        
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