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
		//웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
		ws = new WebSocket("ws://" + location.host + "/chating/" + $("#roomNumber").val() + "/isAdmin/" + isAdmin);
		wsEvt();
	}
	function wsEvt() {
		ws.onopen = function(data) {
			
		}
		ws.onclose = function(data){
			document.getElementById("roomNumber").value = parseInt(document.getElementById("roomNumber").value)+1;
			wsOpen();
		}
		ws.onmessage = function(data) {
			//메시지를 받으면 동작
			var msg = data.data;
			if (msg != null && msg.trim() != '') {
				var d = JSON.parse(msg);
				console.log(isAdmin);
				if (d.type == "getId") {
					var si = d.sessionId != null ? d.sessionId : "";
					if (si != '') {
						$("#sessionId").val(si);
					}
				} else if (d.type == "message") {
					if (d.sessionId == $("#sessionId").val()) {
						$("#chating").append(
								"<p class='me'>나 :" + d.msg + "</p>");
					} else {
						$("#chating").append(
								"<p class='others'>" + d.userName + " :"
										+ d.msg + "</p>");
					}
				} else if (d.type == "notification" && isAdmin == "Y"){
					alert(d.message);
				} else if (d.type == "sessionCount" && isAdmin == "N"){ //채팅방에 고객만 있을때
					if(d.sessionCount == 0){
						alert("상담사를 배정중입니다. 잠시만 기다려주세요.")
					}else{
						alert("상담사 배정완료");
					}
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
		var option = {
			type : "message",
			roomNumber : $("#roomNumber").val(),
			sessionId : $("#sessionId").val(),
			userName : $("#userName").val(),
			msg : $("#chatting").val()
		}
			ws.send(JSON.stringify(option));
			$('#chatting').val("");
	}
	
	const openChat = () =>{
		$("#container").toggle();
		document.getElementById("openChatting").style.display="none";
		wsOpen();
	}
	
	const closeChat = () =>{
		$(".container").toggle();
		document.getElementById("openChatting").style.display="block";
		document.getElementById("roomNumber").value = 1;
		if (ws) {
			ws.onclose = null;
	        ws.close();
	    }
	}
</script>
<body>
<input type="button" value="채팅" onclick="openChat()" id="openChatting">
	<div id="container" class="container">
		<input type="text" name="userName" id="userName" value="${loginUser.memId}">
		<input type="text" id="sessionId" value="">
		<input type="text" id="roomNumber" value="${roomNumber}">

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