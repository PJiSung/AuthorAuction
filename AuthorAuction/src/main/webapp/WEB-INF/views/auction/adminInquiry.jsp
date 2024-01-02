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
	                <input type="radio" class="auctionStatus" name="auctionStatus" id="scheduled" value="scheduled"><label for="scheduled">진행 예정 경매</label>
	            </div>
	            <div style="width: 20%; display: inline-block;">
	                <input type="radio" class="auctionStatus" name="auctionStatus" id="onGoing" value="onGoing"><label for="onGoing">진행 중인 경매</label>
	            </div>
	            <div style="width: 20%; display: inline-block;">
	                <input type="radio" class="auctionStatus" name="auctionStatus" id="end" value="end"><label for="end">종료된 경매</label>
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
	                    경매 시작일 <button>달력</button> <input type="text" name="aucSS"> ~ <button>달력</button> <input type="text" name="aucSE">
	                </div>
	                <div style="display:inline-block; width:89%; margin-top:1%; margin-bottom:2%;">
	                    경매 종료일 <button>달력</button> <input type="text" name="aucFS"> ~ <button>달력</button> <input type="text" name="aucFE">
	                </div>
	                <span style="display:inline-block; margin-right: 6%;"><button>초기화</button></span>
	            </div>
	        </div>
	        
	        <jsp:useBean id="now" class="java.util.Date"/>
	        <div style="width: 70%;  margin: auto; margin-top: 2%; margin-bottom: 2%;">
	        	<div style="margin-bottom: 1%"><span>현재 진행중인 경매</span>총 ${ total } 개</div>
	            <div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-top: 1px black solid; border-bottom: 1px black solid;">
	                <div style="width: 16.5%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;">경매 번호</div>
	                <div style="width: 16.5%; display: inline-block;">작품 사진</div>
	                <div style="width: 16.5%; display: inline-block;">작가 명</div>
	                <div style="width: 16.5%; display: inline-block;">작품 명</div>
	                <div style="width: 16.5%; display: inline-block;">경매 기간</div>
	                <div style="width: 16.5%; display: inline-block;">현재 입찰 금액</div>
	            </div>
	            <c:forEach items="${ aList }" var="auction">
		            <div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-bottom: 1px black solid; ">
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
    <div style="height:65px; text-align: center;">페이징 구간이며 필요한 높이는 최소 65px 공간에 마진까지 넣어서 만들기</div>
    <jsp:include page="../common/footer.jsp"/>
    
    <script>
		window.onload = () =>{
			const auctionTerm = document.getElementById("auctionTerm");
			const checkAuctionPeriod = document.getElementById("checkAuctionPeriod");
			
			//기간 검색 여닫이
			auctionTerm.addEventListener('click',function(){
				if(this.checked){
					checkAuctionPeriod.style.display="block";
				}else{
					checkAuctionPeriod.style.display='none';
				}
			})
		}
	</script>
</body>


</html>