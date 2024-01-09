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
  <title>그림 추천 마이페이지</title>
  <link rel="stylesheet" href="consignment/css/setting.css">
  <link rel="stylesheet" href="consignment/css/plugin.css">
  <link rel="stylesheet" href="consignment/css/template.css">
  <link rel="stylesheet" href="consignment/css/common.css">
  <link rel="stylesheet" href="consignment/css/style.css">
</head>

<body>
<jsp:include page="../common/header.jsp"/>
  <main class="th-layout-main ">
    <!-- [S]hooms-N48 -->
    <div class="hooms-N48" data-bid="kTLqC36ddS">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <a class="textset-tit">마이페이지(추천 문의 내역)</a>
            <br><br>
            <div class="date-box">
              <div class="date">
               <form action="recommendationList.adre" class="listFom">
                <span><a>조회 기간</a></span>
                <span>
                  <input type="date" class="rec_startdate" name="strDate">
                </span>
                <span>~</span>
                <span>
                  <input type="date" class="rec_enddate" name="endDate">
                </span>
                <span><button class="search">검색</button></span>
                <span><button class="cancel">초기화</button></span>
               </form>
              </div>
            </div>
            <br><br>
          </div>
          
          <div><button class="recommendationEnroll" style="margin-bottom: 4rem;"><a href="recommendationEnroll.re" style="color:white;">문의하기</a></button></div>
          
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
                  <th scope="col">제목</th>
                  <th scope="col">신청일자</th>
                  <th scope="col">답변</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td class="tableset-mobile" onclick="javascript:event.stopPropagation();">
                    <input id="checkset-b-1-1" class="checkset-input input-fill" type="checkbox" name="check" onclick="check1()">
                  </td>
                  <td class="tableset-tit tableset-order02">
                    <a href="javascript:void(0)">
                      <span>안녕하세요. 화장실에 어울리는 그림 추천해주세요~.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.04.01</td>
                  <td class="tableset-order01">
                    <div class="badgeset">대기</div>
                  </td>
                </tr>
                <tr>
                  <td class="tableset-mobile">
                    <input id="checkset-b-1-1" class="checkset-input input-fill" type="checkbox" value="" checked="">
                  </td>
                  <td class="tableset-tit tableset-order02">
                    <a href="javascript:void(0)">
                      <span>안녕하세요. 로롱이의 방에 어울리는 그림을 골라주세요^^.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.03.01</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                </tr>
                <tr>
                  <td class="tableset-mobile">
                    <input id="checkset-b-1-1" class="checkset-input input-fill" type="checkbox" value="" checked="">
                  </td>
                  <td class="tableset-tit tableset-order02">
                    <a href="javascript:void(0)">
                      <span>안녕하세요! 복도에는 어떤 그림이 어울릴까요?</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.02.01</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                </tr>
                <tr>
                  <td class="tableset-mobile">
                    <input id="checkset-b-1-1" class="checkset-input input-fill" type="checkbox" value="" checked="">
                  </td>
                  <td class="tableset-tit tableset-order02">
                    <a href="javascript:void(0)">
                      <span>안녕하세요. 사무실에 걸어둘 그림이 필요합니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                </tr>
                <tr>
                  <td class="tableset-mobile">
                    <input id="checkset-b-1-1" class="checkset-input input-fill" type="checkbox" value="" checked="">
                  </td>
                  <td class="tableset-tit tableset-order02">
                    <a href="javascript:void(0)">
                      <span>안녕하세요. 문의드립니다.</span>
                    </a>
                  </td>
                  <td class="tableset-order05">2023.01.01</td>
                  <td class="tableset-order01">
                    <div class="badgeset badgeset-active">답변완료</div>
                  </td>
                </tr>
              </tbody>
            </table>
            <input class="btnset btnset-lg" value="선택삭제" type="button" id="deleteBtn();" name="deleteBtn" onclick="minus()">
          </div>
        </div>
        <br><br><br>
     
		<nav class="pagiset pagiset-line" id="pagiset-list">
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
						<c:param name="select" value="${ sc.select }"></c:param>
						<c:param name="keyword" value="${ sc.keyword }"></c:param>
						<c:param name="strDate" value="${ sc.strDate }"></c:param>
						<c:param name="endDat" value="${ sc.endDat }"></c:param>
						<c:param name="status" value="${ sc.status }"></c:param>
					</c:url>
					<a class="pagiset-link pagiset-first" href="${ goFirst }"> <span
						class="visually-hidden">처음</span>
					</a>
				</div>
				<div class="pagiset-ctrl">
					<c:url var="goBack" value="${ loc }">
						<c:param name="page" value="${ pi.currentPage-1 }"></c:param>
						<c:param name="select" value="${ sc.select }"></c:param>
						<c:param name="keyword" value="${ sc.keyword }"></c:param>
						<c:param name="strDate" value="${ sc.strDate }"></c:param>
						<c:param name="endDat" value="${ sc.endDat }"></c:param>
						<c:param name="status" value="${ sc.status }"></c:param>
					</c:url>
					<a class="pagiset-link pagiset-prev" href="${ goBack }"> <span
						class="visually-hidden">이전</span>
					</a>
				</div>
			</c:if>
			<div class="pagiset-list">
				<c:forEach begin="${ pi.startPage }" end="${ pi.endPage }" var="p">
					<c:url var="goNum" value="${ loc }">
						<c:param name="page" value="${ p }"></c:param>
						<c:param name="select" value="${ sc.select }"></c:param>
						<c:param name="keyword" value="${ sc.keyword }"></c:param>
						<c:param name="strDate" value="${ sc.strDate }"></c:param>
						<c:param name="endDat" value="${ sc.endDat }"></c:param>
						<c:param name="status" value="${ sc.status }"></c:param>
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
						<c:param name="select" value="${ sc.select }"></c:param>
						<c:param name="keyword" value="${ sc.keyword }"></c:param>
						<c:param name="strDate" value="${ sc.strDate }"></c:param>
						<c:param name="endDat" value="${ sc.endDat }"></c:param>
						<c:param name="status" value="${ sc.status }"></c:param>
					</c:url>
					<a class="pagiset-link pagiset-next" href="${ goNext }"> <span
						class="visually-hidden">다음</span>
					</a>
				</div>
				<div class="pagiset-ctrl">
					<c:url var="goList" value="${ loc }">
						<c:param name="page" value="${ pi.maxPage }"></c:param>
						<c:param name="select" value="${ sc.select }"></c:param>
						<c:param name="keyword" value="${ sc.keyword }"></c:param>
						<c:param name="strDate" value="${ sc.strDate }"></c:param>
						<c:param name="endDat" value="${ sc.endDat }"></c:param>
						<c:param name="status" value="${ sc.status }"></c:param>
					</c:url>
					<a class="pagiset-link pagiset-last" href="${ goList }"> <span
						class="visually-hidden">마지막</span>
					</a>
				</div>
			</c:if>
		</nav>
     
      </div>
    </div>
    <!-- [E]hooms-N48 -->
  </main>
<jsp:include page="../common/footer.jsp"/>  

  <script src="consignment/js/setting.js"></script>
  <script src="consignment/js/plugin.js"></script>
  <script src="consignment/js/template.js"></script>
  <script src="consignment/js/common.js"></script>
  <script src="consignment/js/script.js"></script>
</body>
</html>