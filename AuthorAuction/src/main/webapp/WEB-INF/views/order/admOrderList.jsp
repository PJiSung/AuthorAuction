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
<link rel="shortcut icon" type="image⁄x-icon" href="main/icons/logoImage.png">
<link rel="stylesheet" href="rs/myReviewList/css/setting.css">
<link rel="stylesheet" href="rs/myReviewList/css/template.css">
<link rel="stylesheet" href="rs/myReviewList/css/style.css">
<title>Insert title here</title>

<style type="text/css">

.tableset-author{
	overflow: hidden;
 	text-overflow: ellipsis;
 	white-space: nowrap;
}


.selectDateDiv input{
	height: 56px;
	border: 1px solid var(--border-color);
	padding: 10px;
}

.searchButton{
	border: 0;
	display: inline-block;
	background-color: black;
	color: white;
	height: 45px;
	width: 80px;
	float: right;
}

.search-select{
	border: 2px solid var(--border-color);
    border-radius: 0.6rem;
	margin: 5%;
	padding: 20px;
}

.search-select table{
	margin: 0 auto;
	width: 100%;
    color: black;
}

.search-select table td{
	padding: 10px;
}

.progressOpt{
	color: var(--text-color3);
	height: 30px;
	font-family: var(--ff);
    font-weight: 400;
    font-size: var(--fs-p3);
}

.selectset selectset-lg{
	width: 25%; 
}

.inputset inputset-lg{
	width: 50%; 
}

.search-select [type="radio"]:first-child{
	margin-left: 0px;
}

.search-select [type="radio"]{
	margin-left: 20px;
	margin-right: 5px;
}

.search-select [type="radio"]:checked{
	accent-color: black;
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
            <h2 class="textset-tit">MANAGER PAGE - ORDER</h2>
          </div>
          
          <div class="search-select">
          	<table>
          		<tr>
          			<th>진행상태</th>
          			<td colspan="2">
          				<input type="radio" id="progressAll" name="progressStatus"><label for="progressAll">전체</label>
			          	<input type="radio" id="progressPre" name="progressStatus"><label for="progressPre">배송준비중</label>
			          	<input type="radio" id="progressIng" name="progressStatus"><label for="progressIng">배송중</label>
			          	<input type="radio" id="progressFin" name="progressStatus"><label for="progressFin">배송완료</label>
			          	<input type="radio" id="progressCan" name="progressStatus"><label for="progressCan">주문취소</label>
          			</td>
          		</tr>
          		<tr>
          			<th>기간</th>
          			<td colspan="2">
          				<div class="selectDateDiv">
				           	<input type="date">&nbsp;-&nbsp;
				           	<input type="date">
		        		</div>
          			</td>
          		</tr>
          		<tr>
          			<th>키워드</th>
          			<td>
	          			<div class="selectset selectset-lg" style="display: inline-block;">
		                <button class="selectset-toggle btn" type="button">
		                  <span>선택</span>
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
		              <div class="inputset inputset-lg" style="display: inline-block;">
		                <button class="inputset-icon icon-right icon-search btn" type="button" aria-label="아이콘"></button>
		                <input type="text" class="inputset-input form-control" placeholder="Serach" aria-label="내용">
		              </div>
       				</td>
	       			<td>
	       				<button class="searchButton">검색</button>
	       			</td>
          		</tr>
          	</table>
          </div>
          	
          <div id="manaPage-orderListDiv">
          	<div class="contents-search">
	            <p class="contents-result"> 주문수<span> 24/20000</span> </p>
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
	                  <th scope="col" style="width: 20%;">주문번호</th>
	                  <th scope="col" style="width: 17%;">주문자 ID</th>
	                  <th scope="col" style="width: 17%;">주문일</th>
	                  <th scope="col" style="width: 21%;">가격</th>
	                  <th scope="col" style="width: 15%;">주문상태</th>
	                </tr>
	              </thead>
	              <tbody>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-author">202312-210231</td>
	                  <td class="tableset-progress">aaaaaa7817</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                  <td class="tableset-order05">100,000,000</td>
	                  <td class="tableset-cancel">
	                  	<select name="progressOpt" class="progressOpt">
	                  		<option value="progressPre">배송준비중</option>
	                  		<option value="progressIng">배송중</option>
	                  		<option value="progressFin">배송완료</option>
	                  		<option value="progressCan">취소</option>
	                  	</select>
	                  </td>
	                </tr>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-author">202312-210231</td>
	                  <td class="tableset-progress">aaaaaa7817</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                  <td class="tableset-order05">100,000,000</td>
	                  <td class="tableset-cancel">
	                  	<select name="progressOpt" class="progressOpt">
	                  		<option value="progressPre">배송준비중</option>
	                  		<option value="progressIng">배송중</option>
	                  		<option value="progressFin">배송완료</option>
	                  		<option value="progressCan">취소</option>
	                  	</select>
	                  </td>
	                </tr>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-author">202312-210231</td>
	                  <td class="tableset-progress">aaaaaa7817</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                  <td class="tableset-order05">100,000,000</td>
	                  <td class="tableset-cancel">
	                  	<select name="progressOpt" class="progressOpt">
	                  		<option value="progressPre">배송준비중</option>
	                  		<option value="progressIng">배송중</option>
	                  		<option value="progressFin">배송완료</option>
	                  		<option value="progressCan">취소</option>
	                  	</select>
	                  </td>
	                </tr>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-author">202312-210231</td>
	                  <td class="tableset-progress">aaaaaa7817</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                  <td class="tableset-order05">100,000,000</td>
	                  <td class="tableset-cancel">
	                  	<select name="progressOpt" class="progressOpt">
	                  		<option value="progressPre">배송준비중</option>
	                  		<option value="progressIng">배송중</option>
	                  		<option value="progressFin">배송완료</option>
	                  		<option value="progressCan">취소</option>
	                  	</select>
	                  </td>
	                </tr>
	                <tr>
	                  <td class="tableset-mobile">24</td>
	                  <td class="tableset-author">202312-210231</td>
	                  <td class="tableset-progress">aaaaaa7817</td>
	                  <td class="tableset-order05">2023.01.01</td>
	                  <td class="tableset-order05">100,000,000</td>
	                  <td class="tableset-cancel">
	                  	<select name="progressOpt" class="progressOpt">
	                  		<option value="progressPre">배송준비중</option>
	                  		<option value="progressIng">배송중</option>
	                  		<option value="progressFin">배송완료</option>
	                  		<option value="progressCan">취소</option>
	                  	</select>
	                  </td>
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
  <script src="rs/myReviewList/js/setting.js"></script>
  <script src="rs/myReviewList/js/script.js"></script>
</body>
</html>