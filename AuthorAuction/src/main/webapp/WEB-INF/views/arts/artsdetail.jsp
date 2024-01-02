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
  <meta name="title" content="웹사이트">
  <meta name="description" content="웹사이트입니다.">
  <meta name="keywords" content="키워드,키워드,키워드">
  <meta property="og:title" content="웹사이트">
  <meta property="og:description" content="웹사이트입니다">
  <meta property="og:image" content="https://웹사이트/images/opengraph.png">
  <meta property="og:url" content="https://웹사이트">
  <title>Products_Detail | ㅔㅔㅔ</title>
  <link rel="stylesheet" href="sunwoo/css/setting.css">
  <link rel="stylesheet" href="sunwoo/css/plugin.css">
  <link rel="stylesheet" href="sunwoo/css/template.css">
  <link rel="stylesheet" href="sunwoo/css/common.css">
  <link rel="stylesheet" href="sunwoo/css/style.css">
  
  <link rel="stylesheet" href="sunwoo/rosacss/rosasetting.css">
 	<link rel="stylesheet" href="sunwoo/rosacss/rosaplugin.css">
	<link rel="stylesheet" href="sunwoo/rosacss/rosatemplate.css">
	<link rel="stylesheet" href="sunwoo/rosacss/rosacommon.css">
	<link rel="stylesheet" href="sunwoo/rosacss/rosamain.css">
	<link rel="stylesheet" href="sunwoo/rosacss/rosastyle.css">
  
   <script src = "sunwoo/jquery/jquery-3.7.1.min.js"></script>
  
  
  
</head>

<body>
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
  
  
   <script src="sunwoo/rosajs/setting.js"></script>
  <script src="sunwoo/rosajs/plugin.js"></script>
  <script src="sunwoo/rosajs/template.js"></script>
  <script src="sunwoo/rosajs/common.js"></script>
  <script src="sunwoo/rosajs/script.js"></script>
  
  
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
 <!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
  
  
  
  
  
  
  
  
  
  
  <main class="th-layout-main ">
    <!-- [S]basic-N51 -->
    <div class="basic-N51" data-bid="FelqAJ2SO7">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="contents-left">
            <div class="contents-thumbnail">
              <img class="contents-thumbimg" src="sunwoo/proimages/${p.proImage}" alt="썸네일이미지">
            </div>
            <div style = "overflow:auto;">
            <ul class="contents-thumblist">
              <li class="contents-thumbitem">
                <img class="contents-thumbimg" src="sunwoo/proimages/${p.proImage}" alt="썸네일이미지">
              </li>
              <li class="contents-thumbitem">
                <img class="contents-thumbimg" src="sunwoo/images/img_basic_N51_2.png" alt="썸네일이미지">
              </li>
              <li class="contents-thumbitem">
                <img class="contents-thumbimg" src="sunwoo/images/img_basic_N51_3.png" alt="썸네일이미지">
              </li>
              <li class="contents-thumbitem">
                <img class="contents-thumbimg" src="sunwoo/images/img_basic_N51_4.png" alt="썸네일이미지">
              </li>
              
            </ul>
            </div>
          </div>
          
          <div class="contents-right">
            <div class="contents-right-group">
              <div class="contents-brand">
                <a href="javascript:void(0);" id = "proNo">${p.proNo}</a>
                <div class="contents-brand-group">
                  <button class="contents-btn btn-like-line">
                    <img src="sunwoo/icons/ico_like_black_line.svg" alt="하트 라인 아이콘">
                  </button>
                  <button class="contents-btn btn-like-fill">
                    <img src="sunwoo/icons/ico_like_black_fill.svg" alt="하트 채워진 아이콘">
                  </button>
                  <button class="contents-btn" onclick = "share('on')">
                    <img src="sunwoo/icons/ico_share_black.svg" alt="공유 아이콘">
                  </button>
                </div>
              </div>
              <div class="textset">
                <h2 class="textset-tit">${p.proName}</h2>
                <p class="textset-desc">${p.proWriter}</p>
              </div>
