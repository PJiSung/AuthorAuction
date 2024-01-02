<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


	<link rel="stylesheet" href="sunwoo/rosacss/rosasetting.css">
 	<link rel="stylesheet" href="sunwoo/rosacss/rosaplugin.css">
	<link rel="stylesheet" href="sunwoo/rosacss/rosatemplate.css">
	<link rel="stylesheet" href="sunwoo/rosacss/rosacommon.css">
	<link rel="stylesheet" href="sunwoo/rosacss/rosamain.css">
	<link rel="stylesheet" href="sunwoo/rosacss/rosastyle.css">
	
	
	
<style>

  html,body{
  	margin:0;
  	padding:0;
  }
  
 div{
 	margin: 0;
 	padding: 0;
 	display: block;
 }

ul,li,ol{
	list-style: none;
}




</style>

</head>
<body>

<!-- 헤더야 -->
 <!-- [S]personal-rglq12YMbj -->
  <div class="personal-rglq12YMbj" data-bid="uIlq13xFtx" id="">
    <div class="header-container container-lg">
      <div class="header-left">
        <h1 class="header-title">
          <a href="javascript:void(0)">
             <h5>AAUCTION</h5>
           <!-- <img src="images/" alt="로고"> -->
          </a>
        </h1>
      </div>
      <div class="header-center">
        <ul class="header-member">
          <li>
            <a href="loginView">로그인</a>
          </li>
          <li>
            <a href="authenticationView">회원가입</a>
          </li>
        </ul>
        <ul class="header-gnblist">
          <li class="header-gnbitem">
            <a class="header-gnblink" href="javascript:void(0)">
              <span>AUCTION</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="auctionList.ac">
                  <span>온라인 경매</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="javascript:void(0)">
                  <span>캘린더</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="javascript:void(0)">
              <span>PRODUCT</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="javascript:void(0)">
                  <span>아트</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="myOrderList.jsp"">
              <span>RECOMMEND</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="myReviewList.jsp">
                  <span>1:1 추천</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="reviewList.jsp">
                  <span>작품 리뷰</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="manaOrderList.jsp">
              <span>HOW TO</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="javascript:void(0)">
                  <span>오시는 길</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="javascript:void(0)">
                  <span>경매 안내</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="conInfo.co">
                  <span>위탁 안내</span>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="header-right">
        <div class="header-utils">
          <a href="loginView"><span class="header-gnblink">LOGIN</span></a>
          <!-- <a href=""><span class="header-gnblink">LOGOUT</span></a>  -->
          <div class="dropdown btn-user header-utils-btn">
            <img src="main/icons/ico_user_black.svg" class="dropbtn" alt="유저 아이콘">
            <div class="dropdown-content-user">
               <table>
                  <tr>
                     <td class="profile">
                        <div class="profilePic">
                           <img src="main/mainPic/profilePic.jpg" alt="프로필 사진" class="profileImg">
                        </div>
                     </td>
                     <td style="line-height: 20px; cursor: pointer;" onclick="location.href='';">
                        <div class="userText"><b>계정 관리</b></div>
                        <div class="userText">aaaaaa7817</div>
                     </td>
                  </tr>
                  <tr>
                     <td class="cash">
                        <span>예치금</span><br>
                                <span onclick="location.href='';" class="cashButton">충전</span>
                                <span onclick="location.href='';" class="cashButton">출금</span>
                     </td>
                     <td class="userText">250,000,000원</td>
                  </tr>
                  <tr>
                     <td><a href="#" class="userMenu">나의 경매</a></td>
                     <td></td>
                  </tr>
                  <tr>
                     <td><a href="#" class="userMenu">나의 주문</a></td>
                     <td></td>
                  </tr>
               </table>
             </div>
          </div>
          <a href="javascipt:void(0);" class="btn-cart header-utils-btn">
            <img src="main/icons/ico_cart_black.svg" alt="쇼핑 아이콘">
            <span class="cartCount">1</span>
          </a>
          <div class="dropdown btn-search header-utils-btn">
            <img src="main/icons/ico_seach_black.svg" class="dropbtn" alt="검색 아이콘">
            <div class="dropdown-content-keyword">
              <form id="search-form">
                  <input type="text" id="search-input" placeholder="작품명 또는 작가명">
                  <button><img alt="검색 버튼" src="main/icons/ico_seach_black.svg"></button>
              </form>
              <div id="search-results">
              	<div class="searchDiv">
                 <table class="searchTable" style="table-layout: fixed; width: 93%;">
                    <tr>
                       <td style="width: 17%;">
                          <div class="searchImg">
                             <img alt="검색 사진" src="main/mainPic/news1.jpg">
                          </div>
                       </td>
                       <td style="width: 53%;">
                          Tell me your wish
                       </td>
                       <td style="width: 30%;">
                          김재언
                       </td>
                    </tr>
                    <tr>
                       <td>
                          <div class="searchImg">
                             <img alt="검색 사진" src="main/mainPic/auction4.png">
                          </div>
                       </td>
                       <td>
                          very very cold
                       </td>
                       <td>
                          김가현
                       </td>
                    </tr>
                    <tr>
                       <td>
                          <div class="searchImg">
                             <img alt="검색 사진" src="main/mainPic/news3.jpeg">
                          </div>
                       </td>
                       <td>
                          나는야 젤리 부자
                       </td>
                       <td>
                          김용우
                       </td>
                    </tr>
                    <tr>
                       <td>
                          <div class="searchImg">
                             <img alt="검색 사진" src="main/mainPic/product2.png">
                          </div>
                       </td>
                       <td>
                         정글에서 살아남는 법
                       </td>
                       <td>
                          오선우
                       </td>
                    </tr>
                    <tr>
                       <td>
                          <div class="searchImg">
                             <img alt="검색 사진" src="main/mainPic/product4.png">
                          </div>
                       </td>
                       <td>
                         떡볶이와 나
                       </td>
                       <td>
                          김로사
                       </td>
                    </tr>
                    <tr>
                       <td>
                          <div class="searchImg">
                             <img alt="검색 사진" src="main/mainPic/product1.png">
                          </div>
                       </td>
                       <td>
                         금주는 오늘까지
                       </td>
                       <td>
                          박지성
                       </td>
                    </tr>
                 </table>
              	</div>
                 
                 <table class="recoTable">
                    <tr>
                        <th colspan="2">&nbsp;&nbsp;&nbsp;추천 검색어</th>
                    </tr>
                    <tr>
                       <td>
                       <a href="">박지성</a>
                       </td>
                       <td>
                       <a href="">김가현</a>
                       </td>
                    </tr>
                    <tr>
                       <td>
                          <a href="">김용우</a>
                       </td>
                       <td>
                          <a href="">오선우</a>
                       </td>
                    </tr>
                    <tr>
                       <td>
                          <a href="">김로사</a>
                       </td>
                       <td>
                          <a href="">아무개</a>
                       </td>
                    </tr>
                 </table>
             </div>
          </div>
          </div>
          <button class="btn-allmenu header-utils-btn">
            <img src="main/icons/ico_menu_black.svg" alt="PC메뉴">
          </button>
          <button class="btn-momenu header-utils-btn">
            <img src="main/icons/ico_menu_black.svg" alt="모바일메뉴">
          </button>
          <button class="btn-moclose header-utils-btn">
            <img src="main/icons/ico_close_black.svg" alt="닫기">
          </button>
        </div>
      </div>
    </div>
    <div class="header-fullmenu fullmenu-top">
      <div class="fullmenu-wrapper">
        <div class="fullmenu-head">
          <h4 class="fullmenu-title">
            <a href="javascript:void(0)">
              <img src="main/images/" alt="로고">
            </a>
          </h4>
          <ul class="fullmenu-member">
            <li>
              <a href="loginView">로그인</a>
            </li>
            <li>
              <a href="authenticationView">회원가입</a>
            </li>
          </ul>
        </div>
        <ul class="fullmenu-gnblist">
          <li class="fullmenu-gnbitem">
            <a class="fullmenu-gnblink" href="javascript:void(0)">
              <span>AUCTION</span>
            </a>
            <ul class="fullmenu-sublist">
              <li class="fullmenu-subitem">
                <a class="fullmenu-sublink" href="javascript:void(0)">
                  <span>온라인 경매</span>
                </a>
              </li>
              <li class="fullmenu-subitem">
                <a class="fullmenu-sublink" href="javascript:void(0)">
                  <span>캘린더</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="fullmenu-gnbitem">
            <a class="fullmenu-gnblink" href="javascript:void(0)">
              <span>PRODUCT</span>
            </a>
            <ul class="fullmenu-sublist">
              <li class="fullmenu-subitem">
                <a class="fullmenu-sublink" href="javascript:void(0)">
                  <span>아트</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="fullmenu-gnbitem">
            <a class="fullmenu-gnblink" href="javascript:void(0)">
              <span>RECOMMEND</span>
            </a>
            <ul class="fullmenu-sublist">
              <li class="fullmenu-subitem">
                <a class="fullmenu-sublink" href="javascript:void(0)">
                  <span>1:1   추천</span>
                </a>
              </li>
              <li class="fullmenu-subitem">
                <a class="fullmenu-sublink" href="javascript:void(0)">
                  <span>작품 리뷰</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="fullmenu-gnbitem">
            <a class="fullmenu-gnblink" href="javascript:void(0)">
              <span>HOW TO</span>
            </a>
            <ul class="fullmenu-sublist">
              <li class="fullmenu-subitem">
                <a class="fullmenu-sublink" href="javascript:void(0)">
                  <span>오시는 길</span>
                </a>
              </li>
              <li class="fullmenu-subitem">
                <a class="fullmenu-sublink" href="javascript:void(0)">
                  <span>경매 안내</span>
                </a>
              </li>
              <li class="fullmenu-subitem">
                <a class="fullmenu-sublink" href="javascript:void(0)">
                  <span>위탁 안내</span>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      <button class="fullmenu-close">
        <img src="main/icons/ico_close_white.svg" alt="닫기">
      </button>
    </div>
  </div>
  <!-- [E]header -->
  
  
  
  
  <script src="main/js/setting.js"></script>
  <script src="main/js/plugin.js"></script>
  <script src="main/js/template.js"></script>
  <script src="main/js/common.js"></script>
  <script src="main/js/script.js"></script>
	

  
  
  
  
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->









  <div class="basic-N51" data-bid="FelqAJ2SO7">
    

		<div id="l_order_header" style = "height: 50px !important; display:flex; align-items:center; border-top: 1px solid lightgray; border-bottom: 1px solid lightgray; box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.06), 0 2px 12px 0 rgba(0, 0, 0, 0.03); z-index: 10; padding:3%;">
						<h1 class="c_order_header">주문완료</h1>
						<ul class="step" style = "padding: 1%; display:flex; position:absolute; right: 3%; border-radius: 25px; height: 4%; width: 20%; border: 1px solid #eee;">
							<!-- D : 활성페이지 active 클래스 추가 -->
							<li class="active" style = "line-height:125%;float: left; word-spacing: 20px;"><i class="number">01 장바구니</i></li>
							<li class="second" style = " color:#333;  line-height:125%; float: left; word-spacing: 20px;"><i class="number">02 주문서</i></li>
							<li style = "line-height:125%; float: left; word-spacing: 20px; color: red;"><i class="number">03 주문완료</i></li>
						</ul>
						
		</div>
		
		
		
		

			<div style = "width: 50%; text-align:center; border-bottom: 1px solid #888; border-top: 1px solid #888; padding-bottom: 1%; padding-top: 1%; margin: 0 auto; margin-top: 5% "><h2>주문 번호: ${orderNo}</h2></div>
			<div style = "width: 50%; border-bottom: 1px solid #888; margin: 0 auto; height: 60vh; ">
				<div style = "display:flex; height: 15%; align-items:center; width: 60%; border-bottom: 1px solid #aaa; margin: 0 auto;">
					<div style = "display:flex; align-items:center; height: 100%; width: 30%; justify-content: center;"><h4>구매자</h4></div>
					<div style = "display:flex; align-items:center; height: 100%; width: 70%; justify-content: center;">${loginUser.memName}</div>
				</div>
				<div style = "display:flex; height: 15%; align-items:center; width: 60%; border-bottom: 1px solid #aaa; margin: 0 auto;">
					<div style = "display:flex; align-items:center; height: 100%; width: 30%; justify-content: center;"><h4>받는이</h4></div>
					<div style = "display:flex; align-items:center; height: 100%; width: 70%; justify-content: center;">${receiver}</div>
				</div>
				<div style = "display:flex; height: 15%; align-items:center; width: 60%;  margin: 0 auto;">
					<div style = "display:flex; align-items:center; height: 100%; width: 30%; justify-content: center;"><h4>배송 주소</h4></div>
					<div style = "display:flex; align-items:center; height: 100%; width: 70%; justify-content: center;">${address}</div>
				</div>
				<div style = "border-top: 1px solid #aaa; height: 55%; display:flex; align-items:center;">
					<div style = "height: 100%; width: 40%; display:flex; align-items: center; justify-content: center;">
						<div style = " height: 95%; width: 90%;">
							<img src = "sunwoo/images/qrcode.png" style = "width: 100%; height: 100%;">
						</div>
					</div>
					<div style = "height: 100%; width: 40%;  text-align: right; display:flex; flex-direction: column; justify-content:center;">
								<div style = "height:15%;"><h3>총 상품가격 :</h3></div>		
								<div style = "height:15%;"><h3>적립 포인트 :</h3></div>		
								<div style = "height:15%;"><h3>사용 포인트 :</h3></div>		
								<div style = "height:15%;"><h1>총 결제금액 :</h1></div>
					
					</div>
					<div style = "height: 100%; width: 20%;  text-align: right; display:flex; flex-direction: column; align-items:center; justify-content:center;">
								<div style = "height:15%;">${OrdSumPrice}원</div>		
								<div style = "height:15%;">${pointBonus}p</div>		
								<div style = "height:15%;">${ordPoPrice}p</div>		
								<div style = "height:15%;"><h4>${OrdSumPrice}원</h4></div>		
					</div>
				
				</div>
				
			
			
			</div>
			<div style = "background-color: black; color: white; text-align:center; width: 30%; height: 30%; margin-top: 15%; margin: 0 auto; cursor:pointer;" onclick = "location.href = 'artslist.ar'">미술품 목록으로 돌아가기</div>





