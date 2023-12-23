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
    <div id="content-allOver-cover" style="width: 70%; margin:auto; margin-top: 2%; height:100%">
            <div id="content-left"style="width:49%; background-color:yellow; display: inline-block;">
                <div>
                    <img src="image/치즈 냥이.jpg" style="width: 100%; border: 1px black solid; height: 80%;">
                </div>
            </div>
			<input type="hidden" id="forRemainingTime">            

            <div id="contentRightCover" style="width:49%; display: inline-block; border: 1px black solid;">
                <div id="content-right"style="width: 100%; height:100%">
                    <div style="text-align: right; margin: 1% 1% 5%;">
                        <span>남은 경매 시간</span> <span id="remainingTime">7일 18시간 59분 59초</span>
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
								가로 : <span>300cm</span> x 세로 : <span>400cm</span>          	
	                        </div>
                        </div>
                    </div>
                    <hr style="margin-left: 2%; width: 98%;">
                    <span>
                        <span style="text-align: left; display: inline-block; margin-left: 2%;">경매 시작가</span>
                        <span style=" float: right; margin-right: 2%;">0원</span>
                    </span>
                    <br clear="all">
                    <hr style="margin-left: 2%; width: 98%;">
                    <span>
                        <span style="text-align: left; display: inline-block; margin-left: 2%;">현재 입찰가</span>
                        <span style=" float: right; margin-right: 2%;">0원</span>
                    </span>
                    <br clear="all">
                    <hr style="margin-left: 2%; width: 98%;">
                    <span>
                        <span style="text-align: left; display: inline-block; margin-left: 2%;">경매 마감 시간</span>
                        <span style=" float: right; margin-right: 2%;">${ auction.aucFinishDate }</span>
                    </span>
                    <br clear="all">
                    <hr style="margin-left: 2%; width: 98%;">
                    <span style="border: 1px black solid; margin-left: 2.8%; width: 28%; text-align: center; height: 5%; padding-top: 2%; padding-bottom: 1.5%; display: inline-block;">낙찰 수수료</span>
                    <span style="border: 1px black solid; margin-left: 2%; width: 28%; text-align: center; height: 5%; padding-top: 2%; padding-bottom: 1.5%; display: inline-block">경매 호가표</span>
                    <span style="border: 1px black solid; margin-left: 2%; width: 28%; text-align: center; height: 5%; padding-top: 2%; padding-bottom: 1.5%; display: inline-block">관심 목록 추가</span>
                    <div style="width: 96.5%; border: 1px black solid; text-align: center; margin-top: 2%; height: 6.5%; margin-left: 3.4%; padding-top: 3%; padding-bottom: 3%;">입찰하기</div>
                </div>
            </div>
            <div id="picturePlace" style="width: 45%; background: pink;">
                <img src="치즈 냥이.jpg" style="width: 130px; border: 1px black solid; height: 130px; display: inline-block;">
                <img src="치즈 냥이.jpg" style="width: 130px; border: 1px black solid; height: 130px; display: inline-block;">
            </div>
        </div>
    </div>
	<jsp:include page="../common/footer.jsp"/>

	<script>
        window.onload = function(){
            const a = document.getElementById('content-right');
            const b = document.getElementById('content-right').offsetTop;
            console.log(b);

            window.addEventListener('scroll',function(){
                if(window.scrollY < b){
                    a.setAttribute('position', 'relative');
                }else{
                    a.setAttribute('position', 'fixed');
                    a.setAttribute('top', '0');
                }  
            })
            const time = new Date();
            
            console.log(time);
            }
        
    </script>
</body>
</html>