package kr.ac.kopo.together.util;

import java.util.Vector;

import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

public class ChatServer extends TextWebSocketHandler {

	//Vector는 성능이 arrayList보다 성능은 낮으나 여러 사람이 접속해서 사용시 오류가 적다. 그래서 종종 사용하는 경우가 있다.
	Vector<WebSocketSession> list;

	//list를 사용하기 위해 초기화 해주는 코드
	public ChatServer() {
		super(); 
		
		if(list==null)
			list = new Vector<WebSocketSession>();
	}
	
	
	//누군지 확인 후에 전화기 관련 정보를 저장해주는 코드
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		super.afterConnectionEstablished(session);
	
		System.out.println("연결완료: " + session.getRemoteAddress());  //걸려온 전화의 주소를 확인하기 위해
		
		list.add(session);
	}

	//각각의 세션으로 메시지를 보내주는 코드
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		super.handleTextMessage(session, message);
		
		String user = (String) session.getAttributes().get("peer");
		
		System.out.println("수신 : " + message.getPayload() + ", " + user);
		
		
		for(WebSocketSession peer : list) { //peer:네트워크에서는 client보다는 이 단어를 더 많이 사용함. 
			String msg = "(" + user + ")" + message.getPayload();
		
			peer.sendMessage(new TextMessage(msg) );  // getPayLoad : 원래 보내려던 돌멩이, 즉 메시지가 전달되는 동안 전달하기 위해 부가적으로 붙는 것들을 제외한 것. 이 코드줄의 메시지는 위의 TextMassage message에서 왔음.
		
			System.out.println("송신: " + msg);
		}
	}

	//전화가 끊긴 후에 코드
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		super.afterConnectionClosed(session, status);
		
		System.out.println("종료: " + session.getRemoteAddress());
				
		list.remove(session); //list의 remove메소드로 저장해 두었던 주소 없앰
	}

}
