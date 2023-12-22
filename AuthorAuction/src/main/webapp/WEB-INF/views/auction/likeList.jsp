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
        <div id="divine" style="width: 100%; height: 100%;">
            <div id="headline" style="width: 70%;  margin: auto;">
                <div style="width: 100%; margin-top: 5%; margin-bottom: 5%; font-size: x-large; font-weight: 1000;">관심 경매 목록</div>
                <div id="btnPlace" style="width: 100%;">
                    <div class="seeWhich" style="background: gray; width: 9%; display: inline-block; text-align: center; padding: 1%;" onclick="hi();">전체 보기</div>
                    <div class="seeWhich" style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;" id="ongoing">진행중인 경매</div>
                    <div class="seeWhich" style="background: lightgray; width: 9%; display: inline-block; text-align: center; padding: 1%;" id="scheduled">종료된 경매</div>
                </div>
                <div style="width: 100%; height: 100%; display: flex; align-items: center; justify-content: center; text-align: center; border-top: 1px black solid; border-bottom: 1px black solid;">
                    <div style="width: 14%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;"><input type="checkbox"> 전체 선택</div>
                    <div style="width: 14%; display: inline-block;  margin-top: 1%; margin-bottom: 1%;">경매 번호</div>
                    <div style="width: 14%; display: inline-block;">작품 사진</div>
                    <div style="width: 14%; display: inline-block;">작가 명</div>
                    <div style="width: 14%; display: inline-block;">작품 명</div>
                    <div style="width: 14%; display: inline-block;">경매 기간</div>
                    <div style="width: 14%; display: inline-block;">입찰 금액</div>
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
            
        }

        const hi = () =>{
        }

    </script>
</body>
</html>