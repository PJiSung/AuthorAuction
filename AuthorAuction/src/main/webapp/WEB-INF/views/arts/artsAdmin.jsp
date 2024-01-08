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

<main>
	<div style = "display:flex;">
	
	<div style = "width: 10%; background-color: #444; text-align:center; ">
		<h1>관리자 페이지</h1>
		<ul>
			<li style = "background-color: white;">하<li>
			<li>하<li>
			<li>하<li>
		
		</ul>
	
	</div>
		<div style = "height: 120vh; width: 90%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
		
		
			<div style = "border: 1px solid green; width: 70%; height: 90%;">
					<div style = "height: 10%; display: flex; align-items:center;"><h1>미술품 조회</h1></div>	
						<form action = "artsadmin.ar" method = "get">	
					<div style = "width: 80%; border: 1px solid black; margin: 0 auto; height: 30vh" >
					
							<div style = "display:flex; align-items:center; height: 20%; border: 1px solid red;">
								<div  style = "display:flex; width: 15%; align-items:center; justify-content:center;">
									<h3>검색어</h3>
								</div>
								<div  style = "display:flex;  width: 15%; align-items:center; justify-content:center;">
									<select name = "condition">
											<option value = "all">전체</option>
											<option value = "proNo">작품번호</option>
											<option value = "proName">작품명</option>
											<option value = "proWriter">작가명</option>
											<option value = "proMaterial">재료</option>
									</select>
								</div>
								<div  style = "display:flex;  width: 70%; align-items:center; justify-content:center;">
										<input type = "text" name = "keyword" placeholder = "검색어를 입력해주세요" style = "width: 70%; text-align:center;">
								</div>
							</div>
							
							<div style = "display:flex; align-items:center; height: 20%;">
								<div  style = "display:flex;  width: 15%;  align-items:center; justify-content:center;">
									<h3>등록일</h3>
								</div>
								<div  style = "display:flex;  width: 40%;  align-items:center; justify-content:center;">
										<input type = "date" name = "startDate" placeholder = "시작일" style = "width: 80%; text-align:center;">
								</div>
								<div  style = "display:flex;  width: 5%;  align-items:center; justify-content:center;">
										<h3>~</h3>
								</div>
								<div  style = "display:flex;  width: 40%;  align-items:center; justify-content:center;">
										<input type = "date" name = "endDate" placeholder = "종료일" style = "width:80%; text-align:center;">
								</div>
							</div>
							<div style = "display:flex; align-items:center; height: 20%;">
								<div  style = "display:flex;  width: 15%;  align-items:center; justify-content:center;">
									<h3>가격</h3>
								</div>
								<div  style = "display:flex;  width: 40%;  align-items:center; justify-content:center;">
										<input type = "text" name = "minPrice" class = "searchinput" placeholder = "최저가" style = "width: 80%; text-align:center;">
								</div>
								<div  style = "display:flex;  width: 5%;  align-items:center; justify-content:center;">
										<h3>~</h3>
								</div>
								<div  style = "display:flex;  width: 40%;  align-items:center; justify-content:center;">
										<input type = "text" name = "maxPrice"class = "searchinput"  placeholder = "최고가" style = "width:80%; text-align:center;">
								</div>
							</div>
							<div style = "display:flex; align-items:center; height: 40%;">
								<div  style = "display:flex;  width: 15%;  align-items:center; justify-content:center;">
									<h3>크기</h3>
								</div>
								<div  style = " width: 40%; border: 1px solid red; height: 100%; display:flex; align-items:center; justify-content:center; flex-direction:column;">
										<input type = "text" name = "minWidth" class = "searchinput" placeholder = "가로 최소" style = "width: 80%; text-align:center;">
										<br>
										<input type = "text" name = "minHeight" class = "searchinput" placeholder = "세로 최소" style = "width: 80%; text-align:center;">
								</div>
								<div  style = "display:flex;  width: 5%;  align-items:center; justify-content:center;">
										<h3>~</h3>
								</div>
								<div  style = " width: 40%; border: 1px solid red; height: 100%; display:flex; align-items:center; justify-content:center; flex-direction:column;">
										<input type = "text" name = "maxWidth" class = "searchinput" placeholder = "가로 최대" style = "width: 80%; text-align:center;">
										<br>
										<input type = "text" name = "maxHeight" class = "searchinput" placeholder = "세로 최대" style = "width: 80%; text-align:center;">
								</div>
							</div>
					</div>	
					<div style = "display:flex; align-items:center; justify-content:center;">
					<button style = "background-color:#444; color:white; border: none; width: 5%; margin-right: 1%;">검색</button>
					<button type = "reset" style = "background-color:#ddd; border: none; width: 5%; margin-left: 1%;">초기화</button>
					</div>
						</form>
						
				<div style = " overflow: scroll; height: 60%; ">
					<div style = "display:flex; justify-content:center; align-items:center; height: 10%; border-bottom: 1px solid #999; border-top: 1px solid #999; width: 80%; margin: 0 auto; margin-top: 5%;"><h3>검색결과</h3></div>
					<div>
						<div style = "display:flex; justify-content:center; align-items:center; height: 10%; border-bottom: 1px solid #999; border-top: 1px solid #999; width: 80%; margin: 0 auto;">하하</div>
						<div>하하</div>
						<div>하하</div>
						<div>하하</div>
						<div>하하</div>
					</div>
				</div>
				
			</div>

		</div>
	</div>	
</main>



<jsp:include page="../common/footer.jsp"/>
 <script src="sunwoo/jquery/jquery-3.7.1.min.js"></script>
<script>

	
	
		//숫자만 들어가게끔 하는 스크립트
		$(".searchinput").keyup(function(e) {
			
			
			if(isNaN(this.value)   || this.value.trim() == "" ){
				
				alert('숫자만 입력해주십시오');
				this.value = "";
				
			}
		});


 	
		</script>

</body>
</html>