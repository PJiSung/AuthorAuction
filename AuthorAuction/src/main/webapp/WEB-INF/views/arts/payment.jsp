<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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



input.check_btn{
  display:none;
  }

input.check_btn + label{
  cursor:pointer;
 }

input.check_btn + label > span{
  vertical-align: middle;
  padding-left: 5px;
 }

/* label:before에 체크하기 전 상태 CSS */
input.check_btn + label:before{
  content:"";
  display:inline-block;
  width:17px;
  height:17px;
  border:2px solid #888;
  border-radius: 4px;
  vertical-align:middle;
  }
  
/* label:before에 체크 된 상태 CSS */  
input.check_btn:checked + label:before{
  content:"";
  background-color:#F47C7C;
  border-color:#F47C7C;
  background-image: url('check_btn.png');
  background-repeat: no-repeat;
  background-position: 50%;
  }



</style>


	
</head>
<body>
	<!-- [S]personal-rglq12YMbj -->
  <div class="personal-rglq12YMbj" data-bid="uIlq13xFtx" id="">
    <div class="header-container container-lg">
      <div class="header-left">
        <h1 class="header-title">
          <a href="javascript:void(0)">
             <h5>AAUCTION</h5>
           <!-- <img src="rosaimages/" alt="로고"> -->
          </a>
        </h1>
      </div>
      <div class="header-center">
        <ul class="header-member">
          <li>
            <a href="javascript:void(0)">로그인</a>
          </li>
          <li>
            <a href="javascript:void(0)">회원가입</a>
          </li>
        </ul>
        <ul class="header-gnblist">
          <li class="header-gnbitem">
            <a class="header-gnblink" href="javascript:void(0)">
              <span>AUCTION</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="${contextPath}/home.jsp">
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
            <a class="header-gnblink" href="javascript:void(0)">
              <span>RECOMMEND</span>
            </a>
            <ul class="header-sublist">
              <li class="header-subitem">
                <a class="header-sublink" href="javascript:void(0)">
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
            <a class="header-gnblink" href="javascript:void(0)">
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
                <a class="header-sublink" href="javascript:void(0)">
                  <span>위탁 안내</span>
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
      <div class="header-right">
        <div class="header-utils">
          <a href=""><span class="header-gnblink">LOGIN</span></a>
          <!-- <a href=""><span class="header-gnblink">LOGOUT</span></a>  -->
          <div class="dropdown btn-user header-utils-btn">
            <img src="sunwoo/rosaicons/ico_user_black.svg" class="dropbtn" alt="유저 아이콘">
            <div class="dropdown-content-user">
               <table>
                  <tr>
                     <td class="profile">
                        <div class="profilePic">
                           <img src="resources/mainPic/profilePic.jpg" alt="프로필 사진" class="profileImg">
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
            <img src="sunwoo/rosaicons/ico_cart_black.svg" alt="쇼핑 아이콘">
            <span class="cartCount">1</span>
          </a>
          <div class="dropdown btn-search header-utils-btn">
            <img src="sunwoo/rosaicons/ico_seach_black.svg" class="dropbtn" alt="검색 아이콘">
            <div class="dropdown-content-keyword">
              <form id="search-form">
                  <input type="text" id="search-input" placeholder="작품명 또는 작가명">
                  <button><img alt="검색 버튼" src="sunwoo/rosaicons/ico_seach_black.svg"></button>
              </form>
              <div id="search-results">
              	<div class="searchDiv">
                 <table class="searchTable" style="table-layout: fixed; width: 93%;">
                    <tr>
                       <td style="width: 17%;">
                          <div class="searchImg">
                             <img alt="검색 사진" src="resources/mainPic/news1.jpg">
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
                             <img alt="검색 사진" src="resources/mainPic/auction4.png">
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
                             <img alt="검색 사진" src="resources/mainPic/news3.jpeg">
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
                             <img alt="검색 사진" src="resources/mainPic/product2.png">
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
                             <img alt="검색 사진" src="resources/mainPic/product4.png">
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
                             <img alt="검색 사진" src="resources/mainPic/product1.png">
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
            <img src="sunwoo/rosaicons/ico_menu_black.svg" alt="PC메뉴">
          </button>
          <button class="btn-momenu header-utils-btn">
            <img src="sunwoo/rosaicons/ico_menu_black.svg" alt="모바일메뉴">
          </button>
          <button class="btn-moclose header-utils-btn">
            <img src="sunwoo/rosaicons/ico_close_black.svg" alt="닫기">
          </button>
        </div>
      </div>
    </div>
    <div class="header-fullmenu fullmenu-top">
      <div class="fullmenu-wrapper">
        <div class="fullmenu-head">
          <h4 class="fullmenu-title">
            <a href="javascript:void(0)">
              <img src="rosaimages/" alt="로고">
            </a>
          </h4>
          <ul class="fullmenu-member">
            <li>
              <a href="javascript:void(0)">로그인</a>
            </li>
            <li>
              <a href="javascript:void(0)">회원가입</a>
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
        <img src="sunwoo/rosaicons/ico_close_white.svg" alt="닫기">
      </button>
    </div>
  </div>
  <!-- [E]header -->
   <script src="main/js/setting.js"></script>
  <script src="main/js/plugin.js"></script>
  <script src="main/js/template.js"></script>
  <script src="main/js/common.js"></script>
  <script src="main/js/script.js"></script>
	





