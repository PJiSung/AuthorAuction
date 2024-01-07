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

.chatingHeader{
	display:flex;
	justify-content: space-between;
	align-items:center;
	background-color: #bac7e0;
	color:black;
	width: 100%;
	height: 50px;
	line-height: 50px;
	border-bottom: 1px solid gray;
	font-size: 20px;
}
.chatingHeader .center{
	text-align: center; 
	font-weight: bold;
	flex-grow: 1;
}
.chatingHeader .right{
	margin-left: auto; 
}

.exit {
	text-align: center;
	font-weight: bold;
}
.modal {
	display: none;
	position: fixed;
	z-index: 1 !important;
	left: 0;
	top: -12%;
	width: 100%;
	height: 100%;
	overflow: auto;
}

.modal-content {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	background-color: #fefefe;
	padding: 20px;
	border: 1px solid #888;
	width: 25%; 
	max-width: 550px; 
}
.closeBtn {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
    cursor: pointer;
}

.closeBtn:hover {
    color: black;
}

.close {
	color: #aaa;
	font-size: 16px;
	font-weight: bold;
	border: none;
	background: white;
	width:15%;
	float:right;
}

.close:hover,
.close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.del{
	color:#FF9999;
}
.del:hover, .del:focus{
	color: red;
	text-decoration: none;
	cursor: pointer;
}
/* 채팅 */
.wrap {
    padding: 20px 0;
    height: 500px;
    background-color: #bacee0;
    overflow-y: auto;
}

.wrap .chat {
    display: flex;
    align-items: flex-start;
    padding: 0;
}

.wrap .chat .icon {
    position: relative;
    overflow: hidden;
    width: 50px;
    height: 50px;
    border-radius: 50%;
    background-color: #eee;
    margin-left: 10px;
}

.wrap .chat .icon i {
    position: absolute;
    top: 10px;
    left: 50%;
    font-size: 2.5rem;
    color: #aaa;
    transform: translateX(-50%);
}

/* 내 채팅 */
.wrap .chat .textbox {
    position: relative;
    display: inline-block;
    max-width: calc(100% - 70px);
    padding: 10px;
    margin-top: 7px;
    font-size: 13px;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transform: perspective(800px) rotateX(10deg);
}

/* 상대 채팅 */
.wrap .ch1 .textbox {
    position: relative;
    display: inline-block;
    max-width: calc(100% - 70px);
    padding: 10px;
    margin-top: 20px;
    font-size: 13px;
    border-radius: 5px;
    left: -90px;
}
.wrap .ch1 .userId{
	margin-left: 20px;
	margin-top: -5px;
}

.wrap .chat .textbox::before {
    position: absolute;
    display: block;
    top: 0;
    font-size: 1.5rem;
}

.wrap .ch1 .textbox { 
    margin-left: 20px;
    background-color: white;
}

.wrap .ch1 .textbox::before {
    left: -15px;
    content: "◀";
    color: white;
}
/* 어드민 상대방 채팅 */
.wrap .ch1Admin .textbox {
    position: relative;
    display: inline-block;
    max-width: calc(100% - 70px);
    padding: 10px;
    margin-top: 20px;
    font-size: 13px;
    border-radius: 5px;
    left: -90px;
}
.wrap .ch1Admin .userId{
	margin-left: 20px;
	margin-top: -5px;
}
.wrap .ch1Admin .textbox{ 
	margin-left: 60px;
	background-color: white;
}
.wrap .ch1Admin .textbox::before {
    left: -15px;
    content: "◀";
    color: white;
}
/*                        */
.wrap .ch2 {
    flex-direction: row-reverse;
}

.wrap .ch2 .textbox {
    margin-right: 20px;
    background-color: #ffeb33;
}

.wrap .ch2 .textbox::before {
    right: -15px; 
    content: "▶";
    color: #ffeb33;
}

/* 연속 채팅 */
.wrap .ch3 .textbox {
    position: relative;
    display: inline-block;
    max-width: calc(100% - 70px);
    padding: 10px;
    margin-top: 20px;
    font-size: 13px;
    border-radius: 5px;
}

.wrap .ch3 .textbox { 
    margin-left: 75px; 
    margin-top: 7px;
    background-color: white;
}

.wrap .ch4 {
    flex-direction: row-reverse;
}

.wrap .ch4 .textbox {
    margin-right: 20px;
    background-color: #ffeb33;
}
/* 메시지창 */
#yourMsg{
	width:99.6%;
	height: 60px;
	margin-top: 0;
	border: 1px solid #bacee0;
}
#yourMsg textarea{
	font-size: 16px;
	border: 1px solid #bacee0;
	height: 60px;
	border-top: none;
	resize: none;
	width: 400px;
	border-right: none;
}
#yourMsg textarea:focus{
	outline: none;
}
.textarea-container {
    position: relative;
    display: inline-block;
    float:left;
}
.sendBtn{
	float:right;
	width: 76px;
	margin-top: 13px;
}
#sendBtn {
    padding: 15px;
    padding-top: 8px;
    padding-bottom: 8px;
    background-color: #4CAF50;
    color: white;
    border: none;
    border-radius: 3px;
    cursor: pointer;
}
#sendBtn:hover {
    background-color: #45a049;
}
</style>
</head>

