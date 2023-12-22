<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <div id="coverAll" style="width: 100%; height: 100%;">
        <div style="width: 70%; height: 100%; margin: auto; margin-top: 1%; border: 1px black solid; padding: 1% 0 1% 0;">
            <div style="width: 20%; display: inline-block; margin-left: 3%;">
                <input type="checkbox">진행 예정 경매
            </div>
            <div style="width: 20%; display: inline-block;">
                <input type="checkbox">진행 중인 경매
            </div>
            <div style="width: 20%; display: inline-block;">
                <input type="checkbox">종료된 경매
            </div>
            <div style="width: 35%; display: inline-block;">
                <select name="" id="">
                    <option value="">---------</option>
                    <option value="">작가명</option>
                    <option value="">작품명</option>
                </select>
                <input type="text"><button>검색</button>
            </div>
            <div style="margin-left: 3%;">
                <input type="checkbox">경매 기간
            </div>
        </div>
        <div id="checkAuctionPeriod" style="width: 70%; height: 100%; margin: auto; margin-top: 1%; border: 1px black solid; padding: 1% 0 1% 0;">
            <span style="margin-left: 3%;">기간검색</span>
            <div style="margin-left: 3%;">
                <div>
                    경매 시작일 <button>달력</button><input type="text"> ~ <button>달력</button><input type="text">
                </div>
                <div>
                    경매 종료일 <button>달력</button><input type="text"> ~ <button>달력</button><input type="text">
                </div>
                <div>
                    경매 기간 <button style="margin-left: 1.9%;">달력</button><input type="text"> ~ <button>달력</button><input type="text"> <span style="float: right; margin-right: 6%;"><button>초기화</button></span>
                </div>
            </div>
        </div>
        <div id="headline" style="width: 70%;  margin: auto; margin-top: 2%;">
            <div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-top: 1px black solid; border-bottom: 1px black solid;">
                <div style="width: 14%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;"><input type="checkbox"> 전체 선택</div>
                <div style="width: 14%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;">경매 번호</div>
                <div style="width: 14%; display: inline-block;">작품 사진</div>
                <div style="width: 14%; display: inline-block;">작가 명</div>
                <div style="width: 14%; display: inline-block;">작품 명</div>
                <div style="width: 14%; display: inline-block;">경매 기간</div>
                <div style="width: 14%; display: inline-block;">현재 입찰 금액</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 14%; display: inline-block; "><input type="checkbox"></div>
                <div style="width: 14%; display: inline-block; ">50</div>
                <div style="width: 14%; height: 100%; display: inline-block;">
                    <img src="치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 14%; display: inline-block;">찰스 김</div>
                <div style="width: 14%; display: inline-block;">치즈 냥이</div>
                <div style="width: 14%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 14%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 14%; display: inline-block; "><input type="checkbox"></div>
                <div style="width: 14%; display: inline-block; ">50</div>
                <div style="width: 14%; height: 100%; display: inline-block;">
                    <img src="치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 14%; display: inline-block;">찰스 김</div>
                <div style="width: 14%; display: inline-block;">치즈 냥이</div>
                <div style="width: 14%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 14%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 14%; display: inline-block; "><input type="checkbox"></div>
                <div style="width: 14%; display: inline-block; ">50</div>
                <div style="width: 14%; height: 100%; display: inline-block;">
                    <img src="치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 14%; display: inline-block;">찰스 김</div>
                <div style="width: 14%; display: inline-block;">치즈 냥이</div>
                <div style="width: 14%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 14%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="float: right; margin-top: 1%;">
                <button>수정</button> <button>삭제</button>
            </div>
        </div>
    </div>
    <jsp:include page="../common/footer.jsp"/>
</body>
</html>