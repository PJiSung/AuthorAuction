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
.address{
	display:none;
}
</style>
<script>
window.onload = () =>{
	tabs();
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
</script>
</head>
<body>
<jsp:include page="../common/header.jsp"/>
<main class="th-layout-main">
        <div class="tabset tabset-solid">
          <ul class="tabset-list tabset-sm">
            <li class="tabset-item active">
              <a class="tabset-link" href="#">
                <span>내 정보</span>
              </a>
            </li>
            <li class="tabset-item">
              <a class="tabset-link" href="#">
                <span>배송지</span>
              </a>
            </li>
          </ul>
        </div>
        
        <div class="myInfo">
	    <div class="profile">
		    <h3>프로필</h3>
	    	<table>
	    		<tr>
					<td><img src="member/images/defaultProfile.svg">&nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td>아이디<br><h3>닉네임</h3></td> 			
	    		</tr>
	    	</table>
	    </div>
	    		
	    <div class="info">
	        <h3>선택정보</h3>
	        <table>
	       		<tr>
	        		<td>이름</td>
	        		<td>박지성</td>
	        	</tr>
	        	<tr>
	        		<td>이메일</td>
	        		<td>starcr222@mmm.com</td>
	        	</tr>
	        	<tr>
	        		<td>전화번호</td>
	        		<td>010-1111-4444</td>
	        	</tr>
	        	<tr>
	        		<td>주소</td>
	        		<td>서울 특별시 금천구 홍길5동</td>
	        	</tr>
	        	<tr>
	        		<td>회원등급</td>
	        		<td>Gold</td>
	        	</tr>
	        	<tr>
	        		<td>충전금</td>
	        		<td>100000원</td>
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
	    	목록
	    </div>
	    <br><br><br>
</main>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>