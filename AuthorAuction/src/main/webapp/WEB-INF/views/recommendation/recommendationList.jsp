<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta http-equiv="imagetoolbar" content="no">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="format-detection" content="telephone=no">
  <title>추천 문의 목록 | 템하</title>
  <link rel="stylesheet" href="recommendation/css/setting.css">
  <link rel="stylesheet" href="recommendation/css/plugin.css">
  <link rel="stylesheet" href="recommendation/css/template.css">
  <link rel="stylesheet" href="recommendation/css/common.css">
  <link rel="stylesheet" href="recommendation/css/style.css">
</head>

<body>
<jsp:include page="../common/header.jsp"/>
  <!-- [E]basic-N3 -->
  <main class="th-layout-main ">
    <!-- [S]basic-N34 -->
    <div class="basic-N34" data-bid="VELQAVN9vs">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h3 class="textset-tit">그림추천</h3>
            <p class="textset-desc">그림 고르시기 어려우시죠? <br>어서옥션의 전문MD가 여러분의 공간에 맞는 그림을 제안해드립니다. </p>
          </div>
        </div>
      </div>
    </div>
    <!-- [S]basic-N54 -->
    <div class="basic-N54" data-bid="mqLqAvmR0h" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="form-btn">
            <button class="btnset" type="button" style="float: right";><a href="recommendationEnroll.re" style="color:white;">문의하기</a></button>
          </div>
          <div class="contents-group">
            <a href="javascript:void(0);" class="cardset">
              <figure class="cardset-figure">
                <img class="cardset-img" src="../resources/images/img_basic_N54_1.png" alt="카드 이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> 그림추천 부탁드려요~ </h2>
                <p class="cardset-desc">rosa_kim | 2023-10-31</p>
              </div>
            </a>
            <a href="javascript:void(0);" class="cardset">
              <figure class="cardset-figure">
                <img class="cardset-img" src="../resources/images/img_basic_N54_2.png" alt="카드 이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> 어울리는 그림을 골라주세요~ </h2>
                <p class="cardset-desc">seonwoo_oh | 2022-12-06</p>
              </div>
            </a>
            <a href="javascript:void(0);" class="cardset">
              <figure class="cardset-figure">
                <img class="cardset-img" src="../resources/images/img_basic_N54_3.png" alt="카드 이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> 저희집엔 어떤 그림이 어울리나요? </h2>
                <p class="cardset-desc">shinwoo_park | 2022-10-07</p>
              </div>
            </a>
            <a href="javascript:void(0);" class="cardset">
              <figure class="cardset-figure">
                <img class="cardset-img" src="../resources/images/img_basic_N54_1.png" alt="카드 이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> 제 방에 어울리는 그림 골라주세요 </h2>
                <p class="cardset-desc">jisung_park | 2021-11-08</p>
              </div>
            </a>
            <a href="javascript:void(0);" class="cardset">
              <figure class="cardset-figure">
                <img class="cardset-img" src="../resources/images/img_basic_N54_2.png" alt="카드 이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> 저희 사무실에 걸어둘 작품을 추천해주십시오 </h2>
                <p class="cardset-desc">yongwoo_kim | 2021-11-06</p>
              </div>
            </a>
            <a href="javascript:void(0);" class="cardset">
              <figure class="cardset-figure">
                <img class="cardset-img" src="../resources/images/img_basic_N54_3.png" alt="카드 이미지">
              </figure>
              <div class="cardset-body">
                <h2 class="cardset-tit"> 화장실에 어울리는 작은 그림 추천해주세요! </h2>
                <p class="cardset-desc">gahyun_kim | 2020-10-09</p>
              </div>
            </a>
          </div>
          <br><br>
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
							</c:url>
							<a class="pagiset-link pagiset-first" href="${ goFirst }"> <span
								class="visually-hidden">처음</span>
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
  </main>
<jsp:include page="../common/footer.jsp"/>

  <script src="recommendation/js/setting.js"></script>
  <script src="recommendation/js/plugin.js"></script>
  <script src="recommendation/js/template.js"></script>
  <script src="recommendation/js/common.js"></script>
  <script src="recommendation/js/script.js"></script>

</body>
</html>