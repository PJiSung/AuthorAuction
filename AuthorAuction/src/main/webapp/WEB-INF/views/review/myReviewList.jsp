<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<link rel="stylesheet" href="rs/myReviewList/css/setting.css">
<link rel="stylesheet" href="rs/myReviewList/css/template.css">
<link rel="stylesheet" href="rs/myReviewList/css/common.css">
<link rel="stylesheet" href="rs/myReviewList/css/style.css">
<title>Insert title here</title>

<style type="text/css">
.tableset-proImg img{
   margin: 0;
   width:50px;
   height: 50px;
   overflow: hidden;
}

.tableset-author{
	overflow: hidden;
 	text-overflow: ellipsis;
 	white-space: nowrap;
}

.tableset-content{
	text-overflow:ellipsis; 
	overflow:hidden; 
	white-space:nowrap;
}

.selectDateDiv{
	position: relative;
	left: 9.5%;
}

.selectDateDiv input{
	height: 56px;
	border: 1px solid var(--border-color);
	padding: 10px;
}


</style>
</head>
<body>
  <jsp:include page="../common/header.jsp"/>
  <main class="th-layout-main ">
    <!-- [S]myReview -->
    <div class="myReview" data-bid="ftLQde19y6">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset textset-h2">
            <h2 class="textset-tit">MY PAGE - REVIEW</h2>
          </div>
          <div class="tabset tabset-brick">
            <ul class="tabset-list tabset-sm tabset-fill">
              <li class="tabset-item">
                <div class="tabset-link" id="reviewListbutton">
                  작성한 리뷰
                </div>
              </li>
              <li class="tabset-item">
                <div class="tabset-link" id="replyListbutton">
                  작성한 댓글
                </div>
              </li>
            </ul>
          </div>
          <div id="myPage-reviewListDiv">
	          <div class="contents-search">
	            <p class="contents-result"> 전체<span> 24</span>개 </p>
	            <div class="selectDateDiv">
	            	<input type="date">&nbsp;-&nbsp;
	            	<input type="date">
	            </div>
	            <div class="contents-form">
	              <div class="selectset selectset-lg">
	                <button class="selectset-toggle btn" type="button">
	                  <span>전체</span>
	                </button>
	                <ul class="selectset-list">
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="전체">
	                      <span>전체</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="전체">
	                      <span>작품명</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="전체">
	                      <span>작가명</span>
	                    </button>
	                  </li>
	                </ul>
	              </div>
	              <div class="inputset inputset-lg">
	                <button class="inputset-icon icon-right icon-search btn" type="button" aria-label="아이콘"></button>
	                <input type="text" class="inputset-input form-control" placeholder="Serach" aria-label="내용">
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
	                  <th scope="col">No.</th>
	                  <th scope="col">사진</th>
	                  <th scope="col">작품명</th>
	                  <th scope="col">작가명</th>
	                  <th scope="col">작품 구매일</th>
	                  <th scope="col">리뷰 작성일</th>
	                  <th scope="col">추천수</th>
	                  <th scope="col">조회수</th>
	                </tr>
	              </thead>
	              <tbody>
	                <c:forEach items="${ rList }" var="r">
		                <tr>
		                  <td class="tableset-mobile">${ r.revNo }</td>
		                  <td class="tableset-proImg">
		                  	<img alt="작품 사진" src="${ r.proImage }">
						  </td>
		                  <td class="tableset-author">${ r.proName }</td>
		                  <td class="tableset-order04">${ r.proWriter }</td>
			              <td class="tableset-order05"></td>
		                  <td class="tableset-order05">${ r.revCreateDate }</td>
		                  <td class="tableset-mobile">${ r.revLike }</td>
		                  <td class="tableset-mobile">${ r.revCount }</td>
		                </tr>
	                </c:forEach>
	                
	              </tbody>
	            </table>
	          </div>
	          <nav class="pagiset pagiset-line">
							<c:if test="${ rPi.currentPage <= 1 }">
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
							<c:if test="${ rPi.currentPage > 1 }">
								<div class="pagiset-ctrl">
									<c:url var="goFirst" value="${ loc }">
										<c:param name="page" value="${ rPi.startPage }"></c:param>
									</c:url>
									<a class="pagiset-link pagiset-first" href="${ goFirst }">
										<span class="visually-hidden">처음</span>
									</a>
								</div>
								<div class="pagiset-ctrl">
									<c:url var="goBack" value="${ loc }">
										<c:param name="page" value="${ rPi.currentPage-1 }"></c:param>
									</c:url>
									<a class="pagiset-link pagiset-prev" href="${ goBack }"> 
										<span class="visually-hidden">이전</span>
									</a>
								</div>
							</c:if>
							<div class="pagiset-list">
								<c:forEach begin="${ rPi.startPage }" end="${ rPi.endPage }" var="p">
									<c:url var="goNum" value="${ loc }">
										<c:param name="page" value="${ p }"></c:param>
									</c:url>
									<c:choose>
										<c:when test="${p eq rPi.currentPage}">
											<a class="pagiset-link active-fill" href="${ goNum }">${ p }</a>
										</c:when>
										<c:otherwise>
											<a class="pagiset-link" href="${ goNum }">${ p }</a>
										</c:otherwise>
									</c:choose>
								</c:forEach>
							</div>

							<c:if test="${ rPi.currentPage >= rPi.maxPage }">
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
							<c:if test="${ rPi.currentPage < rPi.maxPage }">
								<div class="pagiset-ctrl">
									<c:url var="goNext" value="${ loc }">
										<c:param name="page" value="${ rPi.currentPage+1 }"></c:param>
									</c:url>
									<a class="pagiset-link pagiset-next" href="${ goNext }"> <span
										class="visually-hidden">다음</span>
									</a>
								</div>
								<div class="pagiset-ctrl">
									<c:url var="goList" value="${ loc }">
										<c:param name="page" value="${ rPi.maxPage }"></c:param>
									</c:url>
									<a class="pagiset-link pagiset-last" href="${ goList }"> 
										<span class="visually-hidden">마지막</span>
									</a>
								</div>
							</c:if>
						</nav>
          </div>
          
          <div id="myPage-replyListDiv" style="display: none;">
          	<div class="contents-search">
	            <p class="contents-result"> 전체<span> 24</span>개 </p>
	            <div class="selectDateDiv">
	            	<input type="date">&nbsp;-&nbsp;
	            	<input type="date">
	            </div>
	            <div class="contents-form">
	              <div class="selectset selectset-lg">
	                <button class="selectset-toggle btn" type="button">
	                  <span>전체</span>
	                </button>
	                <ul class="selectset-list">
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="전체">
	                      <span>전체</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="전체">
	                      <span>작품명</span>
	                    </button>
	                  </li>
	                  <li class="selectset-item">
	                    <button class="selectset-link btn" type="button" data-value="전체">
	                      <span>작가명</span>
	                    </button>
	                  </li>
	                </ul>
	              </div>
	              <div class="inputset inputset-lg">
	                <button class="inputset-icon icon-right icon-search btn" type="button" aria-label="아이콘"></button>
	                <input type="text" class="inputset-input form-control" placeholder="Serach" aria-label="내용">
	              </div>
	            </div>
	          </div>
	          <div class="tableset">
	            <table class="tableset-table table" style="table-layout:fixed; width: 100%">
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
	                  <th scope="col" style="width: 10%;">No.</th>
	                  <th scope="col" style="width: 10%;">사진</th>
	                  <th scope="col" style="width: 17%;">작품명</th>
	                  <th scope="col" style="width: 13%;">작가명</th>
	                  <th scope="col" style="width: 35%;">댓글 내용</th>
	                  <th scope="col" style="width: 15%;">댓글 작성일</th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-proImg">
	                  	<img alt="검색 사진" src="main/mainPic/auction4.png">
					  </td>
	                  <td class="tableset-author">작품 이름</td>
	                  <td class="tableset-order04">아무개</td>
	                  <td class="tableset-content">이뻐요 집이랑 잘어울려요!!</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                </tr>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-proImg">
	                  	<img alt="검색 사진" src="main/mainPic/auction4.png">
					  </td>
	                  <td class="tableset-author">작품 이름</td>
	                  <td class="tableset-order04">아무개</td>
	                  <td class="tableset-content">이뻐요 집이랑 잘어울려요!!</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                </tr>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-proImg">
	                  	<img alt="검색 사진" src="main/mainPic/auction4.png">
					  </td>
	                  <td class="tableset-author">작품 이름</td>
	                  <td class="tableset-order04">아무개</td>
	                  <td class="tableset-content">이뻐요 집이랑 잘어울려요!!</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                </tr>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-proImg">
	                  	<img alt="검색 사진" src="main/mainPic/auction4.png">
					  </td>
	                  <td class="tableset-author">작품 이름</td>
	                  <td class="tableset-order04">아무개</td>
	                  <td class="tableset-content">이뻐요 집이랑 잘어울려요!!</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                </tr>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-proImg">
	                  	<img alt="검색 사진" src="main/mainPic/auction4.png">
					  </td>
	                  <td class="tableset-author">작품 이름</td>
	                  <td class="tableset-order04">아무개</td>
	                  <td class="tableset-content">이뻐요 집이랑 잘어울려요!!</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                </tr>
	              </tbody>
	            </table>
	          </div>
	          <nav class="pagiset pagiset-line">
	            <div class="pagiset-ctrl">
	              <a class="pagiset-link pagiset-first" href="javascript:void(0)">
	                <span class="visually-hidden">처음</span>
	              </a>
	            </div>
	            <div class="pagiset-ctrl">
	              <a class="pagiset-link pagiset-prev" href="javascript:void(0)">
	                <span class="visually-hidden">이전</span>
	              </a>
	            </div>
	            <div class="pagiset-list">
	              <a class="pagiset-link active-fill" href="javascript:void(0)">1</a>
	              <a class="pagiset-link" href="javascript:void(0)">2</a>
	              <a class="pagiset-link" href="javascript:void(0)">3</a>
	            </div>
	            <div class="pagiset-ctrl">
	              <a class="pagiset-link pagiset-next" href="javascript:void(0)">
	                <span class="visually-hidden">다음</span>
	              </a>
	            </div>
	            <div class="pagiset-ctrl">
	              <a class="pagiset-link pagiset-last" href="javascript:void(0)">
	                <span class="visually-hidden">마지막</span>
	              </a>
	            </div>
	          </nav>
          </div>
        </div>
      </div>
    </div>
  </main>
  <jsp:include page="../common/footer.jsp"/>
  
  <script type="text/javascript">
	  const reviewList = document.getElementById('myPage-reviewListDiv');
	  const replyList = document.getElementById('myPage-replyListDiv');
	
	  document.getElementById('reviewListbutton').addEventListener('click',() => {
		  reviewList.style.display = 'block';
		  replyList.style.display = 'none';
	  });
	  
	  document.getElementById('replyListbutton').addEventListener('click',() => {
		  reviewList.style.display = 'none';
		  replyList.style.display = 'block';
	  });
  </script>
  
  <script src="rs/myReviewList/js/setting.js"></script>
  <script src="rs/myReviewList/js/common.js"></script>
  <script src="rs/myReviewList/js/script.js"></script>
</body>
</html>