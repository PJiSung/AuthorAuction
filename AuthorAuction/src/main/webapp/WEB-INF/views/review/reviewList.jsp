<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<link rel="shortcut icon" type="image⁄x-icon"
	href="main/icons/logoImage.png">
<link rel="stylesheet" href="rs/reviewList/css/setting.css">
<link rel="stylesheet" href="rs/reviewList/css/style.css">
<link rel="stylesheet" href="rs/reviewDetail/css/setting.css">
<link rel="stylesheet" href="rs/reviewDetail/css/template.css">
<link rel="stylesheet" href="rs/reviewDetail/css/style.css?ver=1">

<style type="text/css">

.conModal .modalset {
  display: flex;
  flex-direction: column;
  align-items: center;
  position: fixed;
  transition: 0.3s;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  width: 100%;
  max-width: 55rem;
  padding: 5.5rem 1rem;
  background-color: var(--white);
  visibility: hidden;
  opacity: 0;
  z-index: 999;
}

.conModal .modalset.modalset-active {
  visibility: visible;
  opacity: 1;
}

.conModal .modal-header {
  margin-bottom: 1.2rem;
}

.conModal .modal-title {
  font-size: var(--fs-h6);
  font-weight: 700;
  text-align: center;
}

.conModal .modal-body {
  max-height: 26rem;
  overflow-y: auto;
}

.conModal .modal-body p {
  padding: 0 1.7rem;
  text-align: center;
  font-size: var(--fs-p1);
  line-height: var(--lh-p1);
  font-weight: 400;
}

.conModal .modal-footer {
  width: 100%;
  margin-top: 4rem;
  text-align: center;
}

.conModal .modal-footer .btnset {
  width: 100%;
  max-width: 17.6rem;
}

.conModal .modalset-dim {
  display: none;
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(17, 17, 17, 0.5);
  z-index: 300;
}

.basic-N50 .secTd .profilePic {
	display: inline-block;
	width: 35px;
	height: 35px;
	border-radius: 70%;
	overflow: hidden;
	text-align: right;
}

.basic-N50 .secTd .profileImg {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.basic-N50 .cardset-body {
	line-height: 10px;
	width: 100%;
	padding-left: 5px;
	padding-right: 5px;
}

.basic-N50 .cardset-body .firTd {
	text-align: right;
	height: 10px;
}

.basic-N50 .cardset-body .secTd {
	width: 20px;
}

.basic-N50 .cardset-body .cardset-tit {
	padding-left: 10px;
}

.basic-N50 #search-form button {
	border: 0;
	background-color: transparent;
}

.basic-N50 #search-form {
	border-bottom: 1px solid rgba(0, 0, 0);
	width: 140px;
}

.basic-N50 #search-input {
	width: 100px;
	flex: 1;
	border: none;
	outline: none;
	overflow: hidden;
}

.basic-N50 .addReview {
	width: 80px;
	height: auto;
	text-align: center;
	font-size: 1.5rem;
	padding: 2px;
	background-color: black;
	color: white;
	float: right;
	cursor: pointer;
}

.reviewDetail .reviewInfoTab {
	width: 100%;
}

.reviewDetail .reviewInfoTab .firTd {
	width: 50%;
}

.reviewDetail .reviewInfoTab .secTd {
	width: 50%;
	text-align: right;
}

.reviewDetail #proImgTd {
	width: 100px;
	height: 100px;
	overflow: hidden;
}

.reviewDetail .reviewInfoTab img {
	height: 100%;
}

.reviewDetail .contents-brand .profilePic {
	display: inline-block;
	width: 35px;
	height: 35px;
	border-radius: 70%;
	overflow: hidden;
	text-align: right;
}

.reviewDetail .contents-brand .profileImg {
	width: 100%;
	height: 100%;
	object-fit: cover;
}

.reviewDetail .reviewContentPre {
	padding: 8px;
	min-height: 150px;
	font-size: var(--fs-p2);
	font-weight: 400;
	font-family: var(--ff);
	font-size: var(--fs-p3);
}