<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
<!-- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -------------------- -->
















    <div class="basic-N51" data-bid="FelqAJ2SO7">
    

		<div id="l_order_header" style = "height: 50px !important; display:flex; align-items:center; border-top: 1px solid lightgray; border-bottom: 1px solid lightgray; box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.06), 0 2px 12px 0 rgba(0, 0, 0, 0.03); z-index: 10; padding:3%;">
						<h1 class="c_order_header">주문결제</h1>
						<ul class="step" style = "padding: 1%; display:flex; position:absolute; right: 3%; border-radius: 25px; height: 4%; width: 20%; border: 1px solid #eee;">
							<!-- D : 활성페이지 active 클래스 추가 -->
							<li class="active" style = "line-height:125%;float: left; word-spacing: 20px;"><i class="number">01 장바구니</i></li>
							<li class="second" style = " color:#333;  line-height:125%; float: left; word-spacing: 20px;"><i class="number">02 주문서</i></li>
							<li style = "line-height:125%; float: left; word-spacing: 20px;"><i class="number">03 주문완료</i></li>
						</ul>
						
		</div>
		
		
		
		
		<div id  ="selectdiv" style = "width: 60vw; margin-left: 5vw; height: 6vh; display: flex; align-items: center; 	
 	
 	border-bottom : 1px solid #888;
 	margin-top: 2%;
 	font-size: 17px;
 	color: #333;">
 			<div style = "display: flex; align-items: center; height: 100%; width: 20%;"><h2>배송정보</h2></div>
		</div>
			
		
			
		<div style = " border-bottom: 1px solid #888; width: 60vw; margin-left: 5vw;">
				<div style = "border-bottom: 1px solid #ccc; margin-top: 2.5vh;">
					<div style = " height: 25vw; width: 100%;">
						<div style = "display:flex; align-items: center;height: 15%;  ">
								<h2>주문자 정보</h2>						
						</div>
						<div style = " display:flex; align-items: center;height: 5%; color: #777; ">
							소셜 로그인 회원의 회원정보는 최초 주문자 정보(이름, 휴대폰 번호, 이메일)로 업데이트되며, 본인인증 또는 회원정보 변경을 통해 수정 가능합니다.		
						</div>
						<div style = "display:flex; align-items: center;height: 25%;">
							<input type = "text" placeholder = "주문자명" style = "width: 50%; height: 55%; border: 1px solid #aaa; text-align:center;" class = "ordererinfo">
						</div>
						<div style = " display:flex; align-items: center;height: 25%;">
							<div style = "width: 15%; height: 100%; display: flex; align-items: center;">
								<select style = " border: 1px solid #aaa; width: 100%; height: 55%; text-align:center;" class = "ordererinfo">
									<option value = "010">010</option>
									<option value = "011">011</option>
									<option value = "016">016</option>
									<option value = "017">017</option>
									<option value = "018">018</option>
									<option value = "019">019</option>
								</select>
							</div>
							<div style = " display:flex; align-items: center; height: 100%; width: 40%; justify-content: center;">
								<input type = "text" placeholder = "휴대폰 앞자리" style = "width: 70%; height: 55%; border: 1px solid #aaa; text-align:center;" class = "ordererinfo">
							</div>
							<div style = " display:flex; align-items: center; height: 100%; width: 40%;">
								<input type = "text" placeholder = "휴대폰 뒷자리" style = "width: 70%; height: 55%; border: 1px solid #aaa; text-align:center;" class = "ordererinfo">
							</div>
							<div style = " display:flex; align-items: center; height: 100%; width: 20%;" class = "check_wrap">
								<input type = "checkbox"  style = "border: 1px solid #aaa;" class = "check_btn" id = "checksms">
								<label for = "checksms"><span>SMS 수신동의</span></label>
							</div>
						</div>
						<div style = " display:flex; align-items: center;height: 25%;">
							<div style = " display:flex; align-items: center; height: 100%; width: 30%;">
								<input type = "text" placeholder = "이메일아이디" style = "width: 95%; height: 55%; border: 1px solid #aaa; text-align:center; " id = "emailforward">
							</div>
							<div style = "display:flex; align-items: center; font-size: 30px; padding-right:5px;">
								<span>@</span>
							</div>
							<div style = " display:flex; align-items: center; height: 100%; width: 30%; justify-content: center;">
								<input type = "text" placeholder = "이메일서비스도메인" style = "width: 95%; height: 55%; border: 1px solid #aaa; text-align:center;" id = "emaildomain" oninput = "fullfill()">
							</div>
							<div style = " display:flex; align-items: center; height: 100%; width: 20%; justify-content: center;">
								<select style = " border: 1px solid #aaa; width: 100%; height: 55%; text-align:center;" id = "emaildomainselect" onchange="selectEmailChange(this.value)">
									<option value = "naver.com">naver.com</option>
									<option value = "hanmail.net">hanmail.net</option>
									<option value = "nate.com">nate.com</option>
									<option value = "yahoo.co.kr">yahoo.co.kr</option>
									<option value = "gmail.com">gmail.com</option>
									<option value = "daum.net">daum.net</option>
									<option value = "">직접 입력</option>
								</select>
							</div>
						</div>
					</div>
				</div>	
					
					
					
				<div style = "border-bottom: 1px solid #ccc; margin-top: 2.5vh;">
					<div style = " height: 40vw; width: 100%;">
						<div style = "display:flex; align-items: center;height: 9.375%;  ">
								<h2>배송 정보</h2>	&nbsp;&nbsp;&nbsp;
								<input type = "checkbox"  style = "border: 1px solid #aaa;" class = "check_btn" id = "checkmemberequal" onchange = "checkequalordered(this)"><label for = "checkmemberequal"><span>주문자 정보와 동일</span></label>					
						</div>
						<div style = "display:flex; align-items: center;height: 15.625%;">
							<input type = "text" placeholder = "받는 사람" style = "width: 50%; height: 55%; border: 1px solid #aaa; text-align:center;" class= "deliveryinfo">
						</div>
						<div style = " display:flex; align-items: center;height: 15.625%;">
							<div style = "width: 10%; height: 100%; display: flex; align-items: center;">
									<div style = " cursor: pointer; border: 1px solid red; width: 100%; display: flex; height: 55%; align-items: center; justify-content:center; color: red;" onclick = "sample6_execDaumPostcode()">주소찾기</div>
									
							</div>
							<div style = " display:flex; align-items: center; height: 100%; width: 20%; justify-content: center; ">
								<input type = "text" placeholder = "우편번호" style = "width: 90%; height: 55%; border: 1px solid #aaa; text-align:center;" id ="sample6_postcode" class= "deliveryinfo" >
							</div>
							
							
							<div style = " display:flex; align-items: center; height: 100%; width: 20%; justify-content: center; ">
								<div style = " cursor: pointer; border: 1px solid #888; width: 52.5%; display: flex; height: 30%; align-items: center; justify-content:center; color: #555;" onclick= "popadd('on')">배송지 조회</div>
							</div>
							
							
						</div>
						<div style = " display:flex; align-items: center;height: 15.625%;">
							<div style = " display:flex; align-items: center; height: 100%; width: 50%;">
								<input type = "text" placeholder = "기본 주소" style = "width: 100%; height: 55%; border: 1px solid #aaa; text-align:center;" id = "sample6_address" class= "deliveryinfo">
							</div>
						</div>
						<div style = " display:flex; align-items: center;height: 15.625%;">
							<div style = " display:flex; align-items: center; height: 100%; width: 50%;">
								<input type = "text" placeholder = "상세 주소 및 상세 건물명" style = "width: 100%; height: 55%; border: 1px solid #aaa; text-align:center;" id = "sample6_detailAddress" class= "deliveryinfo">
							</div>
						</div>
						<div style = " display:flex; align-items: center;height: 15.625%;">
							<div style = "width: 15%; height: 100%; display: flex; align-items: center;">
								<select style = " border: 1px solid #aaa; width: 100%; height: 55%; text-align:center;" class= "deliveryinfo">
									<option value = "010">010</option>
									<option value = "011">011</option>
									<option value = "016">016</option>
									<option value = "017">017</option>
									<option value = "018">018</option>
									<option value = "019">019</option>
								</select>
							</div>
							<div style = " display:flex; align-items: center; height: 100%; width: 40%; justify-content: center;">
								<input type = "text" placeholder = "휴대폰 앞자리" style = "width: 70%; height: 55%; border: 1px solid #aaa; text-align:center;" class= "deliveryinfo">
							</div>
							<div style = " display:flex; align-items: center; height: 100%; width: 40%;">
								<input type = "text" placeholder = "휴대폰 뒷자리" style = "width: 70%; height: 55%; border: 1px solid #aaa; text-align:center;" class= "deliveryinfo">
							</div>
							<div style = " display:flex; align-items: center; height: 100%; width: 20%;">
							</div>
						</div>
						<div style = " display:flex; align-items: center;height: 9.375%;">
							<div style = " display:flex; align-items: center; height: 100%; width: 40%;">
								<select style = " border: 1px solid #aaa; width: 100%; height: 55%; text-align:center;" onchange = "selectmessage(this)">
									<option value = "010">배송시 요청사항 선택하기</option>
									<option value = "직접 수령하겠습니다">직접 수령하겠습니다</option>
									<option value = "문 앞에 놓아주세요">문 앞에 놓아주세요</option>
									<option value = "경비실에 맡겨주세요">경비실에 맡겨주세요</option>
									<option value = "배송 전 연락주세요">배송 전 연락주세요</option>
									<option value = "파손 위험이 있는 상품이니 조심히 다뤄주세요">파손 위험이 있는 상품이니 조심히 다뤄주세요</option>
									<option>직접입력</option>
								</select>
							</div>
							<div style = "display:flex; align-items: center; height: 100%; width: 50%;">
								<div style = "display:flex; align-items:center; justify-content:center; width: 100%; height: 100%;">
									<input type = "text" style = " border: 1px solid #aaa; width: 90%; height: 55%; text-align:center;"  maxlength="50" placeholder= "수령 방법을 입력해주세요(최대 50자)" id = "messagetext">
								</div>
							</div>
							<div style = "display:flex; align-items: center; height: 100%; width: 10%;">
								<p style = "font-weight: bold;" id = "messagetextlength"></p>
							</div>
						</div>
					</div>
				</div>	
				
				
				<div style = "border-bottom: 1px solid #ccc; margin-top: 5vh;">
					<div style = "height: 100%; width: 100%;">
						<div style = "display:flex; align-items: center;height: 9.375%;  ">
								<h2>주문상품</h2>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<p style = "color: #888;">상품수량 및 옵션변경은 상품상세 또는 장바구니에서 가능합니다.</p>
						</div>
						
						<c:forEach items = "${wlist}" var = "w">
							<div style = "width: 100%; height: 30vh; display:flex; align-items: center;">
								<img src = "sunwoo/images/img_basic_N42_3.png" style = "width: 20%; height: 80%; border-top: 1px solid #aaa; border-bottom: 1px solid #aaa;">
								<div style = "display:flex; align-items:center; justify-content: center; width:40%; border-top: 1px solid #aaa; border-bottom: 1px solid #aaa; border-right: 1px solid #aaa;   height: 80%;">
									<p>${w.proName}</p>
								</div>
								<div style = "height: 80%; width: 10%; display:flex; align-items:center; justify-content:center;border-top: 1px solid #aaa; border-bottom: 1px solid #aaa; border-right:1px solid #aaa;">
								     <p>${w.wisAmount}</p>
								</div>
								<div style = "height: 80%; width: 20%; display:flex; align-items:center; justify-content:center; border-top: 1px solid #aaa; border-bottom: 1px solid #aaa; border-right:1px solid #aaa;">
								     <p style = "font-weight: bold; font-size: 20px;" class = "proprices">${w.wisAmount*w.proPrice}</p><small> 원</small>
								</div>
								<div style = "height: 80%; width: 10%; display:flex; align-items:center; justify-content:center; border-top: 1px solid #aaa; border-bottom: 1px solid #aaa;">
								     <p>무료배송</p><div style = "margin-left: 5px;border: 1px solid #888; color: #888; border-radius: 100%; width: 20px; height: 20px; display:flex; justify-content:center; align-items: center;" class = "questiondeliver">?</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>	
				
				
				
				
				
