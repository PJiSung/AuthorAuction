<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



<jsp:include page="../common/header.jsp"/>

<main>
	<div style = "display:flex;">
	
	<div style = "width: 10%; background-color: #444; text-align:center; ">
		<h1>관리자 페이지</h1>
		<ul>
			<li style = "background-color: white;">하<li>
			<li>하<li>
			<li>하<li>
		
		</ul>
	
	</div>
		<div style = "height: 120vh; width: 90%; border: 1px solid red; display:flex; align-items:center; justify-content:center;">
			<div style = "border: 1px solid green; width: 70%; height: 80%;">
					<div style = "height: 10%; display: flex; align-items:center;"><h1>미술품 조회</h1></div>		
					<div style = "width: 80%; border: 1px solid black; margin: 0 auto;">
						<form>
							<table>
								<tr style = "text-align:center;">	
									<td><label style = "font-size: 30px; font-weight: bold;">검색어</label></td>
									<td><select>
										<option>전체</option>
										<option>작품명</option>
										<option>작가명</option>
										<option>재료</option>
										</select>
									</td>
									<td><input type = "text" placeholder = "검색어를 입력해주세요"></td>
								</tr>
								<tr style = "text-align:center;">	
									<td><label style = "font-size: 30px; font-weight: bold;">기간검색</label></td>
									<td><input type = "date"></td>
									<td><h2>~</h2></td>
									<td><input type = "date"></td>
								</tr>
								<tr style = "text-align:center;">	
									<td><label style = "font-size: 30px; font-weight: bold;">가격</label></td>
									<td><input type = "date"></td>
									<td><h2>~</h2></td>
									<td><input type = "date"></td>
								</tr>
								<tr style = "text-align:center;">	
									<td><label style = "font-size: 30px; font-weight: bold;">크기</label></td>
									<td><input type = "date"></td>
									<td><h2>~</h2></td>
									<td><input type = "date"></td>
								</tr>
							
							</table>	
						</form>
					</div>	
			</div>


		</div>
	</div>	
</main>






<jsp:include page="../common/footer.jsp"/>
</body>
</html>