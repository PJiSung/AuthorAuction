<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>	 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
.myInfo tr td:last-child{
	width:70%;
}
input[type=text]{
	border:none;
    height: 30px;
    width: 160%;
    
}
input[type=text]:hover{
	border-bottom: 1px solid gray;
	height: 30px;
}
input[type=text]:focus{
	border-bottom: 2px solid black;
	outline: none;
}
</style>
<script>

let beforeData = null;
let beforeIndex = null;
window.onload = () =>{
	tab2();
	tabs();
	checkPwd();
	checkRePwd();
	changeMember();
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

checkNowPwd = false;
const checkPwd = () =>{
	let pwd = document.getElementById("nowPw");
	pwd.addEventListener("blur",()=>{
		$.ajax({
			type: 'post',
	 		url: 'checkPwd',
	 		data: {pwd: pwd.value},
	 		success: (data) =>{
	 			if(data == "success"){
	 				checkNowPwd = true;
	 			}else{
	 				checkNowPwd = false;
	 			}
	 		},
	 		error: data => console.log(data)
	 		});			
	})
}

checkReNewPwd = false;
const checkRePwd = () =>{
	let rePwd = document.getElementById("reNewPw");
	rePwd.addEventListener("change", function(){
	 	let memPwd = document.getElementsByName("newPw")[0].value;
	 	if(memPwd == this.value){
	 		this.style.borderBottomColor = '#8FFF8F';
	 		checkReNewPwd = true;
	 	}else{
	 		this.style.borderBottomColor = 'red';
	 		checkReNewPwd = false;
	 	}
	});
}

const submitBtn = () =>{
	let form = document.getElementById("updatePwForm");
	if(checkNowPwd && checkReNewPwd){
		form.submit();
	}else if(!checkNowPwd){
		alert("비밀번호를 정확하게 입력해 주세요.");
	}else if(!checkReNewPwd){
		alert("새 비밀번호와 비밀번호 확인이 일치하지 않습니다");
	}
}

function sample6_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var addr = '';
            var extraAddr = '';

            if (data.userSelectedType === 'R') {
                addr = data.roadAddress;
            } else {
                addr = data.jibunAddress;
            }

            if(data.userSelectedType === 'R'){
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
} 

const changeMember = () =>{
let tds = document.querySelectorAll(".myInfo tr td:last-child");
	
	/* document.querySelector('body').addEventListener('click', (event) =>{
		if(beforeIndex != null && tds[beforeIndex].innerHTML != beforeData && event.target.tagName != 'INPUT'){
			tds[beforeIndex].innerHTML = beforeData;
		}
	}) */
	
	/* document.querySelector('body').addEventListener('click', (event) =>{
		console.log(event.target);
		console.log(beforeIndex)
		console.log(tds[beforeIndex].children[0]);
		if(event.target == tds[beforeIndex].children[0]){
			console.log("같음");
		}
		if(beforeIndex != null && event.target != beforeData){
			tds[beforeIndex].innerHTML = beforeData;
		}
	}) */
	
	for(let i=0; i<tds.length; i++){
		tds[i].addEventListener("click", function(){
			if(beforeIndex != i){
				if(beforeIndex != null && tds[beforeIndex].innerHTML != beforeData){
					tds[beforeIndex].innerHTML = beforeData;
				}
				
				if(i != 5 && i != 6){
					beforeData = this.innerHTML;
					beforeIndex = i;
					if(i == 0){
						let nickName = this.querySelector("h3");
						nickName.innerHTML = '<input type="text" class="updateData" value="${ loginUser.memNickName }">'
						
					}else if(i == 1){
						this.innerHTML = '<input type="text" class="updateData" value="${ loginUser.memName }">'
						
					}else if(i == 2){
						const table = document.createElement("table");
						const tr1 = document.createElement("tr");
						const email = document.createElement("td");
						email.innerHTML = '<input type="text" id="email" placeholder="변경할 이메일">';
						const authBtn = document.createElement("td");
						authBtn.innerHTML = '<input type="button" value="인증번호 발송" onclick="sendAuthNo(1)">';
						tr1.append(email);
						tr1.append(authBtn);
						
						const tr2 = document.createElement("tr");
						const authNo = document.createElement("td");
						authNo.innerHTML = '<input type="text" id="authNum" placeholder="인증코드 입력">';
						const checkAuthNo = document.createElement("td");
						checkAuthNo.innerHTML = '<input type="button" value="확인" onclick="checkNum1('+i+')">';
						tr2.append(authNo);
						tr2.append(checkAuthNo);
						
						table.append(tr1);
						table.append(tr2);
						
						this.innerHTML = "";
						this.append(table);
						
					}else if(i == 3){
						const table = document.createElement("table");
						const tr1 = document.createElement("tr");
						const phoneNo = document.createElement("td");
						phoneNo.innerHTML = '<input type="text" id="phone" placeholder="변경할 전화번호">';
						const authBtn = document.createElement("td");
						authBtn.innerHTML = '<input type="button" value="인증번호 발송" onclick="sendAuthNo(2)">';
						tr1.append(phoneNo);
						tr1.append(authBtn);
						
						const tr2 = document.createElement("tr");
						const authNo = document.createElement("td");
						authNo.innerHTML = '<input type="text" id="authNum" placeholder="인증코드 입력">';
						const checkAuthNo = document.createElement("td");
						checkAuthNo.innerHTML = '<input type="button" value="확인" onclick="checkNum2('+i+')">';
						tr2.append(authNo);
						tr2.append(checkAuthNo);
						
						table.append(tr1);
						table.append(tr2);
						
						this.innerHTML = "";
						this.append(table);
						
					}else if(i == 4){
						const table = document.createElement("table");
						const tr1 = document.createElement("tr");
						const addNo = document.createElement("td");
						addNo.innerHTML = '<input type="text" id="sample6_postcode" value="${ fn:split(loginUser.memAddress, '@')[0]}" readonly="readonly">';
						const addBtn = document.createElement("td");
						addBtn.innerHTML = '<input type="button" value="우편번호 검색" onclick="sample6_execDaumPostcode()" readonly="readonly">';
						tr1.append(addNo);
						tr1.append(addBtn);
						
						const tr2 = document.createElement("tr");
						tr2.setAttribute("colspan", "2");
						const addAdd = document.createElement("td");
						addAdd.innerHTML = '<input type="text" id="sample6_address" value="${ fn:split(loginUser.memAddress, '@')[1] }" readonly="readonly">';
						tr2.append(addAdd);
						
						const tr3 = document.createElement("tr");
						const addDetail = document.createElement("td");
						addDetail.innerHTML = '<input type="text" id="sample6_detailAddress" class="updateData" value="${ fn:split(loginUser.memAddress, '@')[2] }">';
						const addEtc = document.createElement("td");
						addEtc.innerHTML = '<input type="text" id="sample6_extraAddress" value="${ fn:split(loginUser.memAddress, '@')[3] }" readonly="readonly">';
						tr3.append(addDetail);
						tr3.append(addEtc);
						
						table.append(tr1);
						table.append(tr2);
						table.append(tr3);
						this.innerHTML = "";
						this.append(table);
					}
					
					const updateDatas = document.getElementsByClassName('updateData');
					for(let k=0; k<updateDatas.length; k++){
						updateDatas[k].addEventListener("keyup", function(event){
							if(event.key == "Enter"){
								let datas = "";
								if(i == 0 || i == 1){
									datas = this.value;
								}else{
									let address = "";
									address += document.getElementById("sample6_postcode").value+"@";
									address += document.getElementById("sample6_address").value+"@";
									address += document.getElementById("sample6_detailAddress").value+"@";
									address += document.getElementById("sample6_extraAddress").value;
									
									datas = address;
								}
								
								if(i == 0){
									$.ajax({
								 		url: 'checkNickName',
								 		data: {memNickName: datas},
								 		success: (data) =>{
								 			if(data == 0){
								 				$.ajax({
											 		url: 'updateMember',
											 		data: {memNickName: datas},
											 		success: (data) =>{
											 			if(data == 1){
											 				let nickName = tds[beforeIndex].querySelector("h3");
											 				let updateData = '<input type="text" value="'+datas+'">';
											 				nickName.innerHTML = updateData;
											 				console.log(beforeData.split("<h3>")[1]);
											 				let beforeDataArr = beforeData.split("<h3>");
											 				beforeData = beforeDataArr[0]+"<h3>"+updateData+"</h3>";
											 				this.style.borderBottom = "none";
											 			} else {
											 				alert("수정이 실패하여 페이지가 새로고침 됩니다.");
											 				location.reload();
											 			}
											 		},
											 		error: data => console.log(data)
											 		});
								 			} else {
								 				alert("중복된 닉네임입니다.");
								 			}
								 		},
								 		error: data => console.log(data)
								 		});
								}else if(i == 1){
									
									$.ajax({
								 		url: 'updateMember',
								 		data: {memName: datas},
								 		success: (data) =>{
								 			if(data == 1){
								 				tds[beforeIndex].innerHTML = '<input type="text" value="'+datas+'">';
								 				this.style.borderBottom = "none";
								 			} else {
								 				alert("수정이 실패하여 페이지가 새로고침 됩니다.");
								 				location.reload();
								 			}
								 		},
								 		error: data => console.log(data)
								 		});
								}else if(i == 4){
									
									$.ajax({
								 		url: 'updateMember',
								 		data: {memAddress: datas},
								 		success: (data) =>{
								 			if(data == 1){
								 				tds[beforeIndex].innerHTML = '<input type="text" value="'+datas+'">';
								 				this.style.borderBottom = "none";
								 			} else {
								 				alert("수정이 실패하여 페이지가 새로고침 됩니다.");
								 				location.reload();
								 			}
								 		},
								 		error: data => console.log(data)
								 		});
								}
							}
						});
					}
				}
			}
		});
	}
}

authNum = 0;
const sendAuthNo = (value) =>{
	if(value == 1){
    	let email = document.getElementById("email");
    	if(email.value != ""){
    		alert("인증번호를 발송했습니다. 인증번호가 오지 않으면 입력하신 정보를 확인해 주세요.");
    	    $.ajax({
    	        type : 'get',
    	        url : 'emailAuthentication',
    	        data: {email: email.value},
    	        success : function (data) {
    	        	if(data != 0){
						authNum = data;
					}else{
						authNum = null;
					}
					console.log(authNum);
    	        }         
    		}); 
    	}
	}else{
		let phone = document.getElementById("phone");
		if(phone.value != ""){
			alert("인증번호를 발송했습니다. 인증번호가 오지 않으면 입력하신 정보를 확인해 주세요.");
			$.ajax({
				url: "authentication",
				data: {phone : phone.value},
				success: (data) =>{
					if(data != 0){
						authNum = data;
					}else{
						authNum = null;
					}
					console.log(authNum);
				},
				error : data => console.log
			});
		}
	}
}

const checkNum1 = (value) =>{
	let inputNum = document.getElementById("authNum");
	let tds = document.querySelectorAll(".myInfo tr td:last-child");
	let email = document.getElementById("email");
	if(authNum == inputNum.value){
		$.ajax({
			url: "updateMember",
			data: {memEmail : email.value},
			success: (data) =>{
				if(data == 1){
					tds[value].innerHTML = '<input type="text" value="'+email.value+'">';
				}else{
					alert("수정이 실패하여 페이지가 새로고침 됩니다.");
	 				location.reload();
				}
			},
			error : data => console.log
		});
	}else{
		alert("인증번호가 일치하지않습니다");
		inputNum.focus();
	}
}

const checkNum2 = (value) =>{
	let inputNum = document.getElementById("authNum");
	let tds = document.querySelectorAll(".myInfo tr td:last-child");
	let phone = document.getElementById("phone");
	if(authNum == inputNum.value){
		$.ajax({
			url: "updateMember",
			data: {memPhone : phone.value},
			success: (data) =>{
				if(data == 1){
					tds[value].innerHTML = '<input type="text" value="'+phone.value+'">';
				}else{
					alert("수정이 실패하여 페이지가 새로고침 됩니다.");
	 				location.reload();
				}
			},
			error : data => console.log
		});
	}else{
		alert("인증번호가 일치하지않습니다");
		inputNum.focus();
	}
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
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					</td>
					<td>${ loginUser.memId }<br><h3><input type="text" value="${ loginUser.memNickName }"></h3></td> 			
	    		</tr>
	    	</table>
	    </div>
	    		
	    <div class="info">
	        <h3>선택정보</h3>
	        <table>
	       		<tr>
	        		<td>이름</td>
	        		<td><input type="text" value="${ loginUser.memName }"></td>
	        	</tr>
	        	<tr>
	        		<td>이메일</td>
	        		<td><input type="text" value="${ loginUser.memEmail }"></td>
	        	</tr>
	        	<tr>
	        		<td>전화번호</td>
	        		<td><input type="text" value="${ loginUser.memPhone }"></td>
	        	</tr>
	        	<tr>
	        		<td>주소</td>
	        		<td><input type="text" value="(${ fn:split(loginUser.memAddress, '@')[0] }) ${ fn:split(loginUser.memAddress, '@')[1] } ${ fn:split(loginUser.memAddress, '@')[2] }${ fn:split(loginUser.memAddress, '@')[3] }"></td>
	        	</tr>
	        	<tr>
	        		<td>회원등급</td>
	        		<td>${ loginUser.memRating }</td>
	        	</tr>
	        	<tr>
	        		<td>충전금</td>
	        		<td><fmt:formatNumber type="number" value="${ loginUser.memBalance }"/>원</td>
	        	</tr>
	        </table>
	    </div>
	    
	    <div class="withdrawal">
	        <h3>회원탈퇴</h3>
	        <br>
	        <a>더 이상 어서옥션 계정 이용을 원하지 않으신다면,계정을 삭제하실 수 있습니다.<br>계정 삭제 전에 유의 사항을 확인해주세요.</a><br><br>
	        
	       	<div class="form-footer btn-box">
				<a class="btnset2 btnset-lg btnset-rect" href="deleteMemberView">탈퇴하기</a>
		    </div>
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
				        <form action="updatePwd" method="post" id="updatePwForm">
							<div class="category">
								<div class="inputset inputset-line inputset-lg">
<<<<<<< HEAD
									<input type="text" class="inputset-input form-control"
=======
									<input type="password" class="inputset-input form-control"
>>>>>>> branch 'main' of https://github.com/PJiSung/AuthorAuction.git
										placeholder="현재 비밀번호" aria-label="nowPw" name="nowPw" id="nowPw">
								</div>
								<div class="inputset inputset-line inputset-lg">
<<<<<<< HEAD
									<input type="text" class="inputset-input form-control"
=======
									<input type="password" class="inputset-input form-control"
>>>>>>> branch 'main' of https://github.com/PJiSung/AuthorAuction.git
										placeholder="새 비밀번호" aria-label="newPw" name="newPw" id="newPw">
								</div>
								<div class="inputset inputset-line inputset-lg" id="authDiv1">
									<input type="password" class="inputset-input form-control"
										placeholder="새 비밀번호 확인" aria-label="reNewPw" id="reNewPw">
								</div>
							</div>
							<div class="btn-box">
								<a class="btnset2 btnset-lg btnset-rect" href="javascript:void(0)"
									onclick="submitBtn()">확인</a>
							</div>
						</form>
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