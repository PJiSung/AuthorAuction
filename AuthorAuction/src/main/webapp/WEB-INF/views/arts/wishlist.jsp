<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<!--   <link rel="stylesheet" href="css/setting.css"> -->
<!--   <link rel="stylesheet" href="css/plugin.css"> -->
<!--   <link rel="stylesheet" href="css/template.css"> -->
<!--   <link rel="stylesheet" href="css/common.css"> -->
  <link rel="stylesheet" href="sunwoo/css/style.css">
<!--   <link rel="stylesheet" href="css/wishlist.css"> -->
  
  
  <link rel="stylesheet" href="main/css/setting.css">
<link rel="stylesheet" href="main/css/plugin.css">
<link rel="stylesheet" href="main/css/template.css">
<link rel="stylesheet" href="main/css/common.css">
<link rel="stylesheet" href="main/css/main.css">
<link rel="stylesheet" href="main/css/style.css">
	
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
	










<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->
<!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= --><!-- <!================= -->











    <div class="basic-N51" data-bid="FelqAJ2SO7">
    

		<div id="l_order_header" style = "height: 50px !important; display:flex; align-items:center; border-top: 1px solid lightgray; border-bottom: 1px solid lightgray; box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.06), 0 2px 12px 0 rgba(0, 0, 0, 0.03); z-index: 10; padding:3%;">
						<h1 class="c_order_header">장바구니</h1>
						<ul class="step" style = "padding: 1%; display:flex; position:absolute; right: 3%; border-radius: 25px; height: 4%; width: 20%; border: 1px solid #eee;">
							<!-- D : 활성페이지 active 클래스 추가 -->
							<li class="active" style = "color:#333; line-height:125%;float: left; word-spacing: 20px;"><i class="number">01 장바구니</i></li>
							<li class="second" style = " line-height:125%; float: left; word-spacing: 20px;"><i class="number">02 주문서</i></li>
							<li style = "line-height:125%; float: left; word-spacing: 20px;"><i class="number">03 주문완료</i></li>
						</ul>
						
		</div>
		
		
		
		
		<div id  ="selectdiv" style = "width: 60vw; margin-left: 5vw; height: 6vh; display: flex; align-items: center; 	background-color: #fafafa;
 	border-top : 1px solid #eee;
 	border-bottom : 1px solid #eee;
 	margin-top: 2%;
 	font-size: 17px;
 	color: #333;">
				<div style = "width: 5%; height: 100%; display:flex; align-items: center;justify-content: center; " ><input type = "checkbox" id = "allcheck" style = "cursor:pointer;"></div>
				<div style = "width: 10%; height: 100%; display:flex; align-items: center;justify-content: center; " ><label for = "allcheck" style = "cursor:pointer;">전체선택</label></div>
				<div style = " width: 10%; height: 100%; display:flex; align-items: center;justify-content: center; border-left: 1px solid #ccc; margin-left: 1%; padding-left: 1%;" ><label for = "selectedcheck" style = "cursor:pointer;">선택삭제</label></div>
		</div>
			
			
			
		<div style = "border-top: 1px solid #bbb; border-bottom: 1px solid #ccc; width: 60vw; margin-top: 5vh; margin-left: 5vw;">
		
				
					<div style = "height: 30vh; line-height: 20vh; display: flex; align-items: center; ">	
					
						<div style ="width:5%; height: 100%; display:flex; align-items: center;justify-content: center;"><input type = "checkbox"></div>
						<div style ="width:30%; height: 100%; display:flex; align-items: center;justify-content: center;" ><img src= "sunwoo/images/img_basic_N51_4.png" style = "width: 100%; height: 90%;"></div>
						<div style ="width:30%; height: 100%; flex-direction: column; justify-content: center;" >
							<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center; word-break:break-all" >작품명</div>
							<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center; word-break:break-all" >작가</div>
							<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center; word-break:break-all" >상세보기</div>
						</div>
				    	<div class="contents-amount" style = "display: flex !important; justify-content: center !important; align-items: center !important; width: 15% !important; height: 100% !important;">
	                    <button class="contents-btn btn-minus" type="button" onclick = "minusprice(this)">
	                      <img src="sunwoo/icons/ico_minus_black.svg" alt="마이너스 아이콘">
	                    </button>
	                    <p class="contents-amount-num">1</p>
	                    <button class="contents-btn btn-plus" type="button" onclick = "plusprice(this)">
	                      <img src="sunwoo/icons/ico_plus_black.svg" alt="플러스 아이콘">
	                    </button>
	             	    </div>
				   		<div class = "productprice"  style ="width:15%; height: 100%; display:flex; align-items: center;justify-content: center; word-break:break-all">123,240,000</div>
				   		<div style ="width:5%; height: 100%; display:flex; align-items: center;justify-content: center;"><img src = "sunwoo/icons/ico_close_black.svg"></div>
			  		</div>
			  		
			  		
			  			<div style = "height: 30vh; line-height: 20vh; display: flex; align-items: center; ">	
					
						<div style ="width:5%; height: 100%; display:flex; align-items: center;justify-content: center;"><input type = "checkbox"></div>
						<div style ="width:30%; height: 100%; display:flex; align-items: center;justify-content: center;" ><img src= "sunwoo/images/img_basic_N51_4.png" style = "width: 100%; height: 90%;"></div>
						<div style ="width:30%; height: 100%; flex-direction: column; justify-content: center;" >
							<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center;" >작품명</div>
							<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center;" >작가</div>
							<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center;" >상세보기</div>
						</div>
				    	<div class="contents-amount" style = "display: flex !important; justify-content: center !important; align-items: center !important; width: 15% !important; height: 100% !important;">
	                    <button class="contents-btn btn-minus" type="button" onclick = "minusprice(this)">
	                      <img src="sunwoo/icons/ico_minus_black.svg" alt="마이너스 아이콘">
	                    </button>
	                    <p class="contents-amount-num">1</p>
	                    <button class="contents-btn btn-plus" type="button" onclick = "plusprice(this)">
	                      <img src="sunwoo/icons/ico_plus_black.svg" alt="플러스 아이콘">
	                    </button>
	             	    </div>
				   		<div class = "productprice" style ="width:15%; height: 100%; display:flex; align-items: center;justify-content: center;">238,000</div>
				   		<div style ="width:5%; height: 100%; display:flex; align-items: center;justify-content: center;"><img src = "sunwoo/icons/ico_close_black.svg"></div>
			  		</div>
			  			<div style = "height: 30vh; line-height: 20vh; display: flex; align-items: center; ">	
					
						<div style ="width:5%; height: 100%; display:flex; align-items: center;justify-content: center;"><input type = "checkbox"></div>
						<div style ="width:30%; height: 100%; display:flex; align-items: center;justify-content: center;" ><img src= "sunwoo/images/img_basic_N51_4.png" style = "width: 100%; height: 90%;"></div>
						<div style ="width:30%; height: 100%; flex-direction: column; justify-content: center;" >
							<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center;" >작품명</div>
							<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center;" >작가</div>
							<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center;" >상세보기</div>
						</div>
				    	<div class="contents-amount" style = "display: flex !important; justify-content: center !important; align-items: center !important; width: 15% !important; height: 100% !important;">
	                    <button class="contents-btn btn-minus" type="button" onclick = "minusprice(this)">
	                      <img src="sunwoo/icons/ico_minus_black.svg" alt="마이너스 아이콘">
	                    </button>
	                    <p class="contents-amount-num">1</p>
	                    <button class="contents-btn btn-plus" type="button" onclick = "plusprice(this)">
	                      <img src="sunwoo/icons/ico_plus_black.svg" alt="플러스 아이콘">
	                    </button>
	             	    </div>
				   		<div class = "productprice" style ="width:15%; height: 100%; display:flex; align-items: center;justify-content: center; word-break:break-all">1,039,930</div>
				   		<div style ="width:5%; height: 100%; display:flex; align-items: center;justify-content: center;"><img src = "sunwoo/icons/ico_close_black.svg"></div>
			  		</div>
			  		
			  
		</div>
	
		
	</div>	
	
	  <div style = "background-color: #eee; position: fixed; top: 20vh; width: 25%; right: 5%; height: 60vh; box-shadow: 5px 5px 1px 1px; z-index: 10;">
	  	<div style = "overflow:auto; height: 85%;">
	  		<div style = "height: 30%; display:flex; align-items:center; border-bottom: 1px solid red;">
	  			<div style= "width: 40%; height: 100%; display: flex; align-items:center; justify-content:center "><img src = "sunwoo/images/img_basic_N51_4.png" style = "width: 100%; height: 100%;"></div>
	  			<div style = "width: 60%; height: 100%;">
	  				<div style = "height: 20%; display:flex; justify-content : flex-end; align-items: center;"> <img src = "sunwoo/icons/ico_close_black.svg" style = "width: 10%;"></div>
	  				<div style = "height: 40%; display: flex; align-items:center; justify-content:flex-end; word-break:break-all; font-weight: bold; color:black; padding-right: 10%; border-bottom: 1px solid #fff;">해바라기</div>
	  				<div style = "height: 20%; display: flex; align-items:center; justify-content:flex-end; word-break:break-all;  color:black; padding-right: 10%;">배송비 : 3000원</div>
	  				<div style = "height: 20%; display: flex; align-items:center; justify-content:flex-end; word-break:break-all;  color:black; padding-right: 10%;">제품비용: 3000000원</div>
	  			</div>
	  		</div>
	  		
	  	</div>
	  
	  	<div style = "position:absolute; bottom: 0%; background-color:gray; width: 100%; height: 15%; display: flex; align-items:center; padding-left: 10%; word-break:break-all;">
	  	<h1>총 합계 : 1000000000원</h1>
	  	</div>
	  </div>
	
	
  <script src="sunwoo/js/setting.js"></script>
  <script src="sunwoo/js/plugin.js"></script>
  <script src="sunwoo/js/template.js"></script>
  <script src="sunwoo/js/common.js"></script>
  <script src="sunwoo/js/script.js"></script>
  
  
  
  <script>
  	//가격 변하는 스크립트
  	var pluses = document.getElementsByClassName('btn-plus');
  	var minuses = document.getElementsByClassName('btn-minus');
  	var productprices = document.getElementsByClassName('productprice');
  	
  	
  	function plusprice(bt){
  		var pricestring = bt.parentNode.nextElementSibling.innerText;
  		var prices =  pricestring.split(',');
  		var jegob = 1;
  		var total = 0;
  		var quantity = parseInt(bt.previousElementSibling.innerText)+1;
  			for(var i=prices.length-1; i>=0; i--){
  				
  					
  					for(var j =0; j<=(prices.length-1)-i; j++){
  						
  						if(j!=0){
  							jegob = jegob*1000;
  						}
  						
  					}
  						total = total + (parseInt(prices[i])*jegob);
  						jegob = 1;
  						
  			}
//   			console.log(quantity);
  			total = total*quantity;
  			
  			console.log(total);
//   			console.log(total.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ','));
  			
  			
  			
  	}
  	function minusprice(){
  		
  		
  	}
  </script>
  
  
  
  
  
  
  
<!--   -------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!--   -------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!--   -------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!--   -------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!--   -------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!--   -------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!--   -------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!--   -------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
<!--   -------------------------------------------------------------------------------------------------------------------------------------------------------------------- -->
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
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