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
    </div>
    <div id="content-allOver-cover" style="width: 70%; margin:auto; margin-top: 2%; display: flex;">
        <div id="forHeight">
            <div id="content-left"style="width:45%; background-color:yellow; display: inline-block; ">
                <div>
                    <img src="치즈 냥이.jpg" style="width: 100%; border: 1px black solid; height: 80%;">
                </div>
            </div>

            <div id="contentRightCover" style="width:49.5%; display: inline-block; border: 1px black solid; position: relative;">
                <div id="content-right"style="width: 100%; height:100%">
                    <div style="text-align: right; margin: 1% 1% 5%;">
                        <span>남은 경매 시간</span> <span>7일 18시간 59분 59초</span>
                    </div>
                    <div style="margin: 5% 0 5% 2%;">
                        <span><strong>작가명 : </strong></span><span></span>
                    </div>
                    <div style="margin: 5% 0 5% 2%;">
                        <span><strong>작품명 : </strong></span><span></span>
                    </div>
                    <div style="margin: 5% 0 5% 2%; width: 100%; padding-right: 2%;">
                        <span><strong>작품설명</strong></span><br>
                        <div>
                            <p style="height: 100%; width: 98%; min-height: 200%;">
                                여기서부터는 지금부터 굉장히 엄청나게 만들어볼건데 이게 줄바꿈이 자동으로 되냐 안되냐에 따라서 나는 매우 즐겁거나 매우 슬플것이다
                                얘가 하면 오마주 내가 하면은 카피 그래서 누가 재범이형이랑 작업해 에에이~
                            </p>
                        </div>
                    </div>
                    <hr style="margin-left: 2%; width: 98%;">
                    <span>
                        <span style="text-align: left; display: inline-block; margin-left: 2%;">경매 시작가</span>
                        <div style="text-align: right; width:79%; float: right; margin-right: 2%;">0원</div>
                    </span>
                    <br clear="all">
                    <hr style="margin-left: 2%; width: 98%;">
                    <span>
                        <span style="text-align: left; display: inline-block; margin-left: 2%;">현재 입찰가</span>
                        <div style="text-align: right; width:79%; float: right; margin-right: 2%;">0원</div>
                    </span>
                    <br clear="all">
                    <hr style="margin-left: 2%; width: 98%;">
                    <span>
                        <span style="text-align: left; display: inline-block; margin-left: 2%;">경매 마감 시간</span>
                        <div style="text-align: right; width:73%; float: right; margin-right: 2%;">2023년 12월 12일 PM 12 : 00</div>
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
            
            }
    </script>
</body>
</html>