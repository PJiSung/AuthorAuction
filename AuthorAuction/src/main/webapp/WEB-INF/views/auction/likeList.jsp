<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <div id="content-allOver-cover" style="width: 100%; height: 100%;">
        <div id="divine" style="width: 100%; height: 100%;">
            <div id="headline" style="width: 70%;  margin: auto;">
                <div style="width: 100%; margin-top: 5%; margin-bottom: 5%; font-size: x-large; font-weight: 1000;">관심 경매 목록</div>
                <div id="btnPlace" style="width: 100%;">
                    <div class="seeWhich" style="background: gray; width: 9%; display: inline-block; text-align: center; padding: 1%;" onclick="hi();">전체 보기</div>
                    <div class="seeWhich" style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;" id="ongoing">예정 경매</div>
                    <div class="seeWhich" style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;" id="scheduled">진행 경매</div>
                    <div class="seeWhich" style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;" id="scheduled">종료 경매</div>
                </div>
                <div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-top: 1px black solid; border-bottom: 1px black solid;">
                    <div style="width: 14%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;"><input type="checkbox" id="all"> 전체 선택</div>
                    <div style="width: 14%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;">경매 번호</div>
                    <div style="width: 14%; display: inline-block;">작품 사진</div>
                    <div style="width: 14%; display: inline-block;">작가 명</div>
                    <div style="width: 14%; display: inline-block;">작품 명</div>
                    <div style="width: 14%; display: inline-block;">경매 기간</div>
                    <div style="width: 14%; display: inline-block;">입찰 금액</div>
                </div>
               
                <c:forEach items="${ aList }" var="auction">
	                <div class="auction" style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
	                    <div style="width: 14%; display: inline-block; "><input type="checkbox" class="eachCeck"></div>
	                    <div style="width: 14%; display: inline-block; ">${ auction.aucNo }</div>
	                    <div style="width: 14%; height: 100%; display: inline-block;">
	                        <img src="${ auction.attRename }" style="height: 100px; width: 100px; margin: 5px 0 5px 0;" >
	                    </div>
	                    <div style="width: 14%; display: inline-block;">${ auction.conAuthor }</div>
	                    <div style="width: 14%; display: inline-block;">${ auction.conProduct }</div>
	                    <div style="width: 14%; display: inline-block;">
	                    	<span>시작일 : ${ fn:split(auction.aucStartDate, " ")[0] }</span><br>
	                    	<span>종료일 : ${ fn:split(auction.aucFinishDate, " ")[0] }</span></div>
	                    <!-- 날짜형식변환 / 조건 다 확인 -->
	                    
	                    <fmt:formatDate value="${now}" pattern="yyyy-MM-dd HH:mm:ss" var="today" />
		                <fmt:parseDate value="${auction.aucStartDate}" pattern="yyyy-MM-dd HH:mm:ss" var="startDate" />
		                <fmt:parseDate value="${auction.aucFinishDate}" pattern="yyyy-MM-dd HH:mm:ss" var="endDate" />
	                    <c:if test="${ today lt startDate }">
	                    	<div style="width: 14%; display: inline-block;">${ auction.aucFinishPrice }</div>
	                    </c:if>
	                    <%-- <c:if test="${ today  eq today }">
	                    	<div style="width: 14%; display: inline-block;">${ auction.aucFinishPrice }</div>
	                    	
	                    </c:if> --%>
	                    <c:if test="${ today  eq today }">
	                    	<div style="width: 14%; display: inline-block;">종료 경매<br>낙찰금액 : ${ auction.aucFinishPrice }</div>
	                    </c:if>
	                </div>
                </c:forEach>
                <div id="deleteBtnPlace" style="width: 100%; height: 100%; text-align: right; margin-top: 1%;"><button>삭제</button></div>
            </div>
        </div>
    </div>
	<jsp:include page="../common/footer.jsp"/>
	
    <script>
        window.onload = () =>{
            const seeWhich = document.getElementsByClassName('seeWhich');
            
            for(let a of seeWhich){
                a.addEventListener('click',function(){
                    this.style.background = 'gray';
                    const clickedElement = this;

                    for(let b of seeWhich){
                        if(b != clickedElement) {
                            b.style.background = 'lightgray';
                        }
                    }
                })
            }
            
            
            for(let i = 0; i < document.querySelectorAll("div[class='auction']").length; i++){
            		document.querySelectorAll("div[class='auction']")[i].addEventListener('click',function(){
            			console.log(this)
            		})
            }
            /* for(const auction of document.querySelectorAll("div[class='auction']")){
            	auction.addEventListener('click',function(){
            		console.log(auction.children[1].innerText);
            	})
            }
            
            for(const checkBoxes of document.querySelectorAll("input[type='checkBox']")){
            	checkBoxes.addEventListener('click',function(){
            		console.log(checkBoxes);
            	})
            } */
        }

        
        
    </script>
</body>
</html>