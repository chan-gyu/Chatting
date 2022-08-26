<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chatting</title>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"/></script>
<script src="${path }/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet" href="${path }/resources/css/index.css"/>

</head>
<body>
	<div class="main_wrap">
		<h1 id="main_h1">Simple Chatting</h1>
		<div id="msgArea"></div>
		<input type="text" id="msg"/>
		<input type="button" id="sendBtn" value="입력">
	</div>

</body>
<script type="text/javascript">

	let user = '<${user }> '+' : ';
	$("#sendBtn").click(function(){
		sendMessage();
		$('#msg').val('')
	});
	
	let sock = new SockJS("http://localhost:8080/chat/echo/");
	sock.onmessage = onMessage;
	sock.onclose = onClose;
	
	// 메세지 전송
	function sendMessage() {
		
		sock.send(user+$("#msg").val());
	}
	// 서버로부터 메세지를 받았을 때
	function onMessage(msg) {
		var data = msg.data;
		$("#msgArea").append(data + "<br/>");
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt){
		$("#msgArea").append("연결 끊김");
	}
	
</script>
</html>