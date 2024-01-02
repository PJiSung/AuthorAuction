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
				<div style = " width: 10%; height: 100%; display:flex; align-items: center;justify-content: center; border-left: 1px solid #ccc; margin-left: 1%; padding-left: 1%;" ><label for = "selectedcheck" style = "cursor:pointer;" onclick = "deletewishlist();">선택삭제</label></div>
		</div>
			
			
			
		<div style = "border-top: 1px solid #bbb; border-bottom: 1px solid #ccc; width: 60vw; margin-top: 5vh; margin-left: 5vw;">
		
		
				<c:if test = "${empty wlist}">
					<div style = "display:flex; align-items:center; justify-content:center; height: 50vh;"><h1>장바구니에 상품이 없습니다</h1></div>
				</c:if>
				
				<c:if test = "${!empty wlist}">
					<c:forEach items = "${wlist}" var = "w">
						<div style = "height: 30vh; line-height: 20vh; display: flex; align-items: center; ">	
							<div style ="width:5%; height: 100%; display:flex; align-items: center;justify-content: center;"><input type = "checkbox" class = "productcheck"><input type = "hidden" value = "${w.proNo}"></div>
							<div style ="width:30%; height: 100%; display:flex; align-items: center;justify-content: center;" ><img src="/sunwoo/proimages/${w.proImage}" style = "width: 100%; height: 90%;"></div>
							<div style ="width:30%; height: 100%; flex-direction: column; justify-content: center;" >
								<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center; word-break:break-all" >${w.proName}</div>
								<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center; word-break:break-all" >${w.proWriter}</div>
								<div style ="width:100%; height: 33.333%; display: flex; align-items: center;justify-content: center; word-break:break-all" ><a href = "artsDetail.ar?proNo=${w.proNo}">상세보기>></a></div>
							</div>
					    	<div class="contents-amount" style = "display: flex !important; justify-content: center !important; align-items: center !important; width: 15% !important; height: 100% !important;">
					    				<select name = "wisamount" style = "width: 80%; border: 1px solid black; height: 15%;" onchange="selectAmountChange(${w.proNo},this.value,${w.proPrice},this)">
					    					<c:forEach var="i" begin = "1" end = "${w.proAmount}">
					    						<c:choose>
					    							 <c:when test="${i eq w.wisAmount}">
					    							 	 <option value="${i}" style="text-align:center;" selected>${i}개</option>
					    							 </c:when>
					    							 <c:otherwise>
					    								<option value = "${i}" style = "text-align:center;">${i}개</option>
					    							</c:otherwise>
					    						</c:choose>
					    					</c:forEach>
					    				</select>
					    				
		             	    </div>
					   		<div class = "productprice"  style ="width:15%; height: 100%; display:flex; align-items: center;justify-content: center; word-break:break-all"><span class = "totalpp" style = "font-weight:bold; font-size: 17px;">${w.proPrice * w.wisAmount}</span><small>&nbsp;원</small></div>
					   		<div style ="width:5%; height: 100%; display:flex; align-items: center;justify-content: center;"><img src = "sunwoo/icons/ico_close_black.svg" style = "cursor:pointer;" onclick = "location.href = 'deletewis.ar?memId=${loginid}&proNo=${w.proNo}'"></div>
				  		</div>
				  </c:forEach>
				</c:if>
				
			  
		</div>
		
	</div>	
	
	  <div style = "background-color: #fafafa; position: fixed; top: 25vh; width: 25%; right: 5%; height: 60vh; z-index: 5;">
	  	<div style = " height: 85%;">
	  		<div style = "display:flex; align-items:center; height: 20%;">
	  			<h2 style ="margin-left: 10%; width:70%;">적립혜택</h2>
	  			<a style ="color:#0B83E6; cursor:pointer;"><small>마이페이지</small></a>
	  		</div>
	  		
	  		
	  		<div style = "display:flex; align-items:center; height: 7.5%;">
	  		 <div style = "width: 60%; padding-left: 10%; font-size: 23px;">포인트 적립</div>
	  		  <div><h2 id = "pointBonus">0</h2></div>
	  		 <div><small> p</small></div>
	  		 </div>
	  		 
	  		<div style = "padding-left: 10%; height: 10%; border-bottom: 1px dotted #666;"></div>
	  		<div style = "display:flex; align-items:center; height: 20%;">
	  			<h2 style ="margin-left: 10%;">결제 예정금액	</h2>
	  		</div>
	  		<div style = "display:flex; align-items:center;">
	  			 <div style = "width: 60%; padding-left: 10%;">상품금액</div>
	  			 <div><h3 id = "propribill">0</h3></div>
	  			 <div><small> 원</small></div>
	  		</div>
	  		<div style = "display:flex; align-items:center; height: 40%;">
	  			 <div style = "width: 60%; padding-left: 10%; color:red;">합계</div>
	  			 <div><h1 id = "totalbill" style = "color:red;">0</h1></div>
	  			 <div><small> 원</small></div>
	  		</div>
	  	</div>
	  
	  	<div style = "position:absolute; bottom: 0%; color: #fff; background-color:black; width: 100%; height: 15%; display: flex; align-items:center; justify-content:center; word-break:break-all; cursor:pointer;" onclick = "paymentar()" id = "gotopaybtn">
	  		<h2>총 ${wlistsize}개 주문하기</h2>
	  	</div>
	  </div>
	
  <script src="sunwoo/js/setting.js"></script>
  <script src="sunwoo/js/plugin.js"></script>
  <script src="sunwoo/js/template.js"></script>
  <script src="sunwoo/js/common.js"></script>
  <script src="sunwoo/js/script.js"></script>
  
  
  
  <script src = "sunwoo/jquery/jquery-3.7.1.min.js"></script>
  
  
  
  <script>
  
  	//전체선택 스크립트
 		 var checkboxes = document.getElementsByClassName('productcheck');
 		 var allcheck	=	document.getElementById('allcheck');
 		 
 		allcheck.addEventListener('change',function(){
 			
 		for(checkbox of checkboxes){
 			
 			if(this.checked == true){
 			checkbox.checked = true;
 			}else{
 				checkbox.checked = false;
 			}
 		}
 		 
 	 });
 	 
 	 for(checkbox of checkboxes){
 		 
 		 checkbox.addEventListener('change', function(){
 			
 			 if(this.checked == false){
 				 allcheck.checked = false;
 				 
 			 }else{
 				 var count = 0;
 				 for(checkbox of checkboxes){
 					 if(checkbox.checked == true){
 						 count++;
 					 }
 				 }
 				 
 				 if(count == checkboxes.length){
 					 
 					allcheck.checked = true;
 				 }
 				 
 				 
 			 }
 			 
 		 });
 		 
 	 }
  
  </script>
  
  
  <script>
  			//삭제 스크립트
  			
  	function deletewishlist(){
  				
  		 var products = document.getElementsByClassName('productcheck');		
  	     var checkedpronos = [];
  			for(product of products){
  				
  				if(product.checked == true){
  					checkedpronos.push(product.nextElementSibling.value);
  				}
  			}
  			if(checkedpronos.length >0){
  				location.href = "deletewishlist.ar?memId="+'${loginid}'+"&pronos="+checkedpronos;
  				}
  		}
  
  
  
  
  </script>
  
  
  
  
  
  
  <script>
  			//제품 수량 변경 스크립트
  function selectAmountChange(proNo,wisAmount,proPrice,data){
	  	
		  $.ajax({
			    url: 'updatewishamount.ar',
			    type: 'GET',
			    data: {
			    	memId: '${loginid}',
			    	proNo: proNo,
			    	wisAmount: wisAmount
			    },
			    success: function onData (msg) {
			        data.parentElement.nextElementSibling.children[0].innerText = (wisAmount*proPrice).toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");;
			    },
			    error: function onError (error) {
			        console.error(error);
			    }
			});
	  
  }
  </script>
  
  
  <script>
  	//천단위 콤마 스크립트
  	for(p of document.getElementsByClassName('productprice')){
  		
  		p.children[0].innerText = p.children[0].innerText.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
  		
  	}
	
  
  </script>  
  
  
  <script>
  
  	// 상품 합친 금액 스크립트
  function updateproTotalPrice(){	
  	var prototal=0;
  		
  		for(p of document.getElementsByClassName('productprice')){
  	  		
  			prototal = prototal + parseInt(p.children[0].innerText.replace(/,/g,""));
  	  		
  	  	}
  		
  		document.getElementById('propribill').innerText = prototal.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
  	}
  	
	
  setInterval(updateproTotalPrice, 100);
  
  
  //총 결제 금액 스크립트 
  
  
  function updateallTotalPrice(){	
  	var alltotal=0;
  		
  		for(p of document.getElementsByClassName('productprice')){
  	  		
  			alltotal = alltotal + parseInt(p.children[0].innerText.replace(/,/g,""));
  	  		
  	  	}
  		
  		document.getElementById('totalbill').innerText = alltotal.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");
  	}
  	
	
  setInterval(updateallTotalPrice, 100);
  
  </script>
  
  
  <script>
  
  
  
  	//결제창으로 넘어가는 스크립트
  	function paymentar(){
  		
  		
  		if(${wlistsize} != 0){
  			location.href = 'payment.ar?';
  		}else{
  			alert('최소 1개 이상의 물건을 선택해주십시오.');
  		}
  	}
  	
  	
  	//장바구니 물건 없을 떄 결제 버튼 회색으로 만들기 스크립트
  	if(${wlistsize} == 0){
  	   var btn = document.getElementById('gotopaybtn');
  	 btn.style.backgroundColor = "gray";
  	 btn.style.cursor = 'not-allowed';
  	
  	}
  	
  
  </script>
  
  <script>
  
  	//포인트 업데이트 스크립트
  function updatePointPrice(){
	 var totalbill = parseInt(document.getElementById('totalbill').innerText.replace(/,/g,""));
	 var originalPoint = ${loginUser.graBonus}/100 * totalbill;
	 var newPoint = parseInt(Math.round((originalPoint/10)) * 10);
  	document.getElementById('pointBonus').innerText = newPoint.toString().replace(/\B(?<!\.\d*)(?=(\d{3})+(?!\d))/g, ",");;
  	
  }
  	
		
		setInterval(updatePointPrice, 100);
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