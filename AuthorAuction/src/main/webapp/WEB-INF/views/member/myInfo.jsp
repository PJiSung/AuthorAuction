<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<meta name="title" content="웹사이트">
<meta name="description" content="웹사이트입니다.">
<meta name="keywords" content="키워드,키워드,키워드">
<meta property="og:title" content="웹사이트">
<meta property="og:description" content="웹사이트입니다">
<meta property="og:image" content="https://웹사이트/images/opengraph.png">
<meta property="og:url" content="https://웹사이트">
<title>마이페이지</title>
<link rel="stylesheet" href="member/css/setting.css">
<link rel="stylesheet" href="member/css/plugin.css">
<link rel="stylesheet" href="member/css/template.css">
<link rel="stylesheet" href="member/css/common.css">
<link rel="stylesheet" href="member/css/style.css">
<link rel="stylesheet" href="consignment/css/setting.css">
<link rel="stylesheet" href="consignment/css/plugin.css">
<link rel="stylesheet" href="consignment/css/template.css">
<link rel="stylesheet" href="consignment/css/common.css">
<link rel="stylesheet" href="consignment/css/style.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
.tabs{
	font-size: 16px;
	display:none;
}
.tabs:nth-child(4) input::placeholder{
	font-size: 16px;
}
.tabs:nth-child(4) .btn-box a{
	height : 50px;
	font-size: 20px;
	line-height: 55px;
}
.tabs:nth-child(4) .form-tit{
	font-size: 30px;
	padding: 0;
}
.tabs:nth-child(2){
	display:block;
}
.tabset{
	margin-top: 80px;
}
.tabset-list span{
	font-size: 30px;
}
.profile, .info, .withdrawal{
	width: 45%;
	margin: 80px auto;
    border: 1px solid black;
    border-radius: 5px;
    padding: 20px;
}
.address{
	width: 45%;
	margin: 80px auto 0;
}
.profile{
    height: 200px;
}
.profile img{
	width: 130px;
	height: 130px;	
}
.profile table{
	margin-top: 10px;
	line-height: 35px;
}
.info{
	margin-top: -65px;
}
.info table{
	margin-top:10px;
	line-height: 50px;
}
.info table tr td:first-child{
	width: 150px;
}
.withdrawal{
	margin-top: -65px;
}
.address{
	height: auto;
	border: 1px solid black;
}
.addList{
	padding-top:10px;
	padding-bottom: 0;
	height: auto;
}
.addList table{
	width:100%;
	line-height: 30px;
}
.addList table tr:first-child td:first-child{
	width:80%;
}
.addList table input[type=button]{
	width: 80%;
}
.addList h2{
	text-align:center;
	padding: 10px;
}
font{
	color: gray;
	font-weight: 400;
}
.enrollAdd{
	width: 45%;
	margin: auto auto 0; 
}
.enrollAdd input[type=button]{
	width: 100%;
	height: 45px;
}
.limit{
	margin-top:10px;
	height: auto;
	background-color: #dcdcdc;
	padding:20px;
	color: gray;
}
.basic-N4{
	margin-top:50px;
}

</style>
<script>

window.onload = () =>{
	tab2();
	tabs();
}

tab = '${tab}';
const tab2 = () =>{
	if(tab == "2"){
		let li = document.querySelectorAll(".tabset-link");
		li[0].className = "tabset-link";
		li[1].className = "tabset-link active";
		li[2].className = "tabset-link";
		document.getElementsByClassName("tabs")[0].style.display = "none";
		document.getElementsByClassName("tabs")[1].style.display = "block";
		window.history.pushState({}, "Title", "/myInfo");
	}
}

const tabs = () =>{
	let tabs = document.querySelectorAll('.tabset-link');
	for(let i=0; i<tabs.length; i++){
		tabs[i].addEventListener('click', function(){
			let tab = document.getElementsByClassName("tabs");
			if(i == 0){
				tab[0].style.display = "block";
				tab[1].style.display = "none";
				tab[2].style.display = "none";
			}else if(i == 1){
				tab[0].style.display = "none";
				tab[1].style.display = "block";
				tab[2].style.display = "none";
			}else{
				tab[0].style.display = "none";
				tab[1].style.display = "none";
				tab[2].style.display = "block";
			}
		});
	}
}

const enrollAddress = () =>{
	let endNo = document.getElementById("endNo").value;
	if(endNo == 4){
		alert("배송지는 5개이상 등록할 수 없습니다.");
	}else{
		location.href='enrollAddress';
	}
}

const deleteAdd = (addNo) =>{
	location.href="deleteAddress?addNo="+addNo;
}