<script type="text/javascript">
let ws;
let isAdmin = '${loginUser.memIsAdmin}';
let sId;
window.onload = () =>{
	setInterval(waiting, 1000);
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
			if (d.type == "getId") {
				var si = d.sessionId != null ? d.sessionId : "";
				if (si != '') {
					$("#sessionId").val(si);
				}
			} else if (d.type == "message") {
				let mainDiv = document.getElementById("chating");
				let chatDiv = document.createElement("div");
				let textDiv = document.createElement("div");
				textDiv.classList.add("textbox");
				
				if (d.sessionId == $("#sessionId").val()) { // 나
					if(sId != d.sessionId){
						chatDiv.classList.add("chat", "ch2");
					}else{
						chatDiv.classList.add("chat", "ch4");
					}
				} else { //상대방
					
					if(sId != d.sessionId){
						if(isAdmin == 'Y'){
							chatDiv.classList.add("chat", "ch1Admin");
						}else{
							chatDiv.classList.add("chat", "ch1");
						}
						let iconDiv = document.createElement("div");
						iconDiv.classList.add("icon");
						
						let iTag = document.createElement("i");
						iTag.classList.add("fa-solid", "fa-user");
						iconDiv.append(iTag);		
						
						let idDiv = document.createElement("div");
						idDiv.classList.add("userId");
						idDiv.innerHTML = d.userName;
						
						chatDiv.append(iconDiv);
						chatDiv.append(idDiv);
					}else{
						if(isAdmin == 'Y'){
							chatDiv.classList.add("chat", "ch3");
						}else{
							chatDiv.classList.add("chat", "ch3");
						}
					}
				}
					textDiv.innerHTML = d.msg;	
					chatDiv.append(textDiv);
					mainDiv.append(chatDiv);
					sId = d.sessionId; 
					scrollToBottom();
				
			} else if (d.type == "notification" && isAdmin == "Y"){
				document.getElementById("sendBtn").disabled = false;
				document.getElementById("chating").innerText = "";
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
	if(document.getElementById("sendBtn").disabled == false){
		document.addEventListener("keypress", function(e) {
			if (e.keyCode == 13) { //enter press
				send();
			}
		});
	}
}

const send = () =>{
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
		$('#chatting').focus();
		
		scrollToBottom();
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

const waiting = () =>{
	let waiting = document.getElementById("waiting");
	$.ajax({
 		url: 'getWaiting',
 		success: (data) =>{
			if(data >= 0){
				waiting.innerText = data;
			}else{
				waiting.innerText = 0;
			}
 		},
 		error: data => console.log(data)
 	});	
}

const showModal = () =>{
	let modal = document.getElementById('myModal');
	modal.style.display = 'block';
}

const closeModal = () =>{
	let modal = document.getElementById('myModal');
	modal.style.display = 'none';
}

const scrollToBottom = () =>{
    let chatContainer = document.getElementById('chating');
    chatContainer.scrollTop = chatContainer.scrollHeight;
}

</script>
<body>
<input type="button" value="채팅" onclick="openChat()" id="openChatting"><span id="waiting"></span>
	<div id="container" class="container">
		<input type="hidden" name="userName" id="userName" value="${loginUser.memId}">
		<input type="hidden" id="sessionId" value="">
		<input type="hidden" id="roomNumber" value="${roomNumber}">
		
		<div class="chatingHeader">
			<span class="center">&nbsp;&nbsp;&nbsp;&nbsp;AuthorAuction&nbsp;상담문의</span><span class="right closeBtn" onclick="showModal()">X&nbsp;</span>
		</div>
		<div class="wrap" id="chating">
    	</div>
		
		<div id="yourMsg">
			 <div class="textarea-container">
		        <textarea rows="5" wrap="soft" id="chatting"></textarea>
		    </div>
	        <div class="sendBtn">
	        	<button onclick="send()" id="sendBtn">전송</button>
	        </div>
		</div>
	</div>
	
	  <div id="myModal" class="modal">
		  <div class="modal-content">
		    <h3>채팅방에서 나가시겠습니까?</h3><br>
		    <p>나가기를 하면 대화내용이 모두 삭제됩니다.</p><br>
		    <input type="button" class="close del" value="확인" onclick="closeModal();closeChat()">
		    <input type="button" class="close can" value="취소" onclick="closeModal()">
		  </div>
		</div>
</body>
</html>