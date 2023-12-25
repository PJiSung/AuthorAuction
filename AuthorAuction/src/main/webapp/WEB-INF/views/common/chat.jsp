<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<meta charset="UTF-8">
<title>Chating</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.container {
	width: 500px;
	margin: 0 auto;
	padding: 25px;
	display: none;
}

.container h1 {
	text-align: left;
	padding: 5px 5px 5px 15px;
	color: #FFBB00;
	border-left: 3px solid #FFBB00;
	margin-bottom: 20px;
}

.chating {
	background-color: #000;
	width: 500px;
	height: 500px;
	overflow: auto;
}

.chating .me {
	color: #F6F6F6;
	text-align: right;
}

.chating .others {
	color: #FFE400;
	text-align: left;
}
.chating .exit {
	text-align: center;
	color:white;
}
input {
	width: 330px;
	height: 25px;
}
</style>
</head>

<script type="text/javascript">
	var ws;
	var isAdmin = '${loginUser.memIsAdmin}';
	window.onload = () =>{
		
	}
	function wsOpen() {
		document.getElementById("sendBtn").disabled = true;
		ws = new WebSocket("ws://" + location.host + "/chating/" + $("#roomNumber").val() + "/isAdmin/" + isAdmin);
		wsEvt();
	}
	function wsEvt() {
		ws.onopen = function(data) {
			
		}
		ws.onclose = function(data){
			
		}
		ws.onmessage = function(data) {
			var msg = data.data;
			console.log(msg);
			if (msg != null && msg.trim() != '') {
				var d = JSON.parse(msg);
				console.log(msg);
				if (d.type == "getId") {
					var si = d.sessionId != null ? d.sessionId : "";
					if (si != '') {
						$("#sessionId").val(si);
					}
				} else if (d.type == "message") {
					if (d.sessionId == $("#sessionId").val()) {
						$("#chating").append("<p class='me'>나 :" + d.msg + "</p>");
					} else {
						$("#chating").append("<p class='others'>" + d.userName + " :" + d.msg + "</p>");
					}
				} else if (d.type == "notification" && isAdmin == "Y"){
					alert(d.message);
				} else if (d.type == "sessionCount" && isAdmin == "N"){ //채팅방에 고객만 있을때
					if(d.sessionCount == 0){
						let text = "상담사를 배정중입니다. 잠시만 기다려주세요."
						$("#chating").append("<p class='exit'>"+text+"</p>");
					}else{
						document.getElementById("sendBtn").disabled = false;
						document.getElementById("chating").innerText = "";
					}
				} else if (d.type == "exit"){
					$("#chating").append("<p class='exit'>"+d.msg+"</p>");
					document.getElementById("sendBtn").disabled = true;
				} else if (d.type == "newRoom") {
					var si = d.sessionId != null ? d.sessionId : "";
					if (si != '') {
						$("#sessionId").val(si);
					}
					document.getElementById("roomNumber").value = parseInt(document.getElementById("roomNumber").value)+1;
					wsOpen();
				} else {
					console.warn("unknown type!")
				}
			}
		}

		document.addEventListener("keypress", function(e) {
			if (e.keyCode == 13) { //enter press
				send();
			}
		});
	}

	function send() {
		if(document.getElementById("chatting").value.trim() != ""){
			var option = {
				type : "message",
				roomNumber : $("#roomNumber").val(),
				sessionId : $("#sessionId").val(),
				userName : $("#userName").val(),
				msg : $("#chatting").val(),
				isAdmin : isAdmin
			}
			ws.send(JSON.stringify(option));
			$('#chatting').val("");
		}
	}
	
	const openChat = () =>{
		let login = "${loginUser}";
		if(login == ""){
			alert("로그인후에 진행해주세요");
		}else{
			$("#container").toggle();
			document.getElementById("openChatting").style.display="none";
			wsOpen();
		}
	}
	
	const closeChat = () =>{
		$(".container").toggle();
		document.getElementById("openChatting").style.display="block";
		document.getElementById("roomNumber").value = 1;
		document.getElementById("chating").innerText = "";
		if (ws) {
			ws.onclose = null;
		    ws.close();
		}
	}
</script>
<body>
<input type="button" value="채팅" onclick="openChat()" id="openChatting">
	<div id="container" class="container">
		<input type="hidden" name="userName" id="userName" value="${loginUser.memId}">
		<input type="hidden" id="sessionId" value="">
		<input type="hidden" id="roomNumber" value="${roomNumber}">

		<div id="chating" class="chating"></div>

		<div id="yourMsg">
			<table class="inputTable">
				<tr>
					<th>메시지</th>
					<th><input id="chatting" placeholder="보내실 메시지를 입력하세요."></th>
					<th><button onclick="send()" id="sendBtn">보내기</button></th>
					<th><button onclick="closeChat()">나가기</button></th>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>