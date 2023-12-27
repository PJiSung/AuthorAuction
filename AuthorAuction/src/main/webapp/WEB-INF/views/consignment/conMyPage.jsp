<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
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
  <title>위탁 마이페이지 | 침대</title>
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
    <div class="hooms-N48" data-bid="tr2cLyIIXB5">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <a class="textset-tit">마이페이지(위탁 문의 내역)</a>
            <br><br>
            <div class="date-box">
              <div class="date">
                <span><a>조회 기간</a></span>
                <span>
                  <input type="date" class="con_startdate">
                </span>
                <span>
                  <input type="date" class="con_enddate">
                </span>
                <span>
                  <a>검색어</a>
                  <input type="text" class="inputText" placeholder="작품명 입력" aria-label="내용">
                </span>
                <span><button class="search">검색</button></span>
                <span><button class="cancel">초기화</button></span>
              </div>
            </div>
            <br>
          </div>
          <div><button class="con_enroll">문의하기</button></div>
          <br>
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
                  <th scope="col">작가명</th>
                  <th scope="col">작품명</th>
                  <th scope="col">작품의 크기</th>
                  <th scope="col">희망가</th>
                  <th scope="col">관리자 열람 여부</th>
                </tr>
              </thead>
              <tbody>
              	<c:forEach items="${list}" var="c">
	                <tr>
	                  <td>${ c.conAuthor }</td>
	                  <td>${ c.conProduct }</td>
	                  <td>${ c.conWidth }*${ c.conHeight }cm</td>
	                  <td>${ c.conHope }</td>
	                  <td>${ c.conAdmStatus }</td>
	                </tr>
              	</c:forEach>  
              </tbody>
            </table>
          </div>
        </div>
        <br><br><br>
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
    <!-- [E]hooms-N48 -->
  </main>
<jsp:include page="../common/footer.jsp"/>  
  
  <script src="../resources/js/setting.js"></script>
  <script src="../resources/js/plugin.js"></script>
  <script src="../resources/js/template.js"></script>
  <script src="../resources/js/common.js"></script>
  <script src="../resources/js/script.js"></script>
</body>
</html>