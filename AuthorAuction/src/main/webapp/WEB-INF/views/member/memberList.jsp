<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<meta name="title" content="웹사이트">
<title>고객 목록</title>
<link rel="stylesheet" href="member/css/setting.css">
<link rel="stylesheet" href="member/css/plugin.css">
<link rel="stylesheet" href="member/css/template.css">
<link rel="stylesheet" href="member/css/common.css">
<link rel="stylesheet" href="member/css/style.css">
<style>
.searchBox {
	display: flex;
	align-items: center;
	width: 1280px;
	border: 1px solid black;
	padding: 20px;
}
.searchBox table{
	width: 100%;
	padding: 20px;
}
.searchBox table tr{
	height: 50px;
}
.searchBox table .selectset{
	float: left;
	width: 12%;
}

.searchBox table .selectset .selectset-list{
	width: 91%;
}

.searchBox table .inputset{
	float: left;
}

.searchBox table .inputset input[type=text]{
	height: 40px;
}

.searchBox input[type=date]{
	height: 40px;
	border: 1px solid #E0E0E0;
	border-radius: 5px;
}

.searchBox input[type=date]:hover{
	cursor: pointer;
	border: 1px solid black;
}

.searchBox input[type=date]:focus{
	outline: none;
	border: 1px solid black;
}
tr .checkset {
	float: left;
	padding: 10px;
	margin-top: 0px !important;
}

.checkset-input {
  margin-right: 5px; /* 체크박스와 텍스트 사이의 간격 조절 */
}


</style>
<script>
window.onload = () =>{
	selectSet();
	checkAll();
	checkAllSpan();
}

const selectSet = () =>{
	const selectsetToggle = document.querySelectorAll(".selectset-toggle");
	const selectsetLink = document.querySelectorAll(".selectset-link");
		selectsetToggle.forEach((buttonElement) => {
		    const clickEventHandler = (event) => {
		    event.stopPropagation();
		    const button = event.target.closest(".selectset-toggle");
		    const buttonParent = button.closest(".selectset");
		    buttonParent.classList.toggle("active");
		  };
		  buttonElement.removeEventListener("click", clickEventHandler);
		  buttonElement.addEventListener("click", clickEventHandler);
	});
	 
	selectsetLink.forEach((buttonElement) => {
	    const clickEventHandler = (event) => {
		    event.stopPropagation();
		    const button = event.target.closest(".selectset-link");
		    const buttonText = button.querySelector("span").innerHTML;
		    const buttonGrandParent = button.closest(".selectset-list");
		    const buttonParent = button.closest(".selectset-item");
		    const buttonParentSiblings = getSiblings(buttonGrandParent, buttonParent);
		    const buttonSelectsetToggle = button.closest(".selectset").querySelector(".selectset-toggle");
		    
		    buttonParentSiblings.forEach((siblingElement) => {
		        siblingElement.querySelector(".selectset-link").classList.remove("on");
		    });
		    
		    button.classList.toggle("on");
		    buttonSelectsetToggle.querySelector("span").innerHTML = buttonText;
	   	};
		buttonElement.removeEventListener("click", clickEventHandler);
		buttonElement.addEventListener("click", clickEventHandler);
	 });
	  
	function getSiblings(parent, element) {
	    return [...parent.children].filter((item) => item !== element);
	}
	
	const selectedButs = document.querySelectorAll('.selectset-link');
	for(let i = 0; i < selectedButs.length; i++){
	    selectedButs[i].addEventListener('click', function() {
	        document.getElementById('selectedCat').value = this.value;
	    });
	}
}

const checkAll = () =>{
	const cboxs = document.querySelectorAll(".searchBox input[type=checkbox]");
	for(let i=1; i<cboxs.length; i++){
		cboxs[i].checked = cboxs[0].checked;
	}
}

const checkAllSpan = () =>{
	let span = document.querySelector(".checkset span");
	span.addEventListener("click", function(){
		let cbox = document.querySelectorAll(".searchBox input[type=checkbox]")[0];
		if(cbox.checked){
			cbox.checked = false;
		}else if(!cbox.checked){
			cbox.checked = true;
		}
		checkAll();
	});
}

const checkSelect = () =>{
	const checkAllcBox = document.querySelectorAll("input[type=checkbox]")[0];
	const cboxs = document.querySelectorAll("input[name='sub']");
	const checkCboxs = document.querySelectorAll("input[name='sub']:checked");
	if(cboxs.length == checkCboxs.length){
		checkAllcBox.checked = true;
	}else{
		checkAllcBox.checked = false;
	}
};

