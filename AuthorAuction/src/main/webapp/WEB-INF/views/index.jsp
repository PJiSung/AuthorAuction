<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- [E]basic-N4 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="imagetoolbar" content="no">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="format-detection" content="telephone=no">
<link rel="shortcut icon" type="image⁄x-icon" href="main/icons/logoImage.png">
<link rel="stylesheet" href="main/css/setting.css">
<link rel="stylesheet" href="main/css/plugin.css">
<link rel="stylesheet" href="main/css/template.css">
<link rel="stylesheet" href="main/css/common.css">
<link rel="stylesheet" href="main/css/main.css">
<link rel="stylesheet" href="main/css/style.css?ver=1">
<title>AUTHOR AUCTION</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
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
            <a class="header-gnblink" href="">
              <span>RECOMMEND</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="recommendationList.re">
                  <span>1:1 추천</span>
                </a>
              </li>
              <li class="header-subitem">
                <a class="header-sublink" href="reviewList.rv">
                  <span>작품 리뷰</span>
                </a>
              </li>
            </ul>
          </li>
          <li class="header-gnbitem">
            <a class="header-gnblink" href="">
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
        	<c:if test="${ empty loginUser }">
	         	<a href="loginView"><span class="header-gnblink">LOGIN</span></a>
        	</c:if>
        	<c:if test="${ !empty loginUser }">
          		<a href="logout"><span class="header-gnblink">LOGOUT</span></a>
        	</c:if>
          <div class="dropdown btn-user header-utils-btn">
            <img src="main/icons/ico_user_black.svg" class="dropbtn" alt="유저 아이콘">
            <div class="dropdown-content-user">
               <table>
                  <tr>
                     <td class="profile">
                        <div class="profilePic">
                           <img src="${ loginUser.memFileName }" alt="프로필 사진" class="profileImg">
                        </div>
                     </td>
                     <td style="line-height: 20px; cursor: pointer;" onclick="location.href='';">
                        <div class="userText"><b>계정 관리</b></div>
                        <div class="userText">${ loginUser.memId }</div>
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
  
  
  
  
  
  
  
  
  
  
  
  <main class="th-layout-main ">
    <!-- [S]mainSlid -->
    <div class="mainSlid" data-bid="sKLpY4QC45" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="contents-swiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <img class="contents-backimg img-pc" src="main/mainPic/mslide1.jpeg" alt="PC 비주얼 이미지">
                <div class="contents-slide-group" style="left:10rem;">
                  <div class="textset textset-visual">
                    <h3 class="textset-tit">Collector's Room : Online Auction<br>해외미술품</h3>
                    <p class="textset-desc">프리뷰 | 12월 24일-12월 26일, 24시간 항시<br>경매 | 12/27(수) 4pm부터 응찰 시작</p>
                  </div>
                  <a class="btnset btnset-line btnset-round" href="javascript:void(0)">자세히보기</a>
                </div>
              </div>
              <div class="swiper-slide">
                <img class="contents-backimg img-pc" src="main/mainPic/mSlide4.png" alt="PC 비주얼 이미지">
                <div class="contents-slide-group" style="left:10rem;">
                  <div class="textset textset-visual">
                    <h3 class="textset-tit"> Blumen mit einem weißen Vogel <br> 김가현 개인전 </h3>
                    <p class="textset-desc"> 2023.12.8 FRI - 12.22 FRI <br> 당신의 꿈과 희망, 사랑을 밝혀줄 김가현 작가의 따뜻한 편지들 </p>
                  </div>
                  <a class="btnset btnset-line btnset-round" href="javascript:void(0)">자세히보기</a>
                </div>
              </div>
              <div class="swiper-slide">
                <img class="contents-backimg img-pc" src="main/mainPic/mSlide5.jpeg" alt="PC 비주얼 이미지">
                <div class="contents-slide-group" style="left:10rem;">
                  <div class="textset textset-visual">
                    <h3 class="textset-tit"> Collector's Room : Online Auction <br> 근현대 & 해외미술품 </h3>
                    <p class="textset-desc"> 프리뷰 | 12월 1일-12월 13일, 24시간 항시 <br> 경매 | 12/13(수) 2pm부터 응찰 시작 </p>
                  </div>
                  <a class="btnset btnset-line btnset-round" href="javascript:void(0)">자세히보기</a>
                </div>
              </div>
              <div class="swiper-slide">
                <img class="contents-backimg img-pc" src="main/mainPic/mSlide2.jpeg" alt="PC 비주얼 이미지">
                <div class="contents-slide-group" style="left:10rem;">
                  <div class="textset textset-visual">
                    <h3 class="textset-tit"> I hate kimchi so much, <br> 박지성 개인전 </h3>
                    <p class="textset-desc"> 2023.12.22 FRI - 1.12 FRI <br> 한국 편식의 거장, 박지성 작가가 전하는 김치와의 사투 이야기 </p>
                  </div>
                  <a class="btnset btnset-line btnset-round" href="javascript:void(0)">자세히보기</a>
                </div>
              </div>
              <div class="swiper-slide">
                <img class="contents-backimg img-pc" src="main/mainPic/mSlide3.jpeg" alt="PC 비주얼 이미지">
                <div class="contents-slide-group" style="left:10rem;">
                  <div class="textset textset-visual">
                    <h3 class="textset-tit"> INVITATION <br> TO CONSIGN </h3>
                    <p class="textset-desc"> 당신의 소중한 작품,  AUTHOR AUCTION이 그 가치를 높여드립니다. <br> 위탁안내 | art@aauction.co.kr</p>
                  </div>
                  <a class="btnset btnset-line btnset-round" href="javascript:void(0)">자세히보기</a>
                </div>
              </div>
            </div>
            <div class="contents-control">
              <div class="swiper-button-prev"></div>
              <div class="swiper-pagination"></div>
              <div class="swiper-button-next"></div>
              <div class="swiper-button-pause">
                <img src="main/icons/ico_pause_white.svg" alt="스와이퍼 멈춤버튼">
              </div>
              <div class="swiper-button-play">
                <img src="main/icons/ico_play_white.svg" alt="스와이퍼 재생버튼">
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]mainSlid -->
    <!-- [S]firstMent -->
    <div class="firstMent" data-bid="IIlPy25rNM">
      <div class="contents-container container-md">
        <div class="textset">
          <h2 class="textset-tit">"WELCOME! AUTHOR AUCTION"</h2>
          <p class="textset-desc"> 환영합니다. AUTHOR AUCTION은 미술품 경매와 판매가 함께 이루어진 특별한 공간입니다. <br> 이 곳에서 여정을 함께 나누며 예술의 아름다움에 빠져보세요. AUTHOR AUCTION은 여러분들을 특별한 예술의 세계로 안내하겠습니다. </p>
        </div>
      </div>
    </div>
    <!-- [E]firstMent -->
    <!-- [S]action -->
    <div class="action" data-bid="HblpY4T986" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="textset-tit">Best Auction</h2>
            <p class="textset-desc">베스트 경매를 지금 바로 만나보세요!</p>
          </div>
          <div class="swiper contents-swiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/auction1.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 3</span>
                    <h2 class="cardset-tit">문형태</h2>
                    <p class="cardset-desc">Diamond</p>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/auction2.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 5</span>
                    <h2 class="cardset-tit"> 키미 </h2>
                    <p class="cardset-desc">Paradise</p>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/auction3.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 14</span>
                    <h2 class="cardset-tit">오세열</h2>
                    <p class="cardset-desc">무제</p>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/auction4.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 9</span>
                    <h2 class="cardset-tit">김규비</h2>
                    <p class="cardset-desc">A Shining Dream</p>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/auction5.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 16</span>
                    <h2 class="cardset-tit">이재현</h2>
                    <p class="cardset-desc">Gentleman & Duck</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
    <!-- [E]action -->
    <!-- [S]product -->
    <div class="product" data-bid="iOLpY4tee0" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="textset-tit">Best Product</h2>
            <p class="textset-desc">베스트 상품을 지금 바로 만나보세요!</p>
          </div>
          <div class="swiper contents-swiper">
            <div class="swiper-wrapper">
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/product1.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 2</span>
                    <h2 class="cardset-tit">김제언</h2>
                    <p class="cardset-desc">Tell me your wish</p>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/product2.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 8</span>
                    <h2 class="cardset-tit"> 유선태 </h2>
                    <p class="cardset-desc">신기루 - 말과 글</p>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/product3.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 9</span>
                    <h2 class="cardset-tit"> 파인리틀데이 </h2>
                    <p class="cardset-desc">SOFIA LIND
                    </p>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/product4.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 5</span>
                    <h2 class="cardset-tit"> 데이비드 슈리글리 </h2>
                    <p class="cardset-desc">It was worthwhile doing this
                    </p>
                  </div>
                </a>
              </div>
              <div class="swiper-slide">
                <a href="javascript:void(0);" class="cardset cardset-shopping">
                  <figure class="cardset-figure">
                    <img class="cardset-img" src="main/mainPic/product5.png" alt="스와이퍼 이미지">
                  </figure>
                  <div class="cardset-body">
                    <span class="cardset-name">NO. 15</span>
                    <h2 class="cardset-tit"> 청신 </h2>
                    <p class="cardset-desc">Black Neon(BE2356)</p>
                  </div>
                </a>
              </div>
            </div>
          </div>
          <div class="swiper-button-prev"></div>
          <div class="swiper-button-next"></div>
          <div class="swiper-pagination"></div>
        </div>
      </div>
    </div>
    <!-- [E]product -->
    <!-- [S]basic-N43 -->
    <div class="basic-N43" data-bid="colpY6Vpia" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="cardset cardset-inner">
            <figure class="cardset-figure">
              <img class="cardset-img" src="main/mainPic/ex2.jpg" alt="카드 이미지">
            </figure>
            <div class="cardset-body">
              <h2 class="cardset-tit">경매 안내</h2>
              <p class="cardset-desc">회원가입부터 응찰까지 ​<br>​누구나 쉽게 경매에 참여할 수 있습니다. &nbsp;</p>
            </div>
          </div>
          <div class="cardset cardset-inner">
            <figure class="cardset-figure">
              <img class="cardset-img" src="main/mainPic/ex1.jpeg" alt="카드 이미지">
            </figure>
            <div class="cardset-body">
              <h2 class="cardset-tit">위탁 안내</h2>
              <p class="cardset-desc">고객님의 소중한 작품을 기다립니다.​<br>​AUTHOR AUCTION에 문의하세요.<br></p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]basic-N43 -->
    <!-- [S]basic-N18 -->
    <div class="basic-N18" data-bid="RqLpY6bs80" id="">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="textset-tit">ART NEWS</h2>
          </div>
          <div class="contents-group">
            <div class="cardset">
               <a href="https://www.ikoreanspirit.com/news/articleView.html?idxno=72334">
                 <figure class="cardset-figure">
                   <img class="cardset-img" src="main/mainPic/news1.jpg" alt="이미지">
                 </figure>
                 <div class="cardset-body">
                   <h2 class="cardset-tit">김제언 작가 개인전 개최</h2>
                   <p class="cardset-desc"> 어려움을 극복하고 일상에서 느끼는 행복한 감정,<br> 김제언 개인전 《Beyond the limits》 </p>
                 </div>
                 </a>
            </div>
            <div class="cardset">
               <a href="https://www.munhwa.com/news/view.html?no=2023101601032212273001">
                 <figure class="cardset-figure">
                   <img class="cardset-img" src="main/mainPic/news2.jpeg" alt="이미지">
                 </figure>
                 <div class="cardset-body">
                   <h2 class="cardset-tit">젊어진 미술시장 속 ‘MZ 컬렉터’</h2>
                   <p class="cardset-desc"> 젊은층의 미술시장 침입은 비단 관람에만 국한되지 않는다. 이들은 ‘MZ 컬렉터’라는 이름으로 미술품 투자시장도 다시 그리고 있다. </p>
                 </div>
                </a>
            </div>
            <div class="cardset">
               <a href="https://www.marieclairekorea.com/culture/2023/09/youngcollector/">
                 <figure class="cardset-figure">
                   <img class="cardset-img" src="main/mainPic/news3.jpeg" alt="이미지">
                 </figure>
                 <div class="cardset-body">
                   <h2 class="cardset-tit">젊은 컬렉터들이 주목하는 것</h2>
                   <p class="cardset-desc"> 1 백여 명의 영 컬렉터를 대상으로 “당신은 미술작품을 살 때 어떤 면에 이끌리는가?”라는 질문을 던졌다. </p>
                 </div>
               </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]basic-N18 -->
    <!-- [S]basic-N31 -->
    <div class="basic-N31" data-bid="phlpY77iee">
      <div class="contents-inner">
        <div class="contents-container container-md">
          <div class="textset">
            <h2 class="textset-tit">"We Promise to You"</h2>
            <p class="textset-desc"> AUTHOR AUCTION은 예술을 추구하는 분들을 위한 안전한 플랫폼을 제공합니다. <br> 각 작품은 정품 인증이 완료된 상태로 판매되며, 소유자들 간의 거래는 투명하게 진행됩니다. <br> 시작해보세요! 예술의 새로운 세계가 여러분을 기다리고 있습니다.
            </p>
          </div>
        </div>
      </div>
    </div>
    <!-- [E]basic-N31 -->
  </main>
  <!-- [S]basic-N4 -->
  <footer class="basic-N4" data-bid="jIlpy25rPB" id="">
    <div class="footer-container container-lg">
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