<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

.pldiv:hover{
background-color: #eee;
cursor:pointer;
}


</style>
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
					<div style = "display:flex; justify-content:right; align-items:center; height: 10%; border-bottom: 1px solid #999; border-top: 1px solid #999; width: 80%; margin: 0 auto;">총 &nbsp;<span style = "font-weight: bold;">${plistsize}</span>&nbsp; 검색결과</div>
					<c:if test = "${plistsize eq 0}">
					<div style = "display: flex;justify-content:center; align-items:center; height: 50%;"><h1>검색 결과 없음</h1></div>
					</c:if>
					<c:if test = "${plistsize != 0 }">
					
						<div style = "border: 1px solid red; display:flex; align-items:center;">
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">번호</div>
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">이미지</div>
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">작품명</div>
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">작가명</div>
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">재료</div>
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">가로</div>
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">세로</div>
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">등록일</div>
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">가격</div>
							<div style = "border: 1px solid red; width: 10%; display:flex; align-items:center; justify-content:center; font-weight: bold; font-size: 20px;">재고</div>
						</div>
						<c:forEach items = "${plist}" var = "p">
								<div style = "height:25%; border: 1px solid red; display:flex; align-items:center;" class = "pldiv">
									<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
										${p.proNo}
									</div>
									<c:forEach items = "${alist}" var= "a">
										<c:if test = "${a.attBno eq p.proNo }">
											<input type = "hidden" value = "${a.attRename}" class = "attrename">
												<c:if test = "${a.attFno eq 1}">
											<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
											<img class="cardset-img" src="/sunwoo/proimages/${a.attRename}" style = "width:90%; height: 90%;" alt="카드 이미지">
											</div>
											</c:if>
										</c:if>
									</c:forEach>
									<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
										${p.proName}
									</div>
									<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
										${p.proWriter}
									</div>
									<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
										${p.proMaterial}
									</div>
									<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
										${p.proWidth}<small>&nbsp; cm</small>
									</div>
									<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
										${p.proHeight}<small>&nbsp; cm</small>
									</div>
									<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
										${p.proDate}
									</div>
									<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
										<span class = "pprice">${p.proPrice}</span><small>원</small>
									</div>	
									<div style ="width: 10%; height: 100%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
										${p.proAmount}
									</div>	
<!-- 							 <div class="cursor" style = "background-color: black; color:white;  position:absolute; -->
<!-- /* 								    top:0; */ -->
<!-- /* 								    left: 0; */ -->
<!-- /* 								    z-index: 9999; */ -->
<!-- /* 								    width: 350px; */ -->
<!-- /* 								    height: 100px; */ -->
<!-- 								    transform:translate(-50%, -50%);"> -->
<!-- 								 하하; -->
<!--     						</div> -->
								
								</div>						
						</c:forEach>
					</c:if>
						
				</div>
				
			</div>

		</div>
	</div>	
	
	
	<div class="sns_share" style = "position: fixed;
	z-index: 9999;
	padding-top:10vh;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4); display: none;">
	
	<div style = "width: 1200px;
	height: 800px;
	padding: 30px 30px;
	margin: 0 auto;
	border: 1px solid #777;
	background-color: #fff;">
	
 	<span style = "float: right;
	font-weight: bold;
	color: #777;
	font-size: 25px;
	cursor: pointer;" onclick = "popadd('off')">&times;</span>
			<div style = "border: 1px solid red; display:flex; height: 10%;align-items:center; justify-content:center; "><h1>상세조회</h1></div>
			
			<div style = "border:1px solid red; margin-top: 5%; display:flex; height: 80%;" id = "infoalldiv">
				
						   
				
				<div style = "width: 50%; border: 1px solid green;">
										sasdasad
				</div>
				<span style = "position: absolute; left: 17%; top: 55%;" class = "pandn">이전 </span>
				<span style = "position: absolute; left: 47%; top: 55%;" class = "pandn">다음 </span>
			
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
		
<script>

	//천 단위 쉼표 스크립트
			function tochun(){
			for(p of document.getElementsByClassName('pprice')){
			
			p.innerText = p.innerText.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
			
			}
			}
			tochun();
</script>
		
		
<script>


// 	for(pl of document.getElementsByClassName('pldiv')){
					
// 					pl.addEventListener('mouseover',()=>{
						
// 						$(document).mousemove(function(e){
// 						    var mouseX = e.pageX;
// 						    var mouseY = e.pageY;

// 						    $('.cursor').css({
// 						        left: 15+ mouseX + "px",
// 						        top : mouseY + "px"
// 						    })
// 						})
						
						
// 					});
					
// 					pl.addEventListener('mouseover',()=>{
						
												
// 					});
					
					
					
// 	}
		
		
</script>


<script>






//팝업 여는 함수
function popadd(condition){
		
		if(condition == 'on'){
			document.getElementsByClassName('sns_share')[0].style.display = "block";
			
		}else{
			document.getElementsByClassName('sns_share')[0].style.display = "none";
			
			 document.getElementById('infodiv').remove();
				
		}
		
	}
	
	
	
	

for(pl of document.getElementsByClassName('pldiv')){
	
	pl.addEventListener('click', function(){
		
		var imglist = [];
		var imgindex;
		popadd('on');
		
		 var newDiv = document.createElement("div");
		 
		 newDiv.id = 'infodiv';
		 newDiv.style.diplay = 'flex';
		 newDiv.style.alignItems = 'center';
		 newDiv.style.justifyContent = 'center';
		 newDiv.style.width = '50%';
		 newDiv.style.height = '100%';
		 newDiv.style.border = '1px solid red';
		 newDiv.style.overflow = 'hidden';
		 newDiv.style.justifyContent = 'center';
		 document.getElementById('infoalldiv').prepend(newDiv);
		
			for(att of this.querySelectorAll('.attrename')){
				
					
				   let img = new Image();
		           img.src = '/sunwoo/proimages/' + att.value;
		           img.style.width = "100%";
		           img.style.height = "100%";
		           img.id = 'cell';
		           
		           imglist.push(img);
		          
		        	
			};
			
			 document.getElementById('infodiv').appendChild(imglist[0]);
			 imgindex=0;
			 
			for( pn of document.getElementsByClassName('pandn')){
				
				pn.addEventListener('click',function(){
				
						switch(this.innerText){
						
						case '다음': 
							if(imgindex<imglist.length-1){
								document.getElementById('cell').remove();
								imgindex = imgindex+1;
								 document.getElementById('infodiv').appendChild(imglist[imgindex]);
									console.log(imgindex);
							}
							break;
							
						case '이전': 
							if(imgindex>0){
								document.getElementById('cell').remove();
								imgindex = imgindex-1;
								 document.getElementById('infodiv').appendChild(imglist[imgindex]);
								 console.log(imgindex);
							}
							
							break;
							
						}
					
				});
				
			}
			
										
										
	});	
	

}
	
	
	



</script>

</body>
</html>