<!-- 				<div style = "border-bottom: 1px solid #ccc; margin-top: 5vh;"> -->
<!-- 					<div style = "height: 100%; width: 100%;"> -->
<!-- 						<div style = "display:flex; align-items: center;height: 9.375%;  "> -->
<!-- 								<h2>할인/포인트</h2> -->
<!-- 						</div> -->
						
<!-- 						<div style = "height:10vh; width: 100%; display:flex; align-items: center;"> -->
<!-- 								<div style = "width: 5%; display:flex; align-items:center; justify-content:center;"><img src = "sunwoo/images/discount.svg" style = "width: 50%;"></div> -->
<!-- 								<div style = "width: 7.5%; display:flex; align-items:center;"><h4>포인트 할인</h4></div> -->
<!-- 						</div> -->
<!-- 						<div style = " height: 20vh; width: 80%; margin: 0 auto; background-color: #FFFFF2;"> -->
<!-- 								<div style = "width: 100%; height: 50%; display:flex; align-items:center;"> -->
<!-- 									<div style = "width: 20%; height:100%; border-right: 1px solid #fff; border-bottom: 1px solid #fff; display:flex; align-items:center; justify-content:center;"><h3>배송비 쿠폰</h3></div> -->
<!-- 									<div style = "width: 80%; height:100%;  border-bottom: 1px solid #fff; display:flex; align-items:center; justify-content:center;">- 87,450 원</div> -->
<!-- 								</div> -->
<!-- 								<div style = "width: 100%; height: 50%; display:flex; align-items:center;"> -->
<!-- 									<div style = "width: 20%; height:100%; border-right: 1px solid #fff;  border-bottom: 1px solid #fff;  display:flex; align-items:center; justify-content:center;"><h3>장바구니 쿠폰</h3></div> -->
<!-- 									<div style = "width: 80%; height:100%; border-bottom: 1px solid #fff; display:flex; align-items:center; justify-content:center;">- 87,450 원</div> -->
<!-- 								</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div>	 -->
				
				
				
				<div style = "border-bottom: 1px solid #ccc; margin-top: 5vh; margin-bottom: 20%;">
					<div style = "height: 100%; width: 100%;">
						<div style = "display:flex; align-items: center;height: 9.375%;  ">
								<h2>결제방법</h2>
						</div>
						<div style = "border-top: 1px solid #aaa; border-bottom: 1px solid #aaa; display:flex; height: 10vh; align-items: center; margin-top: 2.5%;">
							<div style = "width: 50%; border-right: 1px solid #aaa; height: 100%; display:flex; align-items: center;">
								<input type = "radio" id="creditcard" style = "width: 40px;" name = "paymethod" class = "paymethod"><label for = "creditcard"><h4>신용카드</h4></label>
							</div>
							<div style = "width: 50%; height: 100%; display:flex; align-items: center;">
								<input type = "radio" id="pointpay" style = "width: 40px;" name = "paymethod" class = "paymethod"><label for = "pointpay"><h4>포인트</h4></label>
								<div style = "margin-right: 0px; height: 100%; display:flex; align-items:center; justify-content:center; width: 90%; color: #aaa;">(잔여 포인트 : 0p)</div>
							</div>
						</div>
								배송일은 주문일 기준 2~3일 소요됩니다
					</div>
				</div>	
					
			</div>
	</div>	
	
	   <div style = "background-color: #fafafa; position: fixed; top: 25vh; width: 25%; right: 5%; height: 70vh; z-index: 5;">
	  	<div style = " height: 85%;">
	  		<div style = "display:flex; align-items:center; height: 20%;">
	  			<h2 style ="margin-left: 10%; width:70%;">적립혜택</h2>
	  			<a style ="color:#0B83E6; cursor:pointer;"><small>마이페이지</small></a>
	  		</div>
	  		<div style = "padding-left: 10%; height: 20%; border-bottom: 1px dotted #666;">골드 +10%;</div>
	  		<div style = "display:flex; align-items:center; height: 20%;">
	  			<h2 style ="margin-left: 10%;">결제 예정금액	</h2>
	  		</div>
	  		<div style = "display:flex; align-items:center;">
	  			 <div style = "width: 60%; padding-left: 10%; font-size: 23px;">상품금액</div>
	  			 <div><h2 id = "propribill">0</h2></div>
	  			 <div><small> 원</small></div>
	  		</div>
	  		<div style = "display:flex; align-items:center; height: 10%;">
	  			 <div style = "width: 60%; padding-left: 10%; font-size: 23px;">배송비</div>
	  			 <div><h2 id = "propribill">0</h2></div>
	  			 <div><small> 원</small></div>
	  		</div>
	  		<div style = "display:flex; align-items:center; height: 20%;">
	  			 <div style = "width: 60%; padding-left: 10%; color:red; font-size: 23px;">합계</div>
	  			 <div><h1 id = "totalbill" style = "color:red;">0</h1></div>
	  			 <div><small> 원</small></div>
	  		</div>
	  	</div>
	  
	  	<div style = "position:absolute; bottom: 0%; color: #fff; width: 100%; height: 15%; display: flex; align-items:center; justify-content:center; word-break:break-all; background-color: black; cursor:pointer;" onclick = "checkall()">
	  		<h2>결제하기</h2>
	  	</div>
	  </div>
	<button onclick = "testt();"> test</button>
	
	
	<!-- 	배송비 팝업 -->
	<div style = "width: 15vw; height: 40vh; display:none;  position : absolute; top: 192%; left: 50%; z-index: 20; background-color: white; border: 1px solid #eee;" id = "qqq">
		<div style = "height: 10%; padding: 5px; font-size: 12px; font-weight: bold;">배송비 조건 안내</div>
		<div style = " padding: 5px; font-size: 14px;">같은 판매자의 상품도 출고지에 따라 배송비 무료 조건이 각각 적용될 수 있습니다.</div>
		<div style = "background-color: #eee; width: 95%; margin: 0 auto; height: 11%; padding: 5px; font-size: 15px;">무료</div>
		<div style = "height: 10%; padding: 5px; font-size: 12px; font-weight: bold;">제주/도서 산간지역 추가 배송비</div>
		<div style = " padding: 5px; font-size: 14px;">제주/도서 산간 배송지의 경우 구매자는 추가 운송비를 지불하셔야합니다.</div>
		<div style = "background-color: #eee; width: 95%; margin: 0 auto; height: 19%; padding: 3px; font-size: 15px;">
			<div>제주지역  <span style = "font-weight: bold; position:absolute; right: 10%;">4천원</span></div>
			<div>도서산간	<span style = "font-weight: bold; position:absolute; right: 10%;">4천원</span></div>
		</div>
	</div>
	
	

