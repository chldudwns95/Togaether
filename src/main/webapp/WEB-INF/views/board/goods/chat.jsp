<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>chat</title>
<link href="/css/chat.css" rel="stylesheet" type="text/css" />
<script>

	let url = "ws://" + window.location.hostname + ":" + window.location.port + "/chatserver?jsessionid=${jsessionid}";
	console.log(url);
	
	let connect = false;
	let socket = new WebSocket(url); //연결됬는지 안 됬는지에 상태에 대해서 저장. websocket객체가 그 일을 해줌.  브라우저에 그 객채가 있어야 함.
	
	// 연결되면 연결완료를 보여주고 안 되었으면 종료를 보여줘라 라는 코드
	socket.onopen = () => {  //parameter가 없으니까 그냥 비워 둘 것
		connect = true;
		console.log("연결");
	};
	socket.onclose = () => {
		connect = false;
		console.log("종료");
	};

	//연결해 놓고 기다리고 있으면 메시지가 수신되었을 때의 코드
	socket.onmessage = msg => {
		let chat = document.getElementById("chat"); // id가 chat인 놈을 바꿔주자. 

		chat.innerHTML += "<li>" + msg.data + "</li>";  //innnerHTML
	};

	//button을 클릭하면 동작하는 함수
	const send = () => {
		if(connect) {
			let msg = document.getElementById("msg");

			socket.send(msg.value);

			msg.value = ""; //입력하고 처리가 다 되었는데 남아있으면 다음 메시지 입력시 지우고 다시 입력해야 하는 수고를 줄이기 위해서 이렇게 처리가 끝난 메시지를 정리해줌
		}

	};
	
	

</script>
</head>
<body>

	<div id="chat_wrap">
		<div>
			<ul id="chat"></ul>
		</div>
		<div>
			<div>
				<label>메시지 :</label>
				<input id="msg" type="text">
				<button onclick="send()">보내기</button>
			</div>
		</div>
	</div>

</body>
</html>