const updateAdd = (addNo) =>{
	location.href="updateAddressView?addNo="+addNo;
}
</script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<main class="th-layout-main">
<div class="glamping-N11" data-bid="dPLqnSJf34" id="">
    <div class="contents-container">
      <div class="tabset tabset-fluid border-bottom">
        <ul class="tabset-list tabset-lg container-md">
          <li class="tabset-item">
            <a class="tabset-link active" href="javascript:void(0)">
              <span>내정보</span>
            </a>
          </li>
          <li class="tabset-item">
            <a class="tabset-link" href="javascript:void(0)">
              <span>배송지</span>
            </a>
          </li>
           <li class="tabset-item">
            <a class="tabset-link" href="javascript:void(0)">
              <span>비밀번호 변경</span>
            </a>
          </li>
        </ul>
      </div>
      
      <div class="tabs">
      <div class="myInfo">
	    <div class="profile">
		    <h3>프로필</h3>
	    	<table>
	    		<tr>
					<td>
						<c:if test="${ loginUser.memFileName eq null }">
							<img src="member/images/defaultProfile.svg">
						</c:if>
						<c:if test="${ loginUser.memFileName ne null }">
							
						</c:if>
					&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td>${ loginUser.memId }<br><h3>${ loginUser.memNickName }</h3></td> 			
	    		</tr>
	    	</table>
	    </div>
	    		
	    <div class="info">
	        <h3>선택정보</h3>
	        <table>
	       		<tr>
	        		<td>이름</td>
	        		<td>${ loginUser.memName }</td>
	        	</tr>
	        	<tr>
	        		<td>이메일</td>
	        		<td>${ loginUser.memEmail }</td>
	        	</tr>
	        	<tr>
	        		<td>전화번호</td>
	        		<td>${ loginUser.memPhone }</td>
	        	</tr>
	        	<tr>
	        		<td>주소</td>
	        		<td>(${ fn:split(loginUser.memAddress, '@')[0] }) ${ fn:split(loginUser.memAddress, '@')[1] } ${ fn:split(loginUser.memAddress, '@')[2] }${ fn:split(loginUser.memAddress, '@')[3] }</td>
	        	</tr>
	        	<tr>
	        		<td>회원등급</td>
	        		<td>${ loginUser.memRating }</td>
	        	</tr>
	        	<tr>
	        		<td>충전금</td>
	        		<td>${ loginUser.memBalance }원</td>
	        	</tr>
	        </table>
	    </div>
	    
	    <div class="withdrawal">
	        <h3>회원탈퇴</h3>
	        <br>
	        <a>더 이상 어서옥션 계정 이용을 원하지 않으신다면,계정을 삭제하실 수 있습니다.<br>계정 삭제 전에 유의 사항을 확인해주세요.</a><br><br>
	        <input type="button" value="탈퇴하기">
	    </div>
	    </div>
	    </div>
	    
	    <div class="tabs">
	    <div class="address">
	    	<div class="addList">
	    	<h2>배송지 관리</h2>
	    	<hr>
	    		<c:forEach items="${ list }" var="a" varStatus="status">
	    		<c:if test="${ status.last }">
		    		<input type="hidden" id="endNo" value="${ status.index }"> 
	    		</c:if>
	    		<c:if test="${ status.index > 0 }">
	    			<hr>
	    		</c:if>
	    		<table>
	    			<tr>
	    				<td><h4>&nbsp;&nbsp;${ a.addRecipient }(${ a.addName }) <c:if test="${ a.addDefault eq 'Y' }"><font>&nbsp;&nbsp;기본배송지</font></c:if></h4></td>
	    				<td>
	    				<c:if test="${ a.addDefault eq 'Y' }">
	    					<input type="button" value="삭제" id="${ a.addNo }" onclick="alert('다른 배송지를 기본 배송지로 변경 후 삭제해주세요.')"><!-- 모달해라 -->
	    				</c:if>
	    				<c:if test="${ a.addDefault eq 'N' }">
	    					<input type="button" value="삭제" id="${ a.addNo }" onclick="deleteAdd(this.id)">
	    				</c:if>
	    				</td>
	    				<td><input type="button" value="수정" id="${ a.addNo }" onclick="updateAdd(this.id)"></td>
	    			</tr>
	    			<tr>
	    				<td colspan="3">&nbsp;&nbsp;${ a.addPhone }</td>
	    			</tr>
	    			<tr>
	    				<td colspan="3">&nbsp;&nbsp;(${ fn:split(a.addAddress, '@')[0] }) ${ fn:split(a.addAddress, '@')[1] } ${ fn:split(a.addAddress, '@')[2] }${ fn:split(a.addAddress, '@')[3] }</td>
	    			</tr>
	    		</table>
	    		</c:forEach>
	    	<div class="limit">
	    		ⓘ 배송지는 최대 5개까지 등록하실 수 있습니다.
	    	</div>
	    	</div>
	    	
	    </div>
	    <br>
	    <div class="enrollAdd">
	    	<input type="button" value="배송지 등록" onclick="enrollAddress()">
	    </div>
	    </div>
	    
	    <div class="tabs">
	    		<main class="th-layout-main ">
		<!-- [S]bloomcity-N10 -->
		<div class="bloomcity-N10" data-bid="DDLQevsBR2">
			<div class="content-container">
				<div class="form-wrap">
					<div class="form-header">
						<h6 class="form-tit">비밀번호 변경</h6>
					</div>
					<div class="form-body">
				        
							<div class="category">
								<div class="inputset inputset-line inputset-lg">
									<input type="text" class="inputset-input form-control"
										placeholder="현재 비밀번호" aria-label="nowPw" name="nowPw" id="nowPw">
								</div>
								<div class="inputset inputset-line inputset-lg">
									<input type="text" class="inputset-input form-control"
										placeholder="새 비밀번호" aria-label="newPw" name="newPw" id="newPw">
								</div>
								<div class="inputset inputset-line inputset-lg" id="authDiv1">
									<input type="text" class="inputset-input form-control"
										placeholder="새 비밀번호 확인" aria-label="reNewPw" id="reNewPw">
								</div>
							</div>
							<div class="btn-box">
								<a class="btnset2 btnset-lg btnset-rect" href="javascript:void(0)"
									onclick="submitBtn()">확인</a>
							</div>
					</div>
				</div>
			</div>
		</div>
		
	</main>
	    </div>
		<jsp:include page="../common/footer.jsp"/>
    </div>
  </div>
</main>

</body>
</html>