<!-- 	내 배송지 팝업 -->
<div class="sns_share" style = "position: fixed;
	z-index: 9999;
	padding-top:10vh;
	left: 0;
	top: 0;
	width: 100%;
	height: 100%;
	overflow: auto;
	background-color: rgba(0, 0, 0, 0.4);">
	
	<div style = "width: 500px;
	height: 500px;
	padding: 30px 30px;
	margin: 0 auto;
	border: 1px solid #777;
	background-color: #fff;">
	
 	<span style = "float: right;
	font-weight: bold;
	color: #777;
	font-size: 25px;
	cursor: pointer;" onclick = "popadd('off')">&times;</span>
	
	<div style = "display: flex; align-items:center; justify-content: center; height: 25%;">
			<span><input type = "radio" name = "addre" id = "defaultaddre" checked><label for = "defaultaddre">기본 배송지</label></span>
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<span><input type = "radio" name = "addre" id = "recentaddre"><label for = "recentaddre">최근 배송지</label></span>
	</div>
	<div style = "border: 1px solid #888; height: 75%; overflow:auto;">
			<div>
				sajdjsa				
			</div>
			<div>
				sajdjsa				
			</div>
			<div>
				sajdjsa				
			</div>
			<div>
				sajdjsa				
			</div>
			<div>
				sajdjsa				
			</div>
	</div>
	</div>
