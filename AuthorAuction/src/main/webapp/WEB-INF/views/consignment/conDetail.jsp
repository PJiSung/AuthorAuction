<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>	    
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
  <title>위탁 문의 상세 | 침대</title>
  <link rel="stylesheet" href="consignment/css/setting.css">
  <link rel="stylesheet" href="consignment/css/plugin.css">
  <link rel="stylesheet" href="consignment/css/template.css">
  <link rel="stylesheet" href="consignment/css/common.css">
  <link rel="stylesheet" href="consignment/css/style.css">
</head>

<body>
<jsp:include page="../common/header.jsp"/>
  <main class="th-layout-main ">
    <!-- [S]hooms-N58 -->
    <div class="hooms-N58" data-bid="eO2cM2h3g10" id="">
      <div class="contents-container container-md">
        <div class="tabset tabset-solid">
        </div>
      </div>
    </div>
    <!-- [E]hooms-N58 -->
    <!-- [S]hooms-N39 -->
	<div class="hooms-N39" data-bid="ka2cm2jQlm2" id="">
		<div class="contents-inner">
			<div class="contents-container container-md">
			  <div class="textset textset-h2">
			    <a class="textset-tit" style="font-size: 40px;">위탁 문의 내역(수정)</a>
			</div>
          
          	<form action="updateConsignment.co" method="post" enctype="multipart/form-data" id="attmForm"></form>
          	<input type="hidden" name="conNo" value="${ c.conNo }">
	          <div class="dhead">
	            <div>
	              <h2>위탁 정보 수정</h2>
	            </div>
	            <div class="contents-form-middle">
	              <div class="inputset inputset-lg inputset-label">
	                <label>
	                  <span>
	                    <h6 class="inputset-tit"> 위탁자 이름 </h6>
	                  </span>
	                  <span>
	                    <input type="text" class="inputset-input form-control" value="${ m.memName }" name="memName" aria-label="내용" required="" readonly>
	                  </span>
	                </label>
	                <label>
	                  <h6 class="inputset-tit"> 주소 </h6>
	                  <input type="text" class="inputset-input form-control" value="${ fn:split(m.memAddress, '@')[0] } ${ fn:split(m.memAddress, '@')[1] } ${ fn:split(m.memAddress, '@')[2] }${ fn:split(m.memAddress, '@')[3] }" name="memAddress" aria-label="내용" required="" readonly>
	                </label>
	              </div>
	              <div class="inputset inputset-lg inputset-label">
	                <label>
	                  <h6 class="inputset-tit"> 연락처 </h6>
	                  <input type="tel" class="inputset-input form-control" value="${m.memPhone}" name="memPhone" aria-label="내용" required="" readonly>
	                </label>
	                <label>
	                  <h6 class="inputset-tit"> 이메일 </h6>
	                  <input type="text" class="inputset-input form-control" value="${m.memEmail}"name="memEmail" aria-label="내용" required="" readonly>
	                </label>
	              </div>
	            </div>
	          </div>
	          <div class="dbody">
	            <div class="inputset inputset-lg inputset-label">
	              <label>
	                <div>
	                  <h2> 위탁작품 정보 </h2>
	                </div>
	                <div class="body">
	                  <label style="margin-left: 15rem;">
	                    <a style="display:inline-block; width: 15%; text-align: center;">작가명</a>
	                    <input type="text" class="inputset-input form-control" value="${c.conAuthor}" name="conAuthor" aria-label="내용" required="" style="width: 70rem; display:inline-block">
	                    <br><br>
	                    <a style="display:inline-block; width: 15%; text-align: center;">작품명</a>
	                    <input type="text" class="inputset-input form-control" value="${c.conProduct}" name="conProduct" aria-label="내용" required="" style="width: 70rem; display:inline-block">
	                    <br><br>
	                    <a style=" display:inline-block; width: 15%; text-align: center;">작품의 크기(cm)</a>
	                    <input type="text" class="inputset-input form-control" value="${c.conWidth}" aria-label="내용" required="" name="conWidth" style="width: 34rem; display:inline-block"> X <input type="text" name="conHeight" class="inputset-input form-control" value="${c.conHeight}" aria-label="내용" required="" style="width: 34rem; display:inline-block">
	                    <br><br>
	                    <a style="display:inline-block; width: 15%; text-align: center;">제작연도</a>
	                    <input type=" text" class="inputset-input form-control" value="${c.conYear}" aria-label="내용" required="" name="conYear" style="width: 70rem; display:inline-block">
	                    <br><br>
	                    <a style=" display: inline-block; width: 15%; text-align: center;">희망가</a>
	                    <input type="text" class="inputset-input form-control" value="${c.conHope}" aria-label="내용" required="" name="conHope" style="width: 70rem; display: inline-block">
	                    <br><br>
	                    <div>
	                      <label style="display: inline-block; width: 15%; text-align: center;">출처 / 기타</label>
	                      <textarea name="conEtc" class="inputset-textarea" required="" style="display: inline-block; width: 60%; vertical-align: middle; resize: none;">${c.conEtc }</textarea>
	                    </div>
	                  </label>
	                </div>
	              </label>
	            </div>
	          </div>
	          <div>
	            <h2>작품 이미지</h2>
	          </div>
	          <div class="dfoot" style="margin-bottom: 2rem;">
	            <div class="inputset inputset-lg inputset-label">
	              <label style="margin-left: 14rem;">
	                <div>
	                  <div class="fileset fileset-lg fileset-label">
	                    <label>
	                      <div class="fileset-body">
	                        <div class="fileset-group">
	                          <a style="display: inline-block; width: 15%; text-align: center;">앞면</a>
	                          <input type="file" class="fileset-input" style="width: 83%;" name="file" value="image/치즈 냥이.jpg">
	                          <button class="fileset-cancel"></button>
	                        </div>
	                        <span class="btnset btnset-line btnset-lg fileset-upload">파일 첨부하기</span>
	                      </div>
	                    </label>
	                  </div>
	                  <br>
	                  
	                  <div class="fileset fileset-lg fileset-label">
	                    <label>
	                      <div class="fileset-body">
	                        <div class="fileset-group">
	                          <a style="display: inline-block; width: 15%; text-align: center;">뒷면	</a>
	                          <input type="file" class="fileset-input" name="file" style="width: 83%;">
	                          <button class="fileset-cancel"></button>
	                        </div>
	                        <span class="btnset btnset-line btnset-lg fileset-upload">파일 첨부하기</span>
	                      </div>
	                    </label>
	                  </div>
	                  <br>
	                  
	                  <div class="fileset fileset-lg fileset-label">
	                    <label>
	                      <div class="fileset-body">
	                        <div class="fileset-group">
	                          <a style="display: inline-block; width: 15%; text-align: center;">서명</a>
	                          <input type="file" class="fileset-input" style="width: 83%;" name="file" >
	                          <button class="fileset-cancel"></button>
	                        </div>
	                        <span class="btnset btnset-line btnset-lg fileset-upload">파일 첨부하기</span>
	                      </div>
	                    </label>
	                  </div>
	                  <br>
	                  
	                  <div class="fileset fileset-lg fileset-label">
	                    <label>
	                      <div class="fileset-body">
	                        <div class="fileset-group">
	                          <a style="display: inline-block; width: 15%; text-align: center;">구매서류</a>
	                          <input type="file" class="fileset-input" style="width: 83%;" name="file" >
	                          <button class="fileset-cancel"></button>
	                        </div>
	                        <span class="btnset btnset-line btnset-lg fileset-upload">파일 첨부하기</span>
	                      </div>
	                    </label>
	                  </div>
	                  <br>
	                  
	                  <div class="fileset fileset-lg fileset-label">
	                    <label>
	                      <div class="fileset-body">
	                        <div class="fileset-group">
	                          <a style="display: inline-block; width: 15%; text-align: center;">상세사진</a>
	                          <input type="file" class="fileset-input" style="width: 83%;" name="file">
	                          <button class="fileset-cancel"></button>
	                        </div>
	                        <span class="btnset btnset-line btnset-lg fileset-upload">파일 첨부하기</span>
	                      </div>
	                    </label>
	                  </div>
	                  <br>
	                  
	                 <div style="width: 100%; height: 100px;">
			          <img style="width:15%; display: inline-block; margin:1% 2% 0% 2%" class="contents-thumbimg" src="static/image/치즈 냥이.png" alt="앞면">
			          <img style="width:15%; display: inline-block; margin:1% 2% 0% 2%" class="contents-thumbimg" src="" alt="썸네일이미지">
			          <img style="width:15%; display: inline-block; margin:1% 2% 0% 2%" class="contents-thumbimg" src="" alt="썸네일이미지">
			          <img style="width:15%; display: inline-block; margin:1% 2% 0% 2%" class="contents-thumbimg" src="" alt="썸네일이미지">
			          <img style="width:15%; display: inline-block; margin:1% 2% 0% 2%" class="contents-thumbimg" src="" alt="썸네일이미지">
	                  </div> 
	                </div>
	                
	                
	                
	                <c:if test="${ loginUser.memIsAdmin == 'N' }">
		             <c:if test="${ c.conAdmStatus == 'N' }">
			          <div class="contents-sign">
			           <button class="btnset modalset-btn" type="button" id="submitAttm">수정완료</button>
			           <button class="btnset modalset-btn" type="button" id="delete">삭제</button>
			          </div>
		             </c:if>
	                </c:if>
	                <c:if test="${ loginUser.memIsAdmin == 'Y' }">
	                 <div class="contents-sign">
			          <button class="btnset modalset-btn" type="button" id="submitAttm">수정완료</button>
			          <button class="btnset modalset-btn" type="button" id="delete">삭제</button>
			         </div>
	                </c:if>
	                
	                
	                <div id="modalSet1" class="modalset">
	                  <div class="modal-header">
	                    <h6 class="modal-title">수정이 완료되었습니다.</h6>
	                  </div>
	                  <div class="modal-body">
	                    <p>
	                  </div>
	                  <div class="modal-footer">
	                    <button type="button" class="btnset btnset-ghost modal-close">취소</button>
	                    <button type="button" class="btnset btnset-confirm">확인</button>
	                  </div>
	                </div>
	                
	                
	                <div id="modalSet2" class="modalset">
	                  <div class="modal-header">
	                    <h6 class="modal-title">삭제하시겠습니까?</h6>
	                  </div>
	                  <div class="modal-body">
	                    <p>
	                  </div>
	                  <div class="modal-footer">
	                    <button type="reset" class="btnset btnset-ghost modal-close">취소</button>
	                    <button type="button" class="btnset btnset-confirm" id="deleteConfirm">확인</button>
	                  </div>
	                </div>
	
	                <div class="modalset-dim"></div>
	              </label>
	              <a style="display: inline-block; width: 15%; text-align: center;"></a>
	            </div><a style="display: inline-block; width: 15%; text-align: center;">
	            </a>
	          </div>
	        </div>
	      </form>
      </div>
    </div>
    <!-- [E]hooms-N39 -->
  </main>
<jsp:include page="../common/footer.jsp"/>  


	<script>
		window.onload = () => {
			/*
			const consignmentDetail = (conNo) =>{													<!-- 상세보기로 이동 -->
				location.href="selectConsignment.co?conNo=" + conNo + "&page=" + ${pi.currentPage};
			}
			*/
			const form = document.getElementById('attmForm');										<!-- 글 삭제 -->
			document.getElementById('deleteConfirm').addEventListener('click', () =>{
	            form.action = 'delete.co';
	            form.submit();
	         })
		}
	</script>


  <script src="consignment/js/setting.js"></script>
  <script src="consignment/js/plugin.js"></script>
  <script src="consignment/js/template.js"></script>
  <script src="consignment/js/common.js"></script>
  <script src="consignment/js/script.js"></script>
</body>
</html>