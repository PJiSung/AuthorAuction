<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<link rel="shortcut icon" type="image⁄x-icon" href="main/icons/logoImage.png">
<link rel="stylesheet" href="rs/myOrderdetail/css/setting.css">
<link rel="stylesheet" href="rs/myOrderdetail/css/template.css">
<link rel="stylesheet" href="rs/myOrderdetail/css/style.css">
<title>Insert title here</title>

<style type="text/css">

.productInfo, .paymentInfo, .deliveryInfo, .userInfo{
	width: 100%;
}

.productInfo td, .deliveryInfo td, .userInfo td, .paymentInfo td{
	padding: 3px;
}

.productInfo .tdA{
	width: 10%;
}

.productInfo .tdB{
	width: 30%;
}

.productInfo .tdC{
	width: 10%;
}

.productInfo .tdD{
	width: 30%;
}

.productInfo .tdE{
	width: 20%;
}

.proPicDiv{
	margin: 0 auto;
	width: 110px;
	height: 110px;
}

.productInfo .tdE img{
	width: 100%; 
	height: 100%;
	overflow: hidden;
}

.productInfo{
	border: 0.5px solid #e5e5e5;
	border-radius: 40%;
	padding: 5px;
}


.userInfo input, .deliveryInfo input{
	width: 95%; 
}

.userInfo .tdA, .deliveryInfo .tdA{
	width: 15%;
}

.userInfo .tdB, .deliveryInfo .tdB{
	width: 85%;
}


.paymentInfo .tdA{
	width: 15%;
}

.paymentInfo .tdB{
	width: 20%;
}

.paymentInfo .tdC{
	width: 15%;
}

.paymentInfo .tdD{
	width: 20%;
}

.paymentInfo .tdE{
	width: 30%;
}

.orDetailTitle {
    font-size: 3.5rem;
    text-align: center;
    margin-top:50px; 
    margin-bottom:30px; 
}

.inputset-tit{
	text-align: center;
}

.orderDetailButton{
	text-align: center;
	margin-top: 80px; 
}

.orderDetailButton .btnset-lg, .btnset btnset-lg disabled{
	width: 150px;
	height: 30px;
}

