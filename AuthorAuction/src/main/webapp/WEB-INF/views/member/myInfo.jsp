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
<link rel="stylesheet" href="consignment/css/setting.css">
<link rel="stylesheet" href="consignment/css/plugin.css">
<link rel="stylesheet" href="consignment/css/template.css">
<link rel="stylesheet" href="consignment/css/common.css">
<link rel="stylesheet" href="consignment/css/style.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
.tabset{
	margin-top: 80px;
}
.tabset-list span{
	font-size: 30px;
}
.profile, .info, .withdrawal{
	width: 45%;
	margin: 80px auto 0;
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
	margin-top: 15px;
}
.info table{
	margin-top:10px;
	line-height: 50px;
}
.info table tr td:first-child{
	width: 150px;
}
.withdrawal{
	margin-top: 15px;
}
.myInfo{
	display:none;
}
.address{
	display:block;
	height: auto;
	border: 1px solid black;
}
.addList{
	padding-top:10px;
	padding-bottom: 10px;
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
font{
	color: gray;
	font-weight: 400;
}
.th-layout-main{
	min-height: 800px;
}
</style>
<script>
window.onload = () =>{
	tab2();
	tabs();
}



const tab2 = () =>{
	let tab = '${tab}';
	if(tab == "2"){
		myInfo.style.display = "none";
		address.style.display = "block";
	}
}

const tabs = () =>{
	let tabs = document.querySelectorAll('.tabset-item span');
	for(let i=0; i<tabs.length; i++){
		tabs[i].addEventListener('click', function(){
			let myInfo = document.getElementsByClassName("myInfo")[0];
			let address = document.getElementsByClassName("address")[0];
			if(i == 0){
				myInfo.style.display = "block";
				address.style.display = "none";
			}else{
				myInfo.style.display = "none";
				address.style.display = "block";
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
</script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<main class="th-layout-main">
  <div class="hooms-N58" data-bid="brlqg6jlsc">
      <div class="contents-container container-md">
        <div class="tabset tabset-solid">
          <ul class="tabset-list tabset-sm">
            <li class="tabset-item active">
              <a class="tabset-link" href="#tab1">
                <span>내정보</span>
              </a>
            </li>
            <li class="tabset-item">
              <a class="tabset-link" href="#tab2">
                <span>배송지</span>
              </a>
            </li>
          </ul>
          
        </div>
      </div>
    </div>
        
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
	    
	    <div class="address">
	    	<div class="addList">
	    		<c:forEach items="${ list }" var="a" varStatus="status">
	    		<input type="hidden" id="endNo" value="${ status.end }"> 
	    		<c:if test="${ status.index > 0 }">
	    			<hr>
	    		</c:if>
	    		<table>
	    			<tr>
	    				<td><h4>&nbsp;&nbsp;${ a.addRecipient }(${ a.addName }) <c:if test="${ a.addDefault eq 'Y' }"><font>&nbsp;&nbsp;기본배송지</font></c:if></h4></td>
	    				<td><input type="button" value="삭제"></td>
	    				<td><input type="button" value="수정"></td>
	    			</tr>
	    			<tr>
	    				<td colspan="3">&nbsp;&nbsp;${ a.addPhone }</td>
	    			</tr>
	    			<tr>
	    				<td colspan="3">&nbsp;&nbsp;(${ fn:split(a.addAddress, '@')[0] }) ${ fn:split(a.addAddress, '@')[1] } ${ fn:split(a.addAddress, '@')[2] }${ fn:split(a.addAddress, '@')[3] }</td>
	    			</tr>
	    		</table>
	    		</c:forEach>
	    	</div>
	    	
	    </div>
	    	<input type="button" value="배송지 등록" onclick="enrollAddress()">
	    <br><br><br>
</main>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>