</script>
</head>

<body>
<jsp:include page="../common/header.jsp"/>
  <main class="th-layout-main ">
    <!-- [S]hooms-N36 -->
    <div class="hooms-N36" data-bid="HNlqYGbwI5" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset textset-h2">
            <h2 class="textset-tit">회원 목록​<br></h2>
          </div>
          <div class="contents-search">
            <div class="contents-form">
            <input type="hidden" name="category" id="selectedCat" value="전체">
            <div class="searchBox">
              	<table>
              		<tr>
              			<td>회원등급</td>
              			<td colspan="3">
							<div class="checkset">
								<input id="checkset-a-1-1" class="checkset-input input-fill" type="checkbox" aria-label="전체" onclick="checkAll()" checked>
								<label class="checkset-label" for="checkset-a-1-1"></label>
								<span class="checkset-text">전체</span>
							</div>
							<div class="checkset">
								<input id="checkset-a-2-1" class="checkset-input input-fill" name="sub" type="checkbox" aria-label="선택" onclick="checkSelect()">
								<label class="checkset-label" for="checkset-a-2-1"></label>
								<span class="checkset-text">선택</span>
							</div>
							<div class="checkset">
								<input id="checkset-a-3-1" class="checkset-input input-fill" name="sub" type="checkbox" aria-label="선택" onclick="checkSelect()">
								<label class="checkset-label" for="checkset-a-3-1"></label>
								<span class="checkset-text">선택</span>
							</div>
						</td>
              		</tr>
              		<tr>
              			<td>검색어</td>
              			<td>
              				<div class="selectset selectset-round selectset-lg">
              				<button class="selectset-toggle btn" type="button" style="height: 40px; width: 100px;">
	                       		<span>전체</span>
		                    </button>
		                    <ul class="selectset-list">
		                       <li class="selectset-item">
		                          <button class="selectset-link btn" type="button" value="전체">
		                             <span>전체</span>
		                          </button>
		                       </li>
		                       <li class="selectset-item">
		                          <button class="selectset-link btn" type="button" value="아이디">
		                             <span>아이디</span>
		                          </button>
		                       </li>
		                       <li class="selectset-item">
		                          <button class="selectset-link btn" type="button" value="이름">
		                             <span>이름</span>
		                          </button>
		                       </li>
		                       <li class="selectset-item">
		                          <button class="selectset-link btn" type="button" value="닉네임">
		                             <span>닉네임</span>
		                          </button>
		                       </li>
                    		</ul>
                    		</div>
                    		<div class="inputset inputset-lg">
			                    <input type="text" class="inputset-input form-control" placeholder="검색어를 입력해주세요." aria-label="내용">
			                </div>
              			</td>
              			<td>
              				
              			</td>
              			<td>
              				<td><button class="btnset btnset-lg btnset-line" type="button">&nbsp;&nbsp;검색&nbsp;&nbsp;</button></td>
              			</td>
              		</tr>
              		<tr>
              			<td>조회 기간</td>
              			<td colspan="3"><input type="date"> ~ <input type="date"></td>
              		</tr>
              	</table>
              	
              </div>
            </div>
          </div>
          <div class="contents-search">
            <p class="contents-result"> 전체<span> ${total }</span>개 </p>
            <div class="contents-form">
              <div class="container">
                <div class="tabset tabset-text">
                  <ul class="tabset-list">
                    <li class="tabset-item">
                      <a class="tabset-link active" href="javascript:void(0)">
                        <span>전체</span>
                      </a>
                    </li>
                    <li class="tabset-item">
                      <a class="tabset-link" href="javascript:void(0)">
                        <span>활동회원</span>
                      </a>
                    </li>
                    <li class="tabset-item">
                      <a class="tabset-link" href="javascript:void(0)">
                        <span>탈퇴회원</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
          <div class="tableset">
            <table class="tableset-table table">
              <colgroup>
                <col>
                <col>
                <col>
                <col>
                <col>
                <col>
                <col>
              </colgroup>
              <thead class="thead-light thead-border-top">
                <tr>
                  <th scope="col">
                  	<input id="checkset-b-1-1" class="checkset-input input-fill" type="checkbox" id="checkAll" name="checkAll" onclick="checkAll1()"> 
                  </th>
                  <th scope="col">아이디</th>
                  <th scope="col">이름</th>
                  <th scope="col">핸드폰</th>
                  <th scope="col">가입일</th>
                  <th scope="col">등급</th>
                  <th scope="col">권한</th>
                  <th scope="col">권한</th>
                </tr>
              </thead>
              <tbody>
               <c:forEach items="${ list }" var="m">
                <tr>
                  <td class="tableset-mobile">
                  	<input id="${m.memId}" value="${ m.memId }" class="checkset-input input-fill" type="checkbox" name="check" onclick="check1()">
                  </td>
                  <td class="tableset-tit tableset-order02">
                      <span>${ m.memId }</span>
                  </td>
                  <td class="tableset-order05">${ m.memName }</td>
                  <td class="tableset-order04">${ m.memPhone }</td>
                  <td class="tableset-order01">
                    ${ m.memDate }
                  </td>
                  <td class="tableset-mobile">${ m.memRating }</td>
                  <td class="tableset-mobile">권한</td>
                  <td class="tableset-mobile">${ m.memStatus }</td>
                </tr>
               </c:forEach>
              </tbody>
            </table>
            
            <input class="btnset btnset-lg" value="선택 삭제" type="button">
	        
	        </div>
	        
			<nav class="pagiset pagiset-line">
				<c:if test="${ pi.currentPage <= 1 }">
				   <div class="pagiset-ctrl">
				      <a class="pagiset-link pagiset-first"> <span
				         class="visually-hidden">처음</span>
				      </a>
				   </div>
				   <div class="pagiset-ctrl">
				      <a class="pagiset-link pagiset-prev"> <span
				         class="visually-hidden">이전</span>
				      </a>
				   </div>
				</c:if>
				<c:if test="${ pi.currentPage > 1 }">
				   <div class="pagiset-ctrl">
				      <c:url var="goFirst" value="${ loc }">
				         <c:param name="page" value="${ pi.startPage }"></c:param>
				      </c:url>
				      <a class="pagiset-link pagiset-first" href="${ goFirst }">
				         <span class="visually-hidden">처음</span>
				      </a>
				   </div>
				   <div class="pagiset-ctrl">
				      <c:url var="goBack" value="${ loc }">
				         <c:param name="page" value="${ pi.currentPage-1 }"></c:param>
				      </c:url>
				      <a class="pagiset-link pagiset-prev" href="${ goBack }"> <span
				         class="visually-hidden">이전</span>
				      </a>
				   </div>
				</c:if>
				<div class="pagiset-list">
				   <c:forEach begin="${ pi.startPage }" end="${ pi.endPage }"
				      var="p">
				      <c:url var="goNum" value="${ loc }">
				         <c:param name="page" value="${ p }"></c:param>
				      </c:url>
				      <c:choose>
				         <c:when test="${p eq pi.currentPage}">
				            <a class="pagiset-link active-fill" href="${ goNum }">${ p }</a>
				         </c:when>
				         <c:otherwise>
				            <a class="pagiset-link" href="${ goNum }">${ p }</a>
				         </c:otherwise>
				      </c:choose>
				   </c:forEach>
				</div>
				
				<c:if test="${ pi.currentPage >= pi.maxPage }">
				   <div class="pagiset-ctrl">
				      <a class="pagiset-link pagiset-next"> <span
				         class="visually-hidden">다음</span>
				      </a>
				   </div>
				   <div class="pagiset-ctrl">
				      <a class="pagiset-link pagiset-last"> <span
				         class="visually-hidden">마지막</span>
				      </a>
				   </div>
				</c:if>
				<c:if test="${ pi.currentPage < pi.maxPage }">
				   <div class="pagiset-ctrl">
				      <c:url var="goNext" value="${ loc }">
				         <c:param name="page" value="${ pi.currentPage+1 }"></c:param>
				      </c:url>
				      <a class="pagiset-link pagiset-next" href="${ goNext }"> <span
				         class="visually-hidden">다음</span>
				      </a>
				   </div>
				   <div class="pagiset-ctrl">
				      <c:url var="goList" value="${ loc }">
				         <c:param name="page" value="${ pi.maxPage }"></c:param>
				      </c:url>
				      <a class="pagiset-link pagiset-last" href="${ goList }"> <span
				         class="visually-hidden">마지막</span>
				      </a>
				   </div>
				</c:if>
			</nav>     

	
	      </div>
      </div>
    </div>
<jsp:include page="../common/footer.jsp"/>
    <!-- [E]hooms-N36 -->
  </main>
<script src="member/js/setting2.js"></script>
<script src="member/js/plugin.js"></script>
<script src="member/js/template.js"></script>
<script src="member/js/common.js"></script>
<script src="member/js/script.js"></script>
</body>