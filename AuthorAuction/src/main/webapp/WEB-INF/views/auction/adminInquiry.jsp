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
                <input type="radio" class="auctionStatus" name="auctionStatus" id="scheduled" value="scheduled"><label for="scheduled">진행 예정 경매</label>
            </div>
            <div style="width: 20%; display: inline-block;">
                <input type="radio" class="auctionStatus" name="auctionStatus" id="onGoing" value="onGoing"><label for="onGoing">진행 중인 경매</label>
            </div>
            <div style="width: 20%; display: inline-block;">
                <input type="radio" class="auctionStatus" name="auctionStatus" id="end" value="end"><label for="end">종료된 경매</label>
            </div>
            <div style="width: 35%; display: inline-block;">
                <select name="" id="">
                    <option value="">---------</option>
                    <option value="">작가명</option>
                    <option value="">작품명</option>
                </select>
                <input type="text"><button onclick="search();">검색</button>
            </div>
            <div style="margin-left: 3%;">
                <input type="checkbox" id="auctionTerm">경매 기간
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
        
        <div style="width: 70%;  margin: auto; margin-top: 2%; margin-bottom: 2%;">
        	<div><span>현재 진행중인 경매</span>총 ${ total } 개</div>
            <div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-top: 1px black solid; border-bottom: 1px black solid;">
                <div style="width: 16.5%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;">경매 번호</div>
                <div style="width: 16.5%; display: inline-block;">작품 사진</div>
                <div style="width: 16.5%; display: inline-block;">작가 명</div>
                <div style="width: 16.5%; display: inline-block;">작품 명</div>
                <div style="width: 16.5%; display: inline-block;">경매 기간</div>
                <div style="width: 16.5%; display: inline-block;">현재 입찰 금액</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
            <div style="width: 100%; height: 100%; border-bottom: 1px black solid; display: flex; align-items: center; justify-content: center; text-align: center;">
                <div style="width: 16.5%; display: inline-block; ">50</div>
                <div style="width: 16.5%; height: 100%; display: inline-block;">
                    <img src="image/치즈 냥이.jpg" style="height: 30%; width: 30%;">
                </div>
                <div style="width: 16.5%; display: inline-block;">찰스 김</div>
                <div style="width: 16.5%; display: inline-block;">치즈 냥이</div>
                <div style="width: 16.5%; display: inline-block;">23.12.09 ~ 23.12.19</div>
                <div style="width: 16.5%; display: inline-block;">경매 예정 작품</div>
            </div>
        </div>
    </div>
    <jsp:include page="../common/footer.jsp"/>
    
    <script>
		window.onload = () =>{
			const auctionTerm = document.getElementById("auctionTerm");
			const checkAuctionPeriod = document.getElementById("checkAuctionPeriod");
			
			//기간 검색 여닫이
			checkAuctionPeriod.style.display='none';
			auctionTerm.addEventListener('click',function(){
				if(this.checked){
					checkAuctionPeriod.style.display="block";
				}else{
					checkAuctionPeriod.style.display='none';
				}
			})
		}
		
		const search = () =>{
			const auctionStatus = document.getElementsByClassName("auctionStatus");
			
			for(let a of auctionStatus){
				if(a.checked){
					console.log("search.ac?searchType=" + a.value +"&");
				}
			}
			
		}
		
		
	</script>
</body>


</html>