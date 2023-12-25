<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
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
<title>로그인</title>
<link rel="stylesheet" href="member/css/setting.css">
<link rel="stylesheet" href="member/css/plugin.css">
<link rel="stylesheet" href="member/css/template.css">
<link rel="stylesheet" href="member/css/common.css">
<link rel="stylesheet" href="member/css/style.css">
</head>
<style>
.category:nth-child(2){
	display:none;
}
</style>
<script>
window.onload = () =>{
	checkRadio();
	category();
}
const submitBtn = () =>{
	document.getElementById('findIdForm').submit();
}
const checkRadio = () =>{
	let spans = document.querySelectorAll(".radio-group span");
	for(let i=0; i<spans.length; i++){
		spans[i].addEventListener("click", function(){
			let radio = document.querySelectorAll("input[type=radio]")[i];
			radio.checked = true;
			if(radio.value == "email"){
				document.getElementsByClassName("category")[0].style.display = "block";
				document.getElementsByClassName("category")[1].style.display = "none";
			}else{
				document.getElementsByClassName("category")[0].style.display = "none";				
				document.getElementsByClassName("category")[1].style.display = "block";				
			}
		});
	}
}
const category = () =>{
	let radios = document.querySelectorAll("input[type=radio]");
	for(let i=0; i<radios.length; i++){
		radios[i].addEventListener("change", function(){
			if(radios[i].value == "email"){
				document.getElementsByClassName("category")[0].style.display = "block";
				document.getElementsByClassName("category")[1].style.display = "none";
			}else{
				document.getElementsByClassName("category")[0].style.display = "none";				
				document.getElementsByClassName("category")[1].style.display = "block";				
			}
		});
	}
}
</script>
<body>
	<main class="th-layout-main ">
		<!-- [S]bloomcity-N10 -->
		<div class="bloomcity-N10" data-bid="DDLQevsBR2">
			<div class="content-container">
				<div class="form-wrap">
					<div class="form-header">
						<h3 class="form-tit">FIND ID</h3>
					</div>
					<div class="form-body">
						 <fieldset class="fieldset">
						 
				          <div class="radio-group">
				            <div class="checkset">
				              <input id="checkset-c-3-1" class="checkset-input input-round" type="radio" name="category" value="email" checked>
				              <label class="checkset-label" for="checkset-c-3-1"></label>
				              <span class="checkset-text">이메일</span>
				            </div>
				            <div class="checkset">
				              <input id="checkset-c-3-2" class="checkset-input input-round" type="radio" name="category" value="phone">
				              <label class="checkset-label" for="checkset-c-3-2"></label>
				              <span class="checkset-text">핸드폰</span>
				            </div>
				          </div>
				          
				        </fieldset>
				        
						<form action="login" method="post" id="findIdForm">
							<div class="category">
								<div class="inputset inputset-line inputset-lg">
									<input type="text" class="inputset-input form-control"
										placeholder="이름" aria-label="Name" name="memName">
								</div>
								<div class="inputset inputset-line inputset-lg">
									<input type="text" class="inputset-input form-control"
										placeholder="이메일" aria-label="Email" name="memEmail">
								</div>
							</div>
							
							<div class="category">
								<div class="inputset inputset-line inputset-lg">
									<input type="text" class="inputset-input form-control"
										placeholder="이름" aria-label="Name" name="memName">
								</div>
								<div class="inputset inputset-line inputset-lg">
									<input type="password" class="inputset-input form-control"
										placeholder="휴대폰 번호" aria-label="Password" name="memPhone">
								</div>
							</div>
							
							<div class="btn-box">
								<a class="btnset2 btnset-lg btnset-rect"
									onclick="submitBtn()">FIND ID</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- [E]bloomcity-N10 -->
	</main>
	<script src="member/js/setting.js"></script>
	<script src="member/js/plugin.js"></script>
	<script src="member/js/template.js"></script>
	<script src="member/js/common.js"></script>
	<script src="member/js/script.js"></script>
</body>