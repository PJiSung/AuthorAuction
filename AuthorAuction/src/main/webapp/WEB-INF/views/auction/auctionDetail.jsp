<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#feeModal, #bidModal {
	  position: fixed;
	  z-index: 1;
	  left: 0;
	  top: 0;
	  width: 100%;
	  height: 100%;
	  overflow: auto;
	  background-color: rgba(0, 0, 0, 0.4);
	  display: none;
	}
	.modal-content {
	  background-color: #fefefe;
	  margin: 15% auto;
	  padding: 20px;
	  border: 1px solid #888;
	  width: 80%;
	}
	.close {
	  color: #aaa;
	  float: right;
	  font-size: 28px;
	  font-weight: bold;
	}
	.close:hover,
	.close:focus {
	  color: black;
	  text-decoration: none;
	  cursor: pointer;
	}
	
	.trLine{
		border-bottom: 1px gray solid;
	}
	
</style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
    <div id="content-allOver-cover" style="width: 70%; margin:auto; margin-top: 2%; height:100%">
        <div id="content-left"style="width:49%; background-color:yellow; display: inline-block;">
            <div>
                <img src="image/치즈 냥이.jpg" style="width: 100%; border: 1px black solid; height: 80%;">
             </div>
         </div>

         <div id="contentRightCover" style="width:49%; display: inline-block; border: 1px black solid;">
            <div id="content-right"style="width: 100%; height:100%">
                <div style="text-align: right; margin: 1% 1% 5%;">
                    <span>남은 경매 시간</span> <span id="remainingTime"></span>
                </div>
                <div style="margin: 5% 0 5% 2%;">
                    <span>LOT NUMBER ${ auction.aucNo }</span>
                </div>
                <div style="margin: 5% 0 5% 2%;">
                    <span style="font-size: xx-large; font-weight: 1000;">${ auction.conAuthor }</span>
                </div>
                <div style="margin: 5% 0 5% 2%;">
                    <span style="font-size: large; font-weight: 500;">${ auction.conProduct }</span>
                </div>
                <div style="margin: 5% 0 5% 2%; width: 100%; padding-right: 2%;">
                	<div>
                    	<div style="height: 100%; width: 98%; min-height: 200%;">
							가로 : <span>${ auction.conWidth }</span> x 세로 : <span>${ auction.conHeight }</span>          	
                     	</div>
                    </div>
                </div>
                <hr style="margin-left: 2%; width: 98%;">
                <span>
                    <span style="text-align: left; display: inline-block; margin-left: 2%;">경매 시작가</span>
                    <span style=" float: right; margin-right: 2%;"><fmt:formatNumber value="${ auction.aucStartPrice }" pattern="#,##0" /> 포인트</span>
                </span>
                <br clear="all">
                <hr style="margin-left: 2%; width: 98%;">
                <span>
                    <span style="text-align: left; display: inline-block; margin-left: 2%;">현재 입찰가</span>
                    <span style=" float: right; margin-right: 2%;" id="nowPrice"></span>
                </span>
                <br clear="all">
                <hr style="margin-left: 2%; width: 98%;">
                <span>
                    <span style="text-align: left; display: inline-block; margin-left: 2%;">경매 마감 시간</span>
                    <span style=" float: right; margin-right: 2%;">${ auction.aucFinishDate }</span>
                </span>
                <br clear="all">
                <hr style="margin-left: 2%; width: 98%;">
                <span id="fee" style="border: 1px black solid; margin-left: 2.8%; width: 28%; text-align: center; height: 5%; padding-top: 2%; padding-bottom: 1.5%; display: inline-block;">낙찰 수수료</span>
                <span style="border: 1px black solid; margin-left: 2%; width: 28%; text-align: center; height: 5%; padding-top: 2%; padding-bottom: 1.5%; display: inline-block">경매 호가표</span>
                <span style="border: 1px black solid; margin-left: 2%; width: 28%; text-align: center; height: 5%; padding-top: 2%; padding-bottom: 1.5%; display: inline-block" id="likeBtn">관심 목록 추가</span>
                <div id="checkId" style="width: 96.5%; border: 1px black solid; text-align: center; margin-top: 2%; height: 6.5%; margin-left: 3.4%; padding-top: 3%; padding-bottom: 3%;"></div>
            </div>
        </div>
        <div id="picturePlace" style="width: 45%; background: pink;">
            <img src="image/치즈 냥이.jpg" style="width: 130px; border: 1px black solid; height: 130px; display: inline-block;">
            <img src="image/치즈 냥이.jpg" style="width: 130px; border: 1px black solid; height: 130px; display: inline-block;">
        </div>
    </div>
        
        <!-- 낙찰 수수료 모달창 -->
    <div id="feeModal">
  		<div class="modal-content" style="width:30%;">
    		<h2 style="text-align: center; background-color: navy; color: white; height: 50px; padding-top: 10px;">낙찰 수수료 안내</h2>
		    <table style="margin:auto; border-collapse: collapse; text-align: center; width:80%;">
		    	<tr class="trLine">
		    		<th style="width:65%; margin-left: 30%">현재가 구간(포인트)</th>
		    		<th style="width:35%">호가 단위(포인트)</th>
		    	</tr>
		    	<tr class="trLine">
		    		<td>30만 미만</td>
		    		<td>20,000</td>
		    	</tr>
		    	<tr class="trLine">
		    		<td>30만 이상 ~ 100만 미만</td>
		    		<td>50,000</td>
		    	</tr>
		    	<tr class="trLine">
		    		<td>100만 이상 ~ 300만 미만</td>
		    		<td>100,000</td>
		    	</tr>
		    	<tr class="trLine">
		    		<td>300만 이상 ~ 500만 미만</td>
		    		<td>200,000</td>
		    	</tr>
		    	<tr class="trLine">
		    		<td>500만 이상 ~ 1,000만 미만</td>
		    		<td>500,000</td>
		    	</tr>
		    	<tr class="trLine">
		    		<td>1,000만 이상 ~ 3,000만 미만</td>
		    		<td>1,000,000</td>
		    	</tr>
		    	<tr class="trLine">
		    		<td>3,000만 이상 ~ 5,000만 미만</td>
		    		<td>2,000,000</td>
		    	</tr>
		    	<tr class="trLine">
		    		<td>5,000만 이상 ~ 2억 미만</td>
		    		<td>5,000,000</td>
		    	</tr>
		    	<tr class="trLine">
		    		<td>2억 이상 ~ 5억 미만</td>
		    		<td>10,000,000</td>
		    	</tr>
		    	<tr class="trLine">
		    		<td>5억 이상</td>
		    		<td>20,000,000</td>
		    	</tr>
		    </table>
		    <div style="text-align: right; margin-top:2%; margin-right:5%;">
		    	<button id="closeFeeModal" style="width:10%;">닫기</button>
		    </div>
		</div>
	</div>
        
    <!-- 입찰 모달 -->
    <div id="bidModal">
  		<div class="modal-content" style="width:30%;">
    		<h2 style="text-align: center; background-color: navy; color: white; height: 50px; padding-top: 10px;">입찰</h2>
    		<div>
    			<div>
    				<div style="width:48%; margin-right: 1%; text-align: center; display:inline-block;">현재 입찰가</div>
    				<div style="width:48%; text-align: center; display:inline-block;" id="modalNowPrice"></div>
    			</div>
    			<div>
	    			<div style="width:48%; margin-right: 1%; text-align: center; display:inline-block;">최소 입찰가</div>
	    			<div style="width:48%; text-align: center; display:inline-block;" id="minPrice"></div>
    			</div>
    			<div style="margin-bottom:5%;">
	    			<div style="width:48%; margin-right: 1%; text-align: center; display:inline-block;">보유 포인트</div>
	    			<div style="width:48%; text-align: center; display:inline-block;"><fmt:formatNumber value="${ loginUser.memBalance }" pattern="#,##0" /> 포인트</div>
    			</div>
    			
    			<div style="margin-top:5%;margin-bottom:2%;">
    				<div style="width:48%; margin-right: 1%; text-align: center; display:inline-block;">입찰 포인트</div>
    				<input type="number" value="" id="myInputPoint" style="margin-left:4%; width:30%; text-align: center;"> 포인트
    				<div id="moneyCheck" style="text-align: center; margin-top:3%; color:red;"></div>
    				<div style="text-align: center; margin-top:2%;"><button style="background: gray; color:white;" onclick="alert('포인트 충전 url 내놔')">포인트 충전</button></div><!--  온클릭 로케이션 -->
    			</div>
    		</div>
    		<div style="text-align: right; margin-top:2%; margin-right:5%;">
        		<div id="closeBidModal" style="width:48%; display:inline-block; text-align: center;">닫기</div>
        		<div id="insertBid" style="width:48%; display:inline-block; text-align: center;">입찰</div>
        	</div>
        </div>
	</div>
        
	<jsp:include page="../common/footer.jsp"/>

	<script>
        window.onload = function(){
        	const fee = document.getElementById("fee");
        	const feeModal = document.getElementById("feeModal");
        	const closeFeeModal = document.getElementById("closeFeeModal");
        	
        	const nowPrice = document.getElementById("nowPrice");
        	const likeBtn = document.getElementById("likeBtn");
        	
        	const modalNowPrice = document.getElementById("modalNowPrice");
        	const minPrice = document.getElementById("minPrice");
        	
        	const bidModal = document.getElementById("bidModal");
        	const closeBidModal = document.getElementById("closeBidModal");
        	
        	const myInputPoint = document.getElementById("myInputPoint");
        	
        	const moneyCheck = document.getElementById("moneyCheck");
        	
        	const insertBid = document.getElementById("insertBid");
        	
        	fee.addEventListener('click',function(){
        		feeModal.style.display='block';
        	})
        	closeFeeModal.addEventListener('click',function(){
        		feeModal.style.display='none';
        	})
        	
        	closeBidModal.addEventListener('click',function(){
        		bidModal.style.display="none";
        	})
        	
        	
        	
        	const check = document.getElementById("checkId");
        	let remainingTime = document.getElementById("remainingTime");
        	
        	function bidding(){
        		bidModal.style.display="block";
        	}
        	
        	if(${ !empty loginUser }){
				check.innerText = "입찰하기";
				check.addEventListener('click', bidding);
        	}else{
        		check.innerText = "로그인 후 입찰 가능합니다";
        		check.addEventListener('click',function(){
        			location.href="loginView";
        		})
        	}
        	
            const dateObject = new Date('${ auction.aucFinishDate }');
            
            let date = new Date();
            
            let remainTime = (dateObject - date);
            
			let seconds = Math.floor(remainTime / 1000);
			let minutes = Math.floor(seconds / 60);
			let hours = Math.floor(minutes / 60);
			let days = Math.floor(hours / 24);

			hours %= 24;
			minutes %= 60;
			seconds %= 60;
			
			remainingTime.innerText = days + "일 " + hours + "시간 " + minutes + "분 " + seconds + "초";
			
			let timer = setInterval(() => {
				let date = new Date();
				let remainTime = (dateObject - date);
	            
				let seconds = Math.floor(remainTime / 1000);
				let minutes = Math.floor(seconds / 60);
				let hours = Math.floor(minutes / 60);
				let days = Math.floor(hours / 24);

				hours %= 24;
				minutes %= 60;
				seconds %= 60;
				
				remainingTime.innerText = days + "일 " + hours + "시간 " + minutes + "분 " + seconds + "초";
				
				if(remainingTime.innerText == '0일 0시간 0분 0초'){
					clearInterval(timer);
					remainingTime.innerText = '경매 종료';
					check.innerText = '경매 종료'
					check.removeEventListener('click',bidding);
				}
				}, 1000);
			
			if(${ empty auction.aucFinishPrice }){
				nowPrice.innerText = "현재 입찰 없음";
				modalNowPrice.innerText = "현재 입찰 없음";
				minPrice.innerHTML = '<fmt:formatNumber value="${ auction.aucStartPrice }" pattern="#,##0" /> 포인트';
				myInputPoint.value= '${ auction.aucStartPrice }';
				
			}else{
				nowPrice.innerHTML = '<fmt:formatNumber value="${ auction.aucFinishPrice }" pattern="#,##0" /> 포인트';
				modalNowPrice.innerHTML = '<fmt:formatNumber value="${ auction.aucFinishPrice }" pattern="#,##0" /> 포인트';
			}
			
			if(${ empty loginUser}){
				likeBtn.addEventListener('click',function(){
					if(confirm("로그인을 하셔야 관심 목록에 추가하실 수 있습니다. \n로그인 하시겠습니까?")){
						location.href='loginView';
					}
				})
			}
			
			myInputPoint.addEventListener('keyup',function(){
				if(myInputPoint.value > '${ loginUser.memBalance}') {
					moneyCheck.innerText = '보유하신 포인트가 부족하여 입찰하실 수 없습니다';
					insertBid.addEventListener('click',function(){
						if(confirm("보유하신 포인트가 부족합니다 \n 충전 ㄱ?")){
							alert("충전페이지 url 내놔");
						}else{
							moneyCheck.innerText = '';
						}
					})
				}else{
					insertBid.addEventListener('click',function(){
						if(confirm("입찰하시면 취소하실 수 없습니다 \n정말로 입찰하시겠습니까?")){
							$.ajax({
								url:"insertBid.ac",
								type:"post",
								data:{bidMoney:myInputPoint.value,aucNo:${ auction.aucNo }},
								success: data =>{
									if(data == 'success'){
										bidModal.style.display="none";
										window.reolad();
									}else{
										bidModal.style.display="none";
										alert('입찰하신 금액보다 더 높은 금액이 입찰되었습니다.')
									}
								},
								error: data => console.log(data)
								
							})
						}
					})
				}
			})
		}
    </script>
</body>
</html>