.reviewDetail .reviewDetailDivs {
	margin-left: 10px;
	font-size: var(--fs-p2);
	font-weight: 400;
}

.reviewDetail .newbadge {
	background: red;
	width: 2.8rem;
	text-align: center;
	line-height: 2.2rem;;
	font-size: 1rem;
	border-radius: 50%;
	color: white;
	margin-left: 10px;
}

.reviewDetail .updateDeleteDiv {
	margin-left: auto;
	font-size: 1.5rem;
	text-align: center;
	cursor: pointer;
}

.reviewDetail .updateButton {
	display: inline-block;
	width: 50px;
	height: auto;
	padding: 2px;
	background-color: white;
	color: black;
	margin-right: 0.5px;
	border: 1px solid black;
}

.reviewDetail .deleteButton {
	display: inline-block;
	width: 50px;
	height: auto;
	padding: 2px;
	background-color: black;
	color: white;
}

.reviewDetail .submitButton {
	float: right;
	font-size: 1.5rem;
	text-align: center;
	cursor: pointer;
	display: inline-block;
	width: 50px;
	height: auto;
	padding: 2px;
	background-color: black;
	color: white;
}

.reviewDetail #textareaId {
	height: 10rem;
	border-color: transparent;
	padding: 1.6rem 0;
	border-radius: 0;
	box-shadow: none;
	font-family: inherit;
	font-size: var(--fs-p4);
	font-weight: 400;
	width: 100%;
	resize: none;
}

.reviewDetail #reviewReplyBut {
	margin-left: auto;
	cursor: pointer;
}

.reviewDetail .badgeset-text {
	border-radius: 0.6rem;
	max-width: 20rem;
	padding: 0.6rem 1.2rem;
	font-size: var(--fs-p4);
	line-height: 1.8rem;
	color: var(--text-color3);
	border: 1px solid #e5e5e5;
}

body.modal-open {
	overflow: hidden;
 }
 
 .reviewDetail .contents-container{
 	padding: 10px;
 }

.modal {
	display: none;
	position: fixed;
	z-index: 1;
	left: 0;
	top: 50%;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgb(0, 0, 0);
	background-color: rgba(0, 0, 0, 0.4);
	transform: translateY(-50%); /* 화면 중앙에 맞추기 위한 추가 */
}

.modal-content {
	background-color: #fefefe;
	margin: 15% auto;
	border: 1px solid #888;
	width: 1100px;
	height: 750px;
}

.close {
	display:inline-block;
	*display:inline;
	float: right;
	margin-right: 15px;
	margin-top: 10px;
	cursor: pointer;
}
.close:after {
	display: inline-block;
	content: "\00d7"; 
	font-size:25pt;
}

.reviewDetail {
	width: 100%;
	height: 100%;
}

#selectImagDiv {
	width: 535px;
	height: 535px;
}

#selectImagDiv img {
	width: 100%;
	height: 100%;
	overflow: hidden;
}

#contentsRightId {
	overflow: auto;
	height: 670px;
	
}

#contentsRightId {
   -ms-overflow-style: none;
}
#contentsRightId::-webkit-scrollbar{
  display:none;
}

#reviewLike{
	margin-left: 5px;
}