<!--               <div class="contents-badge-group"> -->
<!--                 <div class="badgeset badgeset-tag badgeset-round badgeset-line"> -->
<!--                   <span class="badgeset-text">#피부민감</span> -->
<!--                 </div> -->
<!--                 <div class="badgeset badgeset-tag badgeset-round badgeset-line"> -->
<!--                   <span class="badgeset-text">#트러블</span> -->
<!--                 </div> -->
<!--                 <div class="badgeset badgeset-tag badgeset-round badgeset-line"> -->
<!--                   <span class="badgeset-text">#진정</span> -->
<!--                 </div> -->
<!--               </div> -->
              <p class="contents-price"><span>${p.proPrice}</span><span style = "font-size: 14px; color: #555;"> 원</span>
              </p>
            </div>
            <div class="contents-right-group">
              <ul class="contents-right-list">
                <li class="contents-right-item">
                  <strong>포인트적립</strong>
                  <c:if test="${loginUser != null}">
                  <span id = "creditpoint">dd</span><small>&nbsp;p</small>
                  </c:if>
                  <c:if test="${loginUser == null}">
                  <span>로그인시 포인트적립이 가능합니다</span>
                  </c:if>
                </li>
                <li class="contents-right-item">
                  <strong>배송정보</strong>
                  <span>무료배송</span>
                </li>
              </ul>
            </div>
            <div class="contents-right-group">
              <ul class="contents-right-list">
                <li class="contents-right-item">
                  <strong>개수</strong>
                  <div class="contents-amount">
                    <button class="contents-btn btn-minus" type="button" onclick = "pricechage(this)">
                      <img src="sunwoo/icons/ico_minus_black.svg" alt="마이너스 아이콘">
                    </button>
                    <p class="contents-amount-num" >1</p>
                    <button class="contents-btn btn-plus" type="button" onclick = "checkamount(); pricechage(this)">
                      <img src="sunwoo/icons/ico_plus_black.svg" alt="플러스 아이콘">
                    </button>
                  </div>
                </li>
              </ul>
              <div style = "text-align:right; color: #888; font-size: 13px;">
              	<span>주문 가능수량 : </span> 
              	<span id = "amount">${p.proAmount}</span>
              </div>
              <div class="contents-total">
                <strong>총 결제금액</strong>
                <p class="contents-price"><span></span><span> 원</span>
                </p>
              </div>
            </div>
            <div class="contents-btn-group">
              <button class="btnset btnset-line" type="button" onclick = "addtowishlist()">장바구니</button>
              <button class="btnset" type="button" onclick = "directPay()">구매하기</button>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]basic-N51 -->
    <!-- [S]basic-N52 -->
    <div class="basic-N52" data-bid="QELQaj2sow">
      <div class="contents-inner">
        <div class="tabset tabset-fluid">
          <ul class="tabset-list container-md">
            <li class="tabset-item">
              <a class="tabset-link active" onclick= "showdetail('detaildiv')" style = "cursor:pointer;">
                <span>상세정보</span>
        
              </a>
            </li>
            <li class="tabset-item">
              <a class="tabset-link" onclick= "showdetail('qnadiv')" style = "cursor:pointer;">
                <span>상품문의</span>
              </a>
            </li>
            
            <li class="tabset-item">
              <a class="tabset-link" onclick= "showdetail('reviewdiv')" style = "cursor:pointer;">
                <span>리뷰</span>
              </a>
            </li>
            <li class="tabset-item">
              <a class="tabset-link" onclick= "showdetail('delidiv')" style = "cursor:pointer;">
                <span>배송/교환/반품안내</span>
              </a>
            </li>
          </ul>
        </div>
        
        
        
        <div class="contents-container container-md" id = "detaildiv" style = "display:flex;">
          <div class="imageset" style = "width: 50%; height: 50%;">
            <img class="imageset-img" src="sunwoo/proimages/${p.proImage}" alt="이미지">
          </div>
          <div style = "border: 1px solid red; width: 50%; display: flex; align-items:center; justify-content:center;">
          	<span>작품 명:</span><span>${p.proName}</span>
          </div>
        </div>
        
        
        
         <div class="contents-container container-md" id = "qnadiv">
          <div class="imageset">
            <img class="imageset-img" src="sunwoo/proimages/${p.proImage}" alt="이미지">
          </div>
          <div class="imageset">
            <img class="imageset-img" src="sunwoo/images/img_basic_N52_1.png" alt="이미지">
          </div>
        </div>
        
         <div class="contents-container container-md" id = "reviewdiv">
          <div class="imageset">
            <img class="imageset-img" src="sunwoo/proimages/${p.proImage}" alt="이미지">
          </div>
          <div class="imageset">
            <img class="imageset-img" src="sunwoo/images/img_basic_N52_1.png" alt="이미지">
          </div>
        </div>
        
         <div class="contents-container container-md" id = "delidiv">
          <div class="imageset">
            <img class="imageset-img" src="sunwoo/proimages/${p.proImage}" alt="이미지">
          </div>
          <div class="imageset">
            <img class="imageset-img" src="sunwoo/images/img_basic_N52_1.png" alt="이미지">
          </div>
        </div>
        
        	
        
        </div>
      </div>
    <!-- [E]basic-N52 -->
  </main>
  
  
  
  
  
 <div class="sns_share" style = "position: fixed;
	z-index: 9999;
	padding-top: 50vh;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);">
	
	<div style = "width: 500px;
	height: 200px;
	padding: 30px 30px;
	margin: 0 auto;
	border: 1px solid #777;
	background-color: #fff;">
	
 	<span style = "float: right;
	font-weight: bold;
	color: #777;
	font-size: 25px;
	cursor: pointer;" onclick = "share('off')">&times;</span>
	
	<button class="sns_share_btn" onclick="copy_to_clipboard()">클립보드에 복사</button>
		<input id = "snsaddress" type = "text" readonly style = "width: 100%;">
	<div>
	
      <!-- Kakao -->
      <button type="button"class="sns_btn">
        <a id="kakao-link-btn" href="javascript:shareKakao()">
          <img src="sunwoo/icons/icon-kakao.png" alt="카카오톡 공유하기">
        </a>
      </button>
      
      <!-- NAVER -->
      <button type="button" class="sns_btn" onclick="shareNaver()">
        <img src="sunwoo/icons/naver.png" alt="네이버 공유하기">
      </button>
      
      <!-- Facebook -->
      <!-- facebook은 공유하려는 페이지에 meta og 설정 -->
      <button type="button" class="sns_btn" onclick="shareFacebook()">
        <img src="sunwoo/icons/icon-facebook.png" alt="페이스북 공유하기">
      </button>
      
      <!-- Twitter -->
      <!-- script 작성 시 -->
      <button type="button" class="sns_btn" onclick="shareTwitter()">
        <img src="sunwoo/icons/icon-twitter.png" alt="트위터 공유하기">
      </button>
      
      <!-- a태그에 작성 시 -->
      <button type="button" class="sns_btn">
        <a href="https://twitter.com/intent/tweet?text=https://sample.com/index.php 추천코드: <?php echo $member['mb_referer']?>" target="_blank" class="sns_btn">
          <img src="/images/twitter.png" alt="트위터 공유하기">
        </a>
      </button>
      
      <!-- Telegram -->
      <!-- script 작성 시 -->
      <button type="button" class="sns_btn" onclick="shareTelegram()">
        <img src="/images/telegram.png" alt="텔레그램 공유하기">
      </button>
      
      <!-- a태그에 작성 시 -->
      <button type="button" class="sns_btn">
        <a href="https://telegram.me/share/url?url=https://sample.com/index.php&text=추천코드: <?php echo $member['mb_referer']?>" target="_blank" class="sns_btn">
          <img src="/images/telegram.png" alt="텔레그램 공유하기">
        </a>
      </button>

	</div>
	</div>
