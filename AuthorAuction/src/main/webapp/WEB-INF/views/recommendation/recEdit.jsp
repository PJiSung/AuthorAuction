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
  <meta name="title" content="웹사이트">
  <meta name="description" content="웹사이트입니다.">
  <meta name="keywords" content="키워드,키워드,키워드">
  <meta property="og:title" content="웹사이트">
  <meta property="og:description" content="웹사이트입니다">
  <meta property="og:image" content="https://웹사이트/images/opengraph.png">
  <meta property="og:url" content="https://웹사이트">
  <title>추천 문의 수정 | 템하</title>
  <link rel="stylesheet" href="recommendation/css/setting.css">
  <link rel="stylesheet" href="recommendation/css/plugin.css">
  <link rel="stylesheet" href="recommendation/css/template.css">
  <link rel="stylesheet" href="recommendation/css/common.css">
  <link rel="stylesheet" href="recommendation/css/style.css">
</head>

<body>
 
<jsp:include page="../common/header.jsp"/> 
  <!-- [E]basic-N1 -->
  <main class="th-layout-main ">
    <!-- [S]basic-N24 -->
    <div class="basic-N24" data-bid="kd2CLxEONzd">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="form-group">
            <div class="textset">
              <h2 class="textset-tit">문의하기</h2>
            </div>
            <div class="inputset inputset-lg inputset-label">
              <a class="inputset-tit">제목<span>*</span></a>
              <input type="text" class="inputset-input form-control" placeholder="제목을 입력해주세요." aria-label="내용" required="">
            </div>
            <div class="inputset inputset-lg inputset-label">
              <a class="inputset-tit">이름<span>*</span></a>
              <a class="inputset-tit">김로사</a>
            </div>
            <div class="inputset inputset-lg inputset-label">
              <a class="inputset-tit">그림스타일<span>*</span></a>
              <div class="selectset selectset-round selectset-lg">
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
                    <button class="selectset-link btn" type="button" data-value="추상화">
                      <span>추상화</span>
                    </button>
                  </li>
                  <li class="selectset-item">
                    <button class="selectset-link btn" type="button" data-value="정물화">
                      <span>정물화</span>
                    </button>
                  </li>
                  <li class="selectset-item">
                    <button class="selectset-link btn" type="button" data-value="인물화">
                      <span>인물화</span>
                    </button>
                  </li>
                </ul>
              </div>
            </div>
            <div class="inputset inputset-lg inputset-label">
              <label>
                <h6 class="inputset-tit"> 문의내용<span>*</span>
                </h6>
                <textarea class="content" placeholder="문의 내용을 입력해주세요." required=""></textarea>
              </label>
            </div>
            <br>
            <div class="fileset fileset-lg fileset-label">
              <a class="fileset-tit">첨부파일</a>
              <br>
              <div class="fileset-group">
                <input type="file" class="fileset-input">
                <button class="fileset-cancel"></button>
              </div>
            </div>
            <div class="form-btn" th-hoverbox="true">
              <button class="btnset" type="button">수정</button>
              <button class="btnset" type="button">삭제</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]basic-N24 -->
  </main>

  <!-- [E]basic-N4 -->
  <script src="recommendation/js/setting.js"></script>
  <script src="recommendation/js/plugin.js"></script>
  <script src="recommendation/js/template.js"></script>
  <script src="recommendation/js/common.js"></script>
  <script src="recommendation/js/script.js"></script>

  <jsp:include page="../common/footer.jsp"/>
</body>
</html>