</div>	
	
	
	
	
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
<!-- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> ---- <!> -->
	
  <script src="sunwoo/js/setting.js"></script>
  <script src="sunwoo/js/plugin.js"></script>
  <script src="sunwoo/js/template.js"></script>
  <script src="sunwoo/js/common.js"></script>
  <script src="sunwoo/js/script.js"></script>
  
  
  
 <script src="sunwoo/jquery/jquery-3.7.1.min.js"></script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                
                } 

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                console.log(data.zonecode);
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>
  
  
  
<script>
	
	//이메일 자동 채우기 스크립트 
	document.getElementById('emaildomain').value = document.getElementById('emaildomainselect').value
	
	function selectEmailChange(value){
		
		document.getElementById('emaildomain').value = value;
	}
	
	function fullfill(){
		
		if(document.getElementById('emaildomain').value != document.getElementById('emaildomainselect').value){
			document.getElementById('emaildomainselect').options[6].selected = true;
		}

	}
</script>
  
  
<script>
	//주문자 정보와 동일 스크립트
	var deliveryinfo = document.getElementsByClassName('deliveryinfo');
	var ordererinfo = document.getElementsByClassName('ordererinfo');
	function checkequalordered(value){
		
		
		if(value.checked == true){
			
			deliveryinfo[0].value = ordererinfo[0].value;
			deliveryinfo[4].value = ordererinfo[1].value;
			deliveryinfo[5].value = ordererinfo[2].value;
			deliveryinfo[6].value = ordererinfo[3].value;
			
			
		}else{
			deliveryinfo[0].value = '';
			deliveryinfo[4].options[0].selected = true;
			deliveryinfo[5].value = '';
			deliveryinfo[6].value = '';
			
		}
}
	
	window.onload=()=>{
		
		for(d of deliveryinfo){
			d.addEventListener('change', ()=>{
			
				checkmemberequal.checked = false;
				
			})
		}	
			
	}