</div>
  
  
  

  
   <script src="sunwoo/js/setting.js"></script>
  <script src="sunwoo/js/plugin.js"></script>
  <script src="sunwoo/js/template.js"></script>
  <script src="sunwoo/js/common.js"></script>
  <script src="sunwoo/js/script.js"></script>
  
  
  
  <script>
  	//주문가능수량 스크립트
  	
  	var amount = document.getElementById('amount').innerText;
  	

  	function checkamount(){
  		var num = parseInt(document.getElementsByClassName('contents-amount-num')[0].innerText);

  		if(num+1>amount){
  			alert('주문가능 수량을 초과했습니다');
  			document.getElementsByClassName('contents-amount-num')[0].innerText = num-1;
  		}
  		
  	}
  
  </script>
  
  <script>
  
	
	
  		//총 결제 금액 스크립트
  		const originalprice = parseInt(document.getElementsByClassName('contents-price')[0].children[0].innerText);
  		document.getElementsByClassName('contents-price')[0].children[0].innerText = originalprice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
  		
  		document.getElementsByClassName('contents-price')[1].children[0].innerText= originalprice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
  		
		//포인트 적립 가격 변동 스크립트
		const originalPoint = ${loginUser.graBonus}/100 * originalprice;
		const newPoint = parseInt(Math.round((originalPoint/10)) * 10);
		document.getElementById('creditpoint').innerText = newPoint.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		
		function pricechage(btn){
			var newprice = originalprice*(parseInt(document.getElementsByClassName('contents-amount-num')[0].innerText));
			var newnewPoint = newPoint*(parseInt(document.getElementsByClassName('contents-amount-num')[0].innerText));
			switch(btn.className){
					
				case "contents-btn btn-plus": 
					newprice = newprice+originalprice;  
					newnewPoint = newnewPoint+newPoint; break;
				case "contents-btn btn-minus":
					
					if(parseInt(document.getElementsByClassName('contents-amount-num')[0].innerText) != 1){
					newprice = newprice-originalprice;  
					newnewPoint = newnewPoint-newPoint;
					}
					break;
			
				}
			document.getElementsByClassName('contents-price')[1].children[0].innerText = newprice.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
			document.getElementById('creditpoint').innerText = newnewPoint.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		}		
		
		
		
		
		
  
  </script>
  
  
  
  
  <script>
  	//게시물 공유 스크립트
  	
  	document.getElementsByClassName('sns_share')[0].style.display = "none";
  	document.getElementById('snsaddress').value = window.location.href;
  	
  	function share(condition){
  		
  		if(condition == 'on'){
  			document.getElementsByClassName('sns_share')[0].style.display = "block";
  			
  		}else{
  			document.getElementsByClassName('sns_share')[0].style.display = "none";
  		};
  		
  	}
  	
  	
  	const uri = window.location.href;
  	console.log(uri);