.finalPrice{
	text-align: center;
	font-size: 2rem;
}
</style>
</head>
<body>
  <jsp:include page="../common/header.jsp"/>
  <main class="th-layout-main ">
    <div class="myOrderDetail-a" data-bid="QHlQFySZSW" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="orDetailTitle">주문 정보</h2>
          </div>
          <div class="contents-form">
            <div class="contents-form-top">
              <div class="inputset inputset-lg inputset-label">
                <table class="userInfo">
            		<tr>
            			<td class="tdA"><h6 class="inputset-tit"> 주문번호 </h6></td>
            			<td class="tdB"><input type="text" class="inputset-input form-control" value="201060-200201" readonly="readonly"></td>
            		</tr>
            		<tr>
            			<td><h6 class="inputset-tit"> 주문일자 </h6></td>
            			<td><input type="text" class="inputset-input form-control" value="2023-12-22" readonly="readonly"></td>
            		</tr>
            		<tr>
            			<td><h6 class="inputset-tit"> 주문자명 </h6></td>
            			<td><input type="text" class="inputset-input form-control" value="김가현" readonly="readonly"></td>
            		</tr>
            		<tr>
            			<td><h6 class="inputset-tit"> 연락처 </h6></td>
            			<td><input type="text" class="inputset-input form-control" value="010-1234-1234" readonly="readonly"></td>
            		</tr>
            		<tr>
            			<td><h6 class="inputset-tit"> 주문상태 </h6></td>
            			<td><input type="text" class="inputset-input form-control" value="배송중" readonly="readonly"></td>
            		</tr>
            	</table>
              </div>
            </div>
          </div>
        </div>
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="orDetailTitle">상품 정보</h2>
          </div>
          <div class="contents-form">
            <div class="contents-form-top">
              <div class="inputset inputset-lg inputset-label">
              	<table class="productInfo">
              		<tr>
              			<td class="tdA">
              				<h6 class="inputset-tit">작품명</h6>
              			</td>
              			<td class="tdB">
              				<input type="text" class="inputset-input form-control" value="내 주량은 5000cc" readonly="readonly">
              			</td>
              			<td class="tdC">
              				<h6 class="inputset-tit">가격</h6>
              			</td>
              			<td class="tdD">
              				<input type="text" class="inputset-input form-control" value="2,000,000" readonly="readonly">
              			</td>
              			<td class="tdE" rowspan="2">
              				<div class="proPicDiv">
	              				<img alt="작품사진" src="main/mainPic/product3.png">
              				</div>
              			</td>
              		</tr>
              		<tr>
              			<td>
              				<h6 class="inputset-tit">작가명</h6>
              			</td>
              			<td>
              				<input type="text" class="inputset-input form-control" aria-label="내용" value="김가현" readonly="readonly">
              			</td>
              			<td>
              				<h6 class="inputset-tit">수량</h6>
              			</td>
              			<td>
              				<input type="text" class="inputset-input form-control" aria-label="내용" value="1" readonly="readonly">
              			</td>
              		</tr>
              	</table>
              </div>
               <div class="inputset inputset-lg inputset-label">
              	<table class="productInfo">
              		<tr>
              			<td class="tdA">
              				<h6 class="inputset-tit">작품명</h6>
              			</td>
              			<td class="tdB">
              				<input type="text" class="inputset-input form-control" value="내 주량은 5000cc" readonly="readonly">
              			</td>
              			<td class="tdC">
              				<h6 class="inputset-tit">가격</h6>
              			</td>
              			<td class="tdD">
              				<input type="text" class="inputset-input form-control" value="2,000,000" readonly="readonly">
              			</td>
              			<td class="tdE" rowspan="2">
              				<div class="proPicDiv">
	              				<img alt="작품사진" src="main/mainPic/product2.png">
              				</div>
              			</td>
              		</tr>
              		<tr>
              			<td>
              				<h6 class="inputset-tit">작가명</h6>
              			</td>
              			<td>
              				<input type="text" class="inputset-input form-control" aria-label="내용" value="김가현" readonly="readonly">
              			</td>
              			<td>
              				<h6 class="inputset-tit">수량</h6>
              			</td>
              			<td>
              				<input type="text" class="inputset-input form-control" aria-label="내용" value="1" readonly="readonly">
              			</td>
              		</tr>
              	</table>
              </div>
              <div>
              </div>
            </div>
          </div>
        </div>
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="orDetailTitle">배송 정보</h2>
          </div>
          <div class="contents-form">
            <div class="contents-form-top">
              <div class="inputset inputset-lg inputset-label">
              	<table class="deliveryInfo">
              		<tr>
              			<td class="tdA">
              				<h6 class="inputset-tit">수령자명 </h6>
              			</td>
              			<td class="tdB">
              				<input type="text" class="inputset-input form-control" value="김가현" readonly="readonly">
              			</td>
              		</tr>
              		<tr>
              			<td>
              				<h6 class="inputset-tit">연락처</h6>
              			</td>
              			<td>
              				<input type="text" class="inputset-input form-control" value="010 - 1234 - 1234" readonly="readonly">
              			</td>
              		</tr>
              		<tr>
              			<td rowspan="2" valign="top" style="padding-top: 1.6%;">
              				<h6 class="inputset-tit">배송지</h6>
              			</td>
              			<td>
              				<input type="text" class="inputset-input form-control" value="12345" readonly="readonly" disabled="">
              			</td>
              		</tr>
              		<tr>
              			<td>
              				<input type="text" class="inputset-input form-control" value="사랑시 고백구 행복동 10-04" readonly="readonly">
              			</td>
              		</tr>
              		<tr>
              			<td>
              				<h6 class="inputset-tit">배송 시 요청사항</h6>
              			</td>
              			<td>
              				<input type="text" class="inputset-input form-control" value="문앞에 둬주세용" readonly="readonly">
              			</td>
              		</tr>
              	</table>
              </div>
            </div>
          </div>
        </div>
          
        <div class="contents-container container-md">
           <div class="textset">
             <h2 class="orDetailTitle">결제 정보</h2>
           </div>
           <div class="contents-form">
             <div class="contents-form-top">
               <div class="inputset inputset-lg inputset-label">
               	<table class="paymentInfo">
               		<tr>
               			<td class="tdA">
               				<h6 class="inputset-tit">상품 금액</h6>
               			</td>
               			<td class="tdB">
               				<input type="text" class="inputset-input form-control" value="2,000,000" readonly="readonly">
               			</td>
               			<td class="tdC">
               				<h6 class="inputset-tit">포인트 결제 금액</h6>
               			</td>
               			<td class="tdD">
               				<input type="text" class="inputset-input form-control" value="1,000,000" readonly="readonly">
               			</td>
               			<td class="tdE">
               				<h6 class="finalPrice">최종 결제 금액</h6>
               			</td>
               		</tr>
               		<tr>
               			<td>
               				<h6 class="inputset-tit">배송비</h6>
               			</td>
               			<td>
               				<input type="text" class="inputset-input form-control" value="3,000" readonly="readonly">
               			</td>
               			<td>
               				<h6 class="inputset-tit">카드 결제 금액</h6>
               			</td>
               			<td>
               				<input type="text" class="inputset-input form-control" value="1,000,000" readonly="readonly">
               			</td>
               			<td>
               				<h6 class="finalPrice">2,003,000<small>원</small></h6>
               			</td>
               		</tr>
               	</table>
               </div>
             </div>
           </div>
         </div>
         <div class="orderDetailButton">
          <a href="javascript:void(0)" class="btnset btnset-lg">리뷰 작성</a>
          <a href="javascript:void(0)" class="btnset btnset-lg disabled" th-hoverbox="true">이전</a>
        </div>
      </div>
     </div>
  </main>
  <jsp:include page="../common/footer.jsp"/>
  <script src="rs/myOrderdetail/js/setting.js"></script>
  <script src="rs/myOrderdetail/js/script.js"></script>
</body>
</html>