<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!-- - ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->



<footer class="basic-N4" data-bid="jIlpy25rPB" id="">
	    <div class="footer-container container-lg" style = "margin-top: 10%;">
	      <div class="footer-top">
	        <h3 class="footer-logo">
	          <a href="javascript:void(0)">
	            <p style="color: white;">AAUCTION</p>
	          </a>
	        </h3>
	        <ul class="footer-menulist">
	          <li class="footer-menuitem">
	            <a href="javascript:void(0)">
	              <span>이용약관</span>
	            </a>
	          </li>
	          <li class="footer-menuitem">
	            <a href="javascript:void(0)">
	              <span>개인정보처리방침</span>
	            </a>
	          </li>
	          <li class="footer-menuitem">
	            <a href="javascript:void(0)">
	              <span contenteditable="true">FAQ</span>
	            </a>
	          </li>
	          <li class="footer-menuitem">
	            <a href="javascript:void(0)">
	              <span>오시는길</span>
	            </a>
	          </li>
	        </ul>
	        <ul class="footer-snslist">
	          <li class="footer-snsitem">
	          </li>
	          <li class="footer-snsitem">
	          </li>
	          <li class="footer-snsitem">
	          </li>
	          <li class="footer-snsitem">
	          </li>
	        </ul>
	      </div>
	      <div class="footer-bottom">
	        <div class="footer-txt">
	          <p> 서울시 중구 남대문로 120</p>
	          <p>
	            <span>T. 070-1004-1004</span>
	            <span>E. art@aauction.co.kr</span>
	          </p>
	        </div>
	        <div class="footer-txt">
	          <p>대표이사 김로사</p>
	        </div>
	      </div>
	    </div>
	 </footer>
  
  







</body>
</html>