</script>  


<script>

	//배송 메세지 스크립트
	var messagetext = document.getElementById('messagetext');
	var messagetextlength = document.getElementById('messagetextlength');
	
	messagetext.style.display = "none";
	messagetextlength.style.display = "none";
	
	function selectmessage(data){
		
		if(data.options[6].selected ==true){
			
			messagetext.style.display = "block";
			messagetextlength.style.display = "block";
			
		}else{
			
			messagetext.value = "";
			messagetextlength.innerText = "";
			
			messagetext.style.display = "none";
			messagetextlength.style.display = "none";
		}
		
	}

	$(document).ready(function(){
		
		$("#messagetext").keyup(function(e) {
			var content = $(this).val();
			$("#messagetextlength").text("(" + content.length + "/ 50)"); //실시간 글자수 카운팅
			if (content.length > 50) {
				Alert("최대 50자까지 입력 가능합니다.");
				$(this).val(content.substring(0, 50));
				$('#messagetextlength').html("(200 / 최대 200자)");
			}
		});

		
	});

</script>



<script>

$(document).ready(function(){

	$('.questiondeliver').hover(function(){
	 if(document.getElementById('qqq').style.display == "none"){
		 document.getElementById('qqq').style.display = "block";
	 }else{
		
		 document.getElementById('qqq').style.display = "none";
		 
	 }
		
	});

});