</style>
</head>
<body>
	<jsp:include page="../common/header.jsp" />
	<main class="th-layout-main ">
		<div class="basic-N50" data-bid="SclqBZ0HLO" id="">
			<div class="contents-inner">
				<div class="contents-container container-md">
					<div class="textset">
						<h2 class="textset-tit">REVIEW</h2>
						<button class="contents-btn btn-filter" type="button">
							<img src="rs/reviewList/icons/ico_filter_black.svg" alt="모바일 필터 아이콘">
						</button>
					</div>
					<div style="height: 4rem">
						<div class="addReview" id="goWriteReviewButton">등록</div>
					</div>
					<div class="contents-body">
						<div class="contents-sort">
							<p class="contents-sort-total">미술품 리뷰 게시판 설명 솰라랄랄입니다.</p>
							<div class="contents-sort-sel" style="gap: 1rem">
								<div class="tabset tabset-text" style="width: 120px;">
									<ul class="tabset-list">
										<li class="tabset-item">
											<a class="tabset-link active" onclick="selectSort('latest')"> 
												<span>최신순</span>
											</a>
										</li>
										<li class="tabset-item">
											<a class="tabset-link" onclick="selectSort('recommend')"> 
												<span>추천순</span>
											</a>
										</li>
									</ul>
								</div>
								<div class="selectset selectset-round selectset-lg" style="min-width: 12px;">
									<button class="selectset-toggle btn" type="button" style="height: 40px; width: 100px;">
										<span>전체</span>
									</button>
									<ul class="selectset-list" style="width: 100px;">
										<li class="selectset-item">
											<button class="selectset-link btn" type="button" value="전체">
												<span>전체</span>
											</button>
										</li>
										<li class="selectset-item">
											<button class="selectset-link btn" type="button" value="작품명">
												<span>작품명</span>
											</button>
										</li>
										<li class="selectset-item">
											<button class="selectset-link btn" type="button" value="작가명">
												<span>작가명</span>
											</button>
										</li>
									</ul>
								</div>
								<form id="search-form" action="searchReview.rv">
									<input type="hidden" name="category" id="selectedCat">
									<input type="text" id="search-input" placeholder=" Search" name="keyword">
									<button>
										<img alt="검색 버튼" src="main/icons/ico_seach_black.svg">
									</button>
								</form>
							</div>
						</div>

						<div class="contents-list">
							<c:forEach items="${ rList }" var="r">
								<div class="cardset cardset-shopping">
									<c:if test="${ r.hasAttm eq 'Y' }">
										<c:forEach items="${ aList }" var="a">
											<c:if test="${ r.revNo eq  a.attBno && a.attFno == 0 }">
												<figure class="cardset-figure">
													<img class="cardset-img" src="${a.attRename}" alt="리뷰 이미지">
												</figure>
											</c:if>
										</c:forEach>
									</c:if>
									<c:if test="${ r.hasAttm eq 'N' }">
										<figure class="cardset-figure">
											<img class="cardset-img" src="${r.proImage}" alt="작품 이미지">
										</figure>
									</c:if>
									<input type="hidden" value="${ r.hasAttm }" id="hasAttachment">
									<input type="hidden" value="${ r.revNo }" id="reviewNo">
									<input type="hidden" value="${ r.proNo }" id="productNo">
									<input type="hidden" value="${ r.memId }" id="memId">
									<table class="cardset-body">
										<tr>
											<td class="secTd">
												<div class="profilePic">
													<img src="${ r.memFileName }" alt="프로필 사진" class="profileImg">
												</div>
											</td>
											<td>
												<h2 class="cardset-tit">${ r.memNickName }</h2>
											</td>
											<td colspan="2" class="firTd"><span class="cardset-name">${ r.revModifyDate }</span>
											</td>
										</tr>
										<tr>
											<td colspan="3">
												<p class="cardset-desc" id="proNameWriter">${ r.proName }&nbsp;|&nbsp;${ r.proWriter }</p>
											</td>
										</tr>
									</table>
								</div>
							</c:forEach>
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
									<a class="pagiset-link pagiset-prev" href="${ goBack }"> 
										<span class="visually-hidden">이전</span>
									</a>
								</div>
							</c:if>
							<div class="pagiset-list">
								<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
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
									<a class="pagiset-link pagiset-next">
										<span class="visually-hidden">다음</span>
									</a>
								</div>
								<div class="pagiset-ctrl">
									<a class="pagiset-link pagiset-last"> 
										<span class="visually-hidden">마지막</span>
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
									<a class="pagiset-link pagiset-last" href="${ goList }"> 
										<span class="visually-hidden">마지막</span>
									</a>
								</div>
							</c:if>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</main>
	<div id="myModal" class="modal">
		<div class="modal-content">
			<span class="close" id="closeSelectRevMd"></span>
			<div class="reviewDetail" data-bid="qWlQHt9Vh1">
				<form id="reviewDetailForm" method="post">
					<input type="hidden" name="revNo"> 
					<input type="hidden" name="hasAttachment"> 
					<input type="hidden" name="page" value="${ pi.currentPage }">
					<div class="contents-inner">
						<div class="contents-container container-md">
							<div class="contents-left" style="margin: auto; margin-right: 25px; margin-left: 25px;">
								<div class="contents-thumbnail" id="selectImagDiv">
									<img class="contents-thumbimg" src="" alt="리뷰 썸네일">
								</div>
								<ul class="contents-thumblist" id="reviewImgUl"></ul>
							</div>
							<div class="contents-right" id="contentsRightId">
								<div class="contents-right-group">
									<table class="reviewInfoTab">
										<tbody>
											<tr>
												<td class="firTd" id="productName">
													<h4 class="p1 fw-500" style="font-size: var(--fs-p1);"></h4>
												</td>
												<td class="secTd" id="reviewCount"></td>
											</tr>
											<tr>
												<td><h4 class="p1 fw-500" id="productWriter"></h4></td>
												<td class="secTd" id="reviewModifyDate"></td>
											</tr>
											<tr>
												<td id="proImgTd" colspan="2">
													<img src="main/mainPic/product2.png" alt="작품사진" id="proImage">
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="contents-right-group">
									<div class="contents-brand">
										<div class="profilePic">
											<img src="" alt="프로필 사진" class="profileImg" id="memFileName">
										</div>
										<h6 class="reviewDetailDivs" id="memNickname">떡볶이 좋아</h6>
										<div class="updateDeleteDiv">
											<div class="updateButton" id="reviewUpdbut">수정</div>
											<div class="deleteButton" id="reviewDelBut">삭제</div>
										</div>
									</div>
									<div>
										<pre class="reviewContentPre" id="reviewContent"></pre>
									</div>
									<div class="contents-badge-group">
										<div class="contents-brand">
											<div class="contents-brand-group">
												<button class="contents-btn btn-like-line" type="button" id="reviewLikeUp">
													<img src="rs/reviewDetail/icons/ico_like_black_line.svg" alt="하트 라인 아이콘">
												</button>
												<button class="contents-btn btn-like-fill" type="button" id="reviewLikeDown">
													<img src="rs/reviewDetail/icons/ico_like_black_fill.svg" alt="하트 채워진 아이콘">
												</button>
											</div>
										</div>
										<span>좋아요<span id="reviewLike" style="padding-left: 1.2px;"></span></span>
										<div id="reviewReplyBut">
											<span class="badgeset-text">댓글 1</span>
										</div>
									</div>
								</div>
								<div class="contents-right-group" id="replyDiv" style="display: none;">
									<div>
										<div class="writeReplyDiv">
											<h4 class="p1 fw-500" style="display: inline-block;">댓글 작성</h4>
											<div class="submitButton">등록</div>
											<textarea class="inputset-textarea form-control" id="textareaId" placeholder="내용을 입력해주세요."></textarea>
										</div>
									</div>
									<div class="contents-brand">
										<div class="profilePic">
											<img src="${ r.memFileName }" alt="프로필 사진" class="profileImg">
										</div>
										<h6 class="reviewDetailDivs">떡볶이 좋아</h6>
										<div class="reviewDetailDivs">3일전</div>
										<div class="newbadge">NEW</div>
										<div class="updateDeleteDiv">
											<div class="updateButton">수정</div>
											<div class="deleteButton" id="replyDelBut">삭제</div>
										</div>
									</div>
									<div>
										<p class="p2">이뿌네용 저도 살래용</p>
									</div>
								</div>
								<div class="contents-right-group">
									<ul class="contents-right-list">
										<li class="contents-right-item">
											<strong>이 작품의 다른 리뷰</strong>
											<div class="contents-amount">
												<button class="contents-btn btn-minus" type="button">
													<img class="icon-md" src="rs/reviewDetail/icons/ico_chevron_left_black.svg" alt="아이콘">
												</button>
												<button class="contents-btn btn-plus" type="button">
													<img class="icon-md" src="rs/reviewDetail/icons/ico_chevron_right_black.svg" alt="아이콘">
												</button>
											</div></li>
										<li>
											<ul class="contents-thumblist" id="anotherReview"></ul>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>


	<div class="conModal">
		<div id="modalSet1" class="modalset">
			<div class="modal-header">
				<h6 class="modal-title">DELETE</h6>
			</div>
			<div class="modal-body">
				<p></p>
			</div>
			<div class="modal-footer">
				<a class="btnset btnset-confirm" id="delConfirmButton">삭제</a>
				<button type="button" class="btnset btnset-ghost modal-close" id="delCelButton" style="border: 1px solid;">취소</button>
			</div>
		</div>
		<div class="modalset-dim"></div>
	</div>


	<script type="text/javascript">
		window.onload = () =>{
			const selectedButs = document.querySelectorAll('.selectset-link');
			document.getElementById('selectedCat').value = '전체';
			
			for(let i = 0; i < selectedButs.length; i++){
				selectedButs[i].addEventListener('click', function() {
					document.getElementById('selectedCat').value = this.value;
				});
			}
			
			const replyDiv = document.getElementById('replyDiv');
			document.getElementById('reviewReplyBut').addEventListener('click', () =>{
				if(replyDiv.style.display == 'none'){
					replyDiv.style.display = 'block';
				} else{
					replyDiv.style.display = 'none';
				}
			});
			
			document.getElementById('goWriteReviewButton').addEventListener('click', () =>{
				if( '${loginUser}' != '[]' ){
					if( '${oList}' != '[]'){
						location.href='writeReview.rv';					
					} else{
						alert('리뷰 등록 가능한 작품이 없습니다.');
					}
				} else{
					alert('로그인 후 이용 등록 가능합니다.');
					location.href='login';
				}
			});
			
			// 상세보기 모달
			const showModal = () =>{
			   let modal = document.getElementById('myModal');
			   modal.style.display = 'block';
			   document.body.classList.add('modal-open');
			}

			const closeModal = () =>{
			   let modal = document.getElementById('myModal');
			   modal.style.display = 'none';
			   document.body.classList.remove('modal-open');
			}
			
			document.getElementById("closeSelectRevMd").addEventListener('click', ()=>{
				closeModal();
				const anotherReview = document.querySelector('#anotherReview');
				anotherReview.innerHTML = '';
	        });
			
			// 삭제 모달
			const showDelModal = () => {
	            let modal = document.getElementById('modalSet1');
	            let dim = document.querySelector('.modalset-dim');
	            modal.classList.add('modalset-active');
	            dim.style.display = 'block';
	        }

	        const closeDelModal = () => {
	            let modal = document.getElementById('modalSet1');
	            let dim = document.querySelector('.modalset-dim');
	            modal.classList.remove('modalset-active');
	            dim.style.display = 'none';
	        }
	        
	        
	        const delModalBody = document.querySelector('.modal-body').querySelector('p');
	        const revDetailForm = document.getElementById('reviewDetailForm');
			const delConfirmButton = document.getElementById('delConfirmButton');
			document.getElementById('reviewDelBut').addEventListener('click', () =>{
	        	showDelModal();
	        	delModalBody.innerHTML = "정말로 삭제하시겠습니까?<br> 삭제 후 게시글을 되돌릴 수 없습니다.";
	        	delConfirmButton.addEventListener('click', () =>{
	        		revDetailForm.action = 'deleteReview.rv';
	        		revDetailForm.submit();
	        	});
	        });
			
			document.getElementById('replyDelBut').addEventListener('click', () =>{
	        	showDelModal();
	        	delModalBody.innerText = "정말로 삭제하시겠습니까?<br> 삭제 후 댓글을 되돌릴 수 없습니다.";
	        	delConfirmButton.addEventListener('click', () =>{
	        		revDetailForm.action = 'deleteReply.rv';
	        		revDetailForm.submit();
	        	});
	        });
			
			document.getElementById('delCelButton').addEventListener('click', () =>{
				closeDelModal();
			});
			
			document.getElementById('reviewUpdbut').addEventListener('click', () =>{
				revDetailForm.action = 'goUpdateReview.rv';
        		revDetailForm.submit();
			})
			
			const aList = "${aList}";
			const lList = "${lList}";
			const allRlist = "${allRlist}";
			
			const attmArr = aList.replace(/\[Attachment /g, '').replace(/Attachment/g, '').replace(/\]]/g, '').replace(/\[/g, '').split("], ");
			const attmList = attmArr.map(attachments => {
					const attachment = attachments.split(', ');
		
					const attmMap = {};
					attachment.forEach(keyValue => {
						const [key, value] = keyValue.split('=');
						attmMap[key.trim()] = value.trim();
					});
					return attmMap;
				});
			
			const rLikeArr = lList.replace(/\[{/g, '').replace(/\{/g, '').replace(/\}]/g, '').split("}, ");
			const rLikeList = rLikeArr.map(reviewLikes => {
					const likeCount = reviewLikes.split(', ');
		
					const rLikeMap = {};
					likeCount.forEach(keyValue => {
						const [key, value] = keyValue.split('=');
						rLikeMap[key.trim()] = value.trim();
					});
					return rLikeMap;
				});
			
			const allRArr = allRlist.replace(/\[Review /g, '').replace(/Review/g, '').replace(/\]]/g, '').replace(/\[/g, '').split("], ");
			const allRList = allRArr.map(allRs => {
					const allR = allRs.split(', ');
		
					const allRMap = {};
					allR.forEach(keyValue => {
						const [key, value] = keyValue.split('=');
						allRMap[key.trim()] = value.trim();
					});
					return allRMap;
				});
			
			// 리뷰 상세보기
			const cardsetDiv = document.getElementsByClassName('cardset cardset-shopping');
			for(const card of cardsetDiv){
				card.addEventListener('click', () => {
					showModal();
					
					const revNo = card.querySelector('#reviewNo').value;
					document.querySelector('input[name="revNo"]').value = revNo;
					
					const hasAttm = card.querySelector('#hasAttachment').value;
					document.querySelector('input[name="hasAttachment"]').value = hasAttm;
					
					const proNo = card.querySelector('#productNo').value;
					const memId = card.querySelector('#memId').value;
					
					if( '${loginUser.memId}' != memId ){
						$.ajax({
							url: 'updateReviewCount.rv',
							data:{revNo: revNo},
							success: data =>{
								const count = document.querySelector('#reviewCount');
								count.innerText = data;
							}
						})
					};
					
					const lineLikebut = document.getElementById('reviewLikeUp');
					const fillLikebut = document.getElementById('reviewLikeDown');
					
					for(const r of allRList){
						if(r.revNo == revNo){
							document.getElementById('productName').innerText = r.proName;
							document.getElementById('reviewCount').innerText = "조회수 " + r.revCount;
							document.getElementById('productWriter').innerText = r.proWriter;
							document.getElementById('reviewModifyDate').innerText = r.revModifyDate;
							document.getElementById('reviewContent').innerText = r.revContent;
							document.getElementById('memNickname').innerText = r.memNickName;
							document.getElementById('memFileName').src = r.memFileName;
							document.getElementById('reviewLike').innerText = r.revLike;
							document.getElementById('proImage').src = r.proImage;
						}
						
						$.ajax({
							url: 'selectReviewLike.rv',
							data:{revNo: revNo},
							success: data =>{
								const like = document.querySelector('#reviewLike');
								like.innerText = data;
								
								for (const l of rLikeList) {
								    if (l.MEM_ID == '${loginUser.memId}' && l.REV_NO == revNo && revNo == r.revNo) {
								        lineLikebut.style.display = 'none';
								        fillLikebut.style.display = 'block';
			
								        fillLikebut.addEventListener('click', () => {
								            lineLikebut.style.display = 'block';
								            fillLikebut.style.display = 'none';
								        });
								        
								        lineLikebut.addEventListener('click', () => {
								            lineLikebut.style.display = 'none';
								            fillLikebut.style.display = 'block';
								        });
								    };
								};
							}
						});
						
						const selectImagDiv = document.querySelector('#selectImagDiv');
						const reviewImgUl = document.querySelector('#reviewImgUl');
						selectImagDiv.innerHTML = '';
						reviewImgUl.innerHTML = '';
						if(hasAttm == 'Y'){
							for(const a of attmList){
								if(a.attBno == revNo){
									if(a.attFno == '0' ){
										selectImagDiv.innerHTML = '<img class="contents-thumbimg" src="'+ a.attRename +'" alt="리뷰 썸네일">';
									};
									reviewImgUl.innerHTML += '<li class="contents-thumbitem"><img class="contents-thumbimg" src="' + a.attRename + '" alt="썸네일이미지"></li>';
								}
							}
						} else{
							selectImagDiv.innerHTML = '<img class="contents-thumbimg" src="'+ r.proImage +'" alt="리뷰 썸네일">';
							reviewImgUl.innerHTML = '<li class="contents-thumbitem"><img class="contents-thumbimg" src="' + r.proImage + '" alt="썸네일이미지"></li>';
						}
						
						
						const reviewImgs = reviewImgUl.querySelectorAll('img');
						for (const img of reviewImgs) {
						    img.addEventListener('click', function() {
						        const selectImg = this.src;
						        selectImagDiv.querySelector('img').src = selectImg;
						    });
						}
						
						const updateDeleteDiv = document.querySelector('.updateDeleteDiv');
						if('${loginUser.memId}' == r.memId){
							updateDeleteDiv.style.display = 'block';
						} else{
							updateDeleteDiv.style.display = 'none';
						}
						
						
						if(r.proNo == proNo && r.revNo != revNo){
							for(const a of attmList){
								if(r.revNo == a.attBno){
									if(r.hasAttm == 'Y' && a.attFno == '0'){
										anotherReview.innerHTML += '<li class="contents-thumbitem"><img class="contents-thumbimg" src="' + a.attRename + '" alt="썸네일이미지"></li>';
									} else{
										anotherReview.innerHTML += '<li class="contents-thumbitem"><img class="contents-thumbimg" src="' + r.proImage + '" alt="썸네일이미지"></li>';
									}
								}
							}
						}
					}
					
					// 좋아요
					lineLikebut.addEventListener('click', function(){
						if('${loginUser.memId}' != memId){
							$.ajax({
								url: 'insertReviewLike.rv',
								data:{memId: '${loginUser.memId}', revNo: revNo},
								success: data =>{
									console.log(data);
									const like = document.querySelector('#reviewLike');
									like.innerText = data;
								}
							})
						} else{
							alert('작성하신 글을 [좋아요] 버튼을 누를 수 없습니다.');
							lineLikebut.style.display = 'block';
				            fillLikebut.style.display = 'none';
						}
					});
						
					fillLikebut.addEventListener('click', function(){
						$.ajax({
							url: 'deleteReviewLike.rv',
							data:{memId: '${loginUser.memId}', revNo: revNo},
							success: data =>{
								console.log(data);
								const like = document.querySelector('#reviewLike');
								like.innerText = data;
							}
						})
					});
					
				});
				
			};
		}
	</script>
	
	

	<jsp:include page="../common/footer.jsp" />
	<script src="rs/reviewList/js/setting.js"></script>
	<script src="rs/reviewList/js/script.js"></script>
	<script src="rs/reviewDetail/js/setting.js"></script>
	<script src="rs/reviewDetail/js/script.js"></script>
</body>