// NAVER
	function shareNaver() {
	  const title = "어서옥션";
	  window.open(
    "https://share.naver.com/web/shareView?url=" + uri + "&title=" + title
  );
}

// Facebook
	function shareFacebook() {
	  const title = "어서옥션";
	  window.open(
    "http://www.facebook.com/sharer/sharer.php?u=" + uri + "&title=" + title
  );
}

// Twitter
	function shareTwitter() {
	  const text = "어서옥션";
	  const url = "https://sample.com/index.php";
	  window.open(
    "https://twitter.com/intent/tweet?text=" + uri + text
  );
}

// Telegram
	function shareTelegram() {
	  const text = "어서옥션";
	  const url = "https://sample.com/index.php";
	  window.open("https://telegram.me/share/url?url=" + uri + "&text=" + text);
}




//클립보드에 링크 복사 스크립트


function copy_to_clipboard(){
var r = document.createRange();
r.selectNode(document.getElementById('snsaddress'));
window.getSelection().removeAllRanges();
window.getSelection().addRange(r);
document.execCommand('copy');
window.getSelection().removeAllRanges();
}

</script>

  
  <script>
  	
  		//장바구니에 물건 담든 스크립트
  
  		function addtowishlist(){
  			
  			if(${countwis} == 0){	
  				
  			const proNo = parseInt(document.getElementById('proNo').innerText);
  			var wisAmount = parseInt(document.getElementsByClassName('contents-amount-num')[0].innerText);
  			
  		  $.ajax({
			    url: 'addtowishlist.ar',
			    type: 'GET',
			    data: {
			    	memId: ${loginid},
			    	proNo: proNo,
			    	wisAmount: wisAmount
			    },
			    success: function onData (msg) {
			        alert(msg);
			        var btn = document.getElementsByClassName('btnset-line')[0];
			  		 btn.style.backgroundColor = "#bbb";
			  		 btn.style.cursor = 'not-allowed';
			  		 
			    },
			    error: function onError (error) {
			        console.error(error);
			    }
			});
  		}else{
  			
  			alert('장바구니에 이미 상품이 있습니다.');
  		}
  	}	
  
  </script>
  
  <script>
  		//장바구니 버튼 바꾸기 스크립트
  	
  		if(${countwis} != 0){
  			
  	   var btn = document.getElementsByClassName('btnset-line')[0];
  		 btn.style.backgroundColor = "#bbb";
  		 btn.style.cursor = 'not-allowed';
  	
  	}
  
  </script>
  
  <script>
  
  
  	//바로 구매
  	function directPay(){
  		
  		var amount = parseInt(document.getElementsByClassName('contents-amount-num')[0].innerText);
  		
  		location.href = 'directPayment.ar?proNo='+${p.proNo}+"&amount="+amount;
  		
  		
  	}
  
  
  </script>
  
  <script>
   var  delidiv = document.getElementById('delidiv')
  var reviewdiv = document.getElementById('reviewdiv')
  var qnadiv = document.getElementById('qnadiv')
  var detaildiv = document.getElementById('detaildiv')
  
 	 delidiv.style.display = "none";
  	reviewdiv.style.display = "none";
  	qnadiv.style.display = "none";
  
  	function showdetail(kind){
  
  		switch(kind){
  		
  		case 'delidiv': delidiv.style.display = "block";
  		reviewdiv.style.display = "none";
  		qnadiv.style.display = "none";
  		detaildiv.style.display = "none";
  					break;	
  		
  		case 'reviewdiv': reviewdiv.style.display = "block";
  		delidiv.style.display = "none";
  		qnadiv.style.display = "none";
  		detaildiv.style.display = "none";
  					break;	
  		
  		case 'qnadiv': qnadiv.style.display = "block";
  		reviewdiv.style.display = "none";
  		delidiv.style.display = "none";
  		detaildiv.style.display = "none";
  					break;	
  		
  		case 'detaildiv': detaildiv.style.display = "block";
  		reviewdiv.style.display = "none";
  		qnadiv.style.display = "none";
  		delidiv.style.display = "none";
  					break;	
  		
  		}
  		
  	}
  
  
  </script>
  
  
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  <!-- ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  
  
  
  
  <!-- [S]basic-N4 -->
  <footer class="basic-N4" data-bid="yNLQAJ2SpS">
    <div class="footer-container container-lg">
      <div class="footer-top">
        <h1 class="footer-logo">
          <a href="javascript:void(0)">
            <img src="sunwoo/images/img_logo_lightgray.png" alt="로고">
          </a>
        </h1>
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
              <span>푸터메뉴1</span>
            </a>
          </li>
          <li class="footer-menuitem">
            <a href="javascript:void(0)">
              <span>푸터메뉴2</span>
            </a>
          </li>
        </ul>
        <ul class="footer-snslist">
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="sunwoo/icons/ico_instagram_lightgrey.svg" alt="인스타그램">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="sunwoo/icons/ico_youtube_lightgrey.svg" alt="유튜브">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="sunwoo/icons/ico_facebook_lightgrey.svg" alt="페이스북">
            </a>
          </li>
          <li class="footer-snsitem">
            <a class="footer-snslink" href="javascript:void(0)">
              <img src="sunwoo/icons/ico_kakao_lightgrey.svg" alt="카카오톡">
            </a>
          </li>
        </ul>
      </div>
      <div class="footer-bottom">
        <div class="footer-txt">
          <p> 서울시 영등포구 선유로70 우리벤처타운2 705호 </p>
          <p>
            <span>T. 070-8872-8874</span>
            <span>E. help@openfield.co.kr</span>
          </p>
        </div>
        <div class="footer-txt">
          <p>2022 BY TEMPLATEHOUSE. ALL RIGHTS RESEVED</p>
        </div>
      </div>
    </div>
  </footer>
  <!-- [E]basic-N4 -->
 
</body>
</html>