</script>
  
  
  <script>
  
//   	배송지 조회 스크립트
	document.getElementsByClassName('sns_share')[0].style.display = "none";
  	
  	function popadd(condition){
  		
  		if(condition == 'on'){
  			document.getElementsByClassName('sns_share')[0].style.display = "block";
  			
  		}else{
  			document.getElementsByClassName('sns_share')[0].style.display = "none";
  		}
  		
  	}
  
  
  
  </script>


  <script>
  
	//천단위 콤마 스크립트
	for(p of document.getElementsByClassName('proprices')){
		
		p.innerText = p.innerText.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
		
	}
  
  </script>
  
  
  
  
  <script>
  	//총 상품 금액 스크립트
  	function updateproTotalPrice(){	
  		
  	var prototal=0;
  		
  		for(p of document.getElementsByClassName('proprices')){
  	  		
  			prototal = prototal + parseInt(p.innerText.replace(/,/g,""));
  	  		
  	  	}
  		
  		document.getElementById('propribill').innerText = prototal.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
  	}
  	
	updateproTotalPrice();
  
  </script>



  <script>
  
  		//비어있는 곳 체크 확인
  		
 	function checkall(){
 		
 		var count = 0;
 		var mecount = 0;
 		
 		for(var i=0; i<=3; i++){
 			
 			if(i<=3 && document.getElementsByClassName('deliveryinfo')[i].value.trim() == ''){
 				
 				alert(document.getElementsByClassName('deliveryinfo')[i].placeholder+' 입력해 주십시오.');
 				
 				break;
 				
 			}
 			count++;
 		}
 		
 		for(pm of document.getElementsByClassName('paymethod')){
 			
 			if(pm.checked == true){
 				
 				mecount++;
 				break;
 			}
 			
 		}
 			if(count == 4 && mecount == 0){
 				
 				alert('결제 수단을 선택해주세요.')
 			}
 				
 		if(count == 4 && mecount == 1 ){
 			
 			if(document.getElementsByClassName('paymethod')[0].checked == true){
 				requestpay();
 			}else{
 				alert('포인트 결제');
 			}
 		}
 	}
  
  
  
  </script>








<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
  
 
 <script>
 	function testt(){
 		
 		console.log(document.getElementById('sample6_postcode').value.trim());
 		
 	}
 </script> 
  
  
 <script>
 	
 	//결제 스크립트
 	

 
 var IMP = window.IMP; // 생략 가능
 IMP.init("imp41106724"); // 예시 : imp00000000
 
 
 function requestpay(){
	 
	 
	 
	 //물건가격 
	 const amount = parseInt(document.getElementById('propribill').innerText)
	 const ordernum = Math.floor(Math.random()*1000000000*new Date().getMilliseconds());
	 const ordererName = document.getElementsByClassName('ordererinfo')[0].value;
	 const phoneNum = document.getElementsByClassName('ordererinfo')[1].value +  '-' + 
		document.getElementsByClassName('ordererinfo')[2].value.trim() + '-' +
		document.getElementsByClassName('ordererinfo')[3].value.trim();
	 
	 const email = document.getElementById('emailforward').value.trim()+'@'+document.getElementById('emaildomain').value.trim();
	 const address = document.getElementById('sample6_address').value.trim()+' '+
		document.getElementById('sample6_detailAddress').value.trim();
	 const postcode = document.getElementById('sample6_postcode').value.trim();
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
 IMP.request_pay({
	    pg : 'html5_inicis',
	    pay_method : 'card',
	    merchant_uid: ordernum, // 상점에서 관리하는 주문 번호
	    name : '주문명:결제테스트',
	    amount : amount,
	    buyer_email : email,
	    buyer_name : ordererName,
	    buyer_tel : phoneNum,
	    buyer_addr : address,
	    buyer_postcode : postcode
	}, function(rsp) {
	    if ( rsp.success ) {
	    	//[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
	    	jQuery.ajax({
	    		url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
	    		type: 'POST',
	    		dataType: 'json',
	    		data: {
		    		imp_uid : rsp.imp_uid
		    		//기타 필요한 데이터가 있으면 추가 전달
	    		}
	    	}).done(function(data) {
	    		//[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
	    		if ( everythings_fine ) {
	    			var msg = '결제가 완료되었습니다.';
	    			msg += '\n고유ID : ' + rsp.imp_uid;
	    			msg += '\n상점 거래ID : ' + rsp.merchant_uid;
	    			msg += '\결제 금액 : ' + rsp.paid_amount;
	    			msg += '카드 승인번호 : ' + rsp.apply_num;
	    			
	    			alert(msg);
	    		} else {
	    			//[3] 아직 제대로 결제가 되지 않았습니다.
	    			//[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
	    		}
	    	});
	    } else {
	        var msg = '결제에 실패하였습니다.';
	        msg += '에러내용 : ' + rsp.error_msg;
	        
	        alert(rsp.error_msg);
	    }
	});
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