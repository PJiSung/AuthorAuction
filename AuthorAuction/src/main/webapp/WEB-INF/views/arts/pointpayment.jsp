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
						<h1 class="c_order_header">포인트 충전</h1>
						
		</div>
		
		
		
		
		<div id  ="selectdiv" style = "width: 60vw;  height: 6vh; display: flex; align-items: center; justify-content:center; 	
 	font-size: 17px;
 	color: #333; border-bottom: 1px solid #aaa; margin: 0 auto; margin-top: 2%;" >
 	
 			<h2>Author 포인트</h2>

	</div>		
			
		<div style = " border-bottom: 1px solid #888; width: 60vw; margin-left: 5vw; height: 1500px; display:flex; margin: 0 auto; justify-content:center;">
				<div style = " margin-top: 2.5vh;">
					<div style = " height: 25vw; width: 100%;">
						<div style = "display:flex; align-items: center;  height: 15%; ">
								<h2>AUTHOR 포인트란?</h2>						
						</div>
						<div style = " display:flex; align-items: center;  height: 10%;  ">
							AUTHOR 포인트는 현금처럼 쓸 수 있는 결제 수단이에요.
							다양한 방식으로 충전하거나, 적립 받을 수 있어요.		
						</div>
						
						
						<div style = "display:flex; align-items: center;  height: 20%; ">
								<h2>충전 포인트</h2>						
						</div>
						<div style = " display:flex; align-items: center;  margin-left: 10%;">
						
						<ul>
							<li style="list-style: disc !important; ">아래 방식으로 직접 충전한 포인트에요.</li>
							<li style="list-style: disc !important; ">1원과 똑같이 1포인트가 충전돼요.</li>
							<li style="list-style: disc !important; ">결제 시 적립 포인트를 받아요.</li>
						</ul>	
						</div>
						
						
						
						<div style = "display:flex; align-items: center; color: #aaa; height: 15%;">
								충전 수단 종류						
						</div>
						<div style = "display:flex; align-items: center; margin-left: 7.5%;">
								<img src = "/sunwoo/images/paymethod.png">				
						</div>
						
						
							<div style = "display:flex; align-items: center;  height: 20%; ">
								<h2>적립 포인트</h2>						
						</div>
						
						<div style = " display:flex; align-items: center;  margin-left: 10%;">
						
						<ul>
							<li style="list-style: disc !important; ">카드/포인트결제를 통해 적립 받은 포인트에요 </li>
							<li style="list-style: disc !important; ">입찰,결제 시 사용할 수 있어요</li>
						</ul>	
						</div>
						
						
						
						
						<div style = "display:flex; align-items: center;  height: 20%; ">
								<h2>충전</h2>						
						</div>
						<div style = "display:flex; align-items: center; margin-left: 5%;">
								<img src = "/sunwoo/images/chargep.png">				
						</div>
						<div style = "display:flex; align-items: center; color: #aaa; height: 15%;">
								단, 최소 충전 금액은 1,000P에요(충전 단위 :10p)
						</div>
						
						
						<div style = "display:flex; align-items: center;  height: 20%; ">
								<h2>충전방법</h2>						
						</div>
							<div style = "border-top: 1px solid #aaa; border-bottom: 1px solid #aaa; display:flex; height: 10vh; align-items: center; margin-top: 2.5%;">
							<div style = "width: 50%; border-right: 1px solid #aaa; height: 100%; display:flex; align-items: center;">
								<input type = "radio" id="creditcard" style = "width: 40px;" name = "paymethod" class = "paymethod"><label for = "creditcard"><h4>신용카드</h4></label>
							</div>
							
							
						</div>
						<div style = "display:flex; align-items: center;  height: 25%; ">
								<h2>충전금액</h2>						
						</div>
						<div style = "width: 80%;  display:flex; align-items: center;">
								<div>
									<input type = "radio"><label>10,000<small>p</small></label>
								</div>
								<div style = "margin-left: 10%;">
									<input type = "radio"><label>10,000<small>p</small></label>
								</div>
								<div style = "margin-left: 10%;">
									<input type = "radio"><label>10,000<small>p</small></label>
								</div>
								<div style = "margin-left: 10%;">
									<input type = "radio"><label>10,000<small>p</small></label>
								</div>
								<div style = "margin-left: 10%;">
									<input type = "radio"><label>10,000<small>p</small></label>
								</div>
								<div style = "margin-left: 10%;">
									<input type = "radio"><label>10,000<small>p</small></label>
								</div>
								
							</div>
							<div style = "display:flex; margin-top: 5%;">
								<div style = "margin-right: 0px;  display:flex; align-items:center; justify-content:center;  color: #555"><h5>직접 입력</h5></div>
								<div style = "margin-right: 0px;  display:flex; align-items:center; justify-content:center;  color: #aaa; width: 40%;"><input type = "number" min="1000" max="${w.wisAmount*w.proPrice}" step = "1000" id = "pointinput"></div>
							</div> 
						<div style = "display:flex; align-items: center; color: #aaa; height: 15%;">
								결제 전, 금액을 꼭 확인해주세요.
						</div>
						 
					</div>		
					
			</div>
			
	</div>	
				 <div class="contents-btn-group" style = "width: 50%; margin: 0 auto; margin-top: 2%;">
             				 <button class="btnset btnset-line" type="button" onclick = "addtowishlist()">목록으로 돌아가기</button>
            				 <button class="btnset" type="button" onclick = "directPay()">충전하기</button>
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
  	//포인트 천단위로 입력시키기 스크립트
  	
  	$("#pointinput").keyup(function(e) {
  			var n = $(this).val(); 
  			 n = Math.floor(n/10) * 10;
  			 if(n>=10){
  		     $(this).val(n);
  			 }
		});
  
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
  	
  	
  //총 금액 스크립트
		
	document.getElementById('totalbill').innerText = 
	document.getElementById('propribill').innerText;
	
  
 	//포인트 금액 및 총 금액 스크립트
 	const totalbill = document.getElementById('totalbill').innerText;
		$("#pointinput").keyup(function(e) {
			var content = $(this).val();
			$("#pointprice").text('-'+content.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",")); //실시간 포인트 
			$("#totalbill").text( (parseInt(totalbill.replace(/,/g,""))+parseInt(document.getElementById('pointprice').innerText.replace(/,/g,""))).toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ","));
			if (content > ${loginUser.memBalance}) {
				alert('잔여 포인트보다 더 사용할 수 없습니다');
				$(this).val(0);
				$("#pointprice").text(0);
				$("#totalbill").text(totalbill);
			}
		});
 	
 	
		
		//포인트에 문자 못들어가게 막는 스크립트
		$("#pointinput").keyup(function(e) {
			var content = $(this).val();
			var regex = /[^0-9]/g;	
			$(this).val(content.replace(regex, ""));
		});
		
	
	
  
  </script>



  <script>
  
  		//비어있는 곳 체크 확인
  		
 	function checkall(){
 		
 		var count = 0;
 		
 		for(var i=0; i<=3; i++){
 			
 			if(i<=3 && document.getElementsByClassName('deliveryinfo')[i].value.trim() == ''){
 				
 				alert(document.getElementsByClassName('deliveryinfo')[i].placeholder+' 입력해 주십시오.');
 				
 				break;
 				
 			}
 			count++;
 		}
 		
 			
 		
 		if(count == 4 && !document.getElementsByClassName('paymethod')[0].checked){
 				
 				alert('결제 수단을 선택해주세요.')
 			}
 				
 		if(count == 4 && document.getElementsByClassName('paymethod')[0].checked ){
 			
 				requestpay();
 			}
 		}
  
  
  
  </script>


<script>

	function test(){
		const receiver = document.getElementsByClassName('deliveryinfo')[0].value.trim();
		
		const receiverPhone = 
		document.getElementsByClassName('deliveryinfo')[4].value +  '-' + 
		document.getElementsByClassName('deliveryinfo')[5].value.trim() + '-' +
		document.getElementsByClassName('deliveryinfo')[6].value.trim();
		
		alert(receiverPhone);
	}




</script>

<script>
		
</script>


<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script src="https://cdn.iamport.kr/v1/iamport.js"></script>
  
 <script>
 	
 	//결제 스크립트

 IMP.init("imp41106724"); // 예시 : imp00000000
 
 
 function requestpay(){
	 
	 //물건가격 
	 const amount = parseInt(document.getElementById('totalbill').innerText.replace(/,/g,""))
	 const ordernum = Math.floor(Math.random()*1000000000*new Date().getMilliseconds());
	 const ordererName = document.getElementsByClassName('ordererinfo')[0].value;
	 const phoneNum = document.getElementsByClassName('ordererinfo')[1].value +  '-' + 
		document.getElementsByClassName('ordererinfo')[2].value.trim() + '-' +
		document.getElementsByClassName('ordererinfo')[3].value.trim();
	 
	 const email = document.getElementById('emailforward').value.trim()+'@'+document.getElementById('emaildomain').value.trim();
	 const address = document.getElementById('sample6_address').value.trim()+' '+
		document.getElementById('sample6_detailAddress').value.trim();
	 const postcode = document.getElementById('sample6_postcode').value.trim();
	 
	 var deliveryMsg = "";

		if(document.getElementById('messel').options[0].selected){
			
			deliveryMsg = 'none';
		}
		else if(document.getElementById('messel').options[6].selected){
			
			deliveryMsg = document.getElementById('messagetext').value.trim();
		}
		else{
			deliveryMsg = document.getElementById('messel').value;
		}
		
	 var ordPoPrice = document.getElementById('pointprice').innerText == '0' ? 0 : parseInt(document.getElementById('pointprice').innerText.replace(/,/g,"").split('-')[1]);
	 
	 
	 const receiver = document.getElementsByClassName('deliveryinfo')[0].value.trim();
		
		const receiverPhone = 
		document.getElementsByClassName('deliveryinfo')[4].value +  '-' + 
		document.getElementsByClassName('deliveryinfo')[5].value.trim() + '-' +
		document.getElementsByClassName('deliveryinfo')[6].value.trim();
		
		var pronofororder = [];
		var wisAmountfororder= [];
		
		for(pro of document.getElementsByClassName('pronofororder')){
			
			pronofororder.push(parseInt(pro.value));
			
		}
		
		for(wisa of document.getElementsByClassName('wisAmountfororder')){
			
			wisAmountfororder.push(parseInt(wisa.innerText));
		}
		
		var pointBonus = parseInt(document.getElementById('pointBonus').innerText.replace(/,/g,""));
		
		
		
	 
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
		
	    if (rsp.success) {
	    	
	    	location.href = "payresult.ar?imp_uid="+rsp.imp_uid+"&ordNo="+rsp.merchant_uid+"&ordMessage="+deliveryMsg+"&ordPoPrice="+ordPoPrice+"&ordCaPrice="+amount+"&ordMethod=card&memId="+${loginUser.memId}
	    	+"&postcode="+postcode+"&address="+address+"&receiver="+receiver+"&receiverPhone="+receiverPhone+"&pronofororder="+pronofororder+"&wisAmountfororder="+wisAmountfororder+"&pointBonus="+pointBonus;
	    	
// 	        결제 성공 시: 결제 승인 또는 가상계좌 발급에 성공한 경우
// 	        jQuery로 HTTP 요청
// 	        jQuery.ajax({
// 	          url: "insertorder.ar", 
// 	          method: "POST",
// 	          headers: { "Content-Type": "application/json" },
// 	          data: {
// 	            imp_uid: rsp.imp_uid,            // 결제 고유번호
// 	            merchant_uid: rsp.merchant_uid   // 주문번호
// 	          }
// 	        }).done(function (data) {
// 	          // 가맹점 서버 결제 API 성공시 로직
// 	        })
	      } else {
	        alert("결제에 실패하였습니다. " + rsp.error_msg);
	      }

	});
 }
</script>

<script>

	//적립 포인트 채우기 스크립트
var totalprice = parseInt(document.getElementById('totalbill').innerText.replace(/,/g,""));
var originalPoint = ${loginUser.graBonus}/100 * totalprice;
var newPoint = parseInt(Math.round((originalPoint/10)) * 10);
	document.getElementById('pointBonus').innerText = newPoint.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");;

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