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
    <div id="content-allOver-cover" style="width: 100%; height: 100%;">
        <div id="forWidthAndHeight" style="width: 70%; height: 100%; margin: auto; background-color: pink; margin-top: 1%;">
        	<form action="">
	            <div style="margin-left: 5%;">작품 등록</div>
	            <div id="workNamePlace" style="margin-left: 5%; width: 100%;">작품명 <input type="text" readonly style="width: 80%;"></div>
	            <div id="artistNamePlace" style="margin-left: 5%; width: 100%;">작가명 <input type="text" readonly style="width: 80%;"  ></div>
	            <div id="startMoney" style="margin-left: 5%; width: 100%;">시작가 <input type="text" style="width: 80%;"></div>
	            <div id="startDate" style="margin-left: 5%; width: 40%; display: inline-block;">경매 시작일 <input type="text"> <div style=" width:1%; display: inline-block;">~</div> </div><div id="endDate" style="width: 40%; float: right;">경매 종료일<input type="text"></div>
	            <div id="explainPlace" style="margin-left: 5%;">
	                <span>작품 설명</span><br>
	                <textarea name="" id="" style="width: 91%; resize: none;"></textarea>
	            </div>
	            <div style="width: 100%; text-align: right;">
	            	<button style=" margin-right: 8%;">등록</button>
	            </div>
            </form>
        </div>
    </div>
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>