package kr.ac.kopo.together.util;

import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

import kr.ac.kopo.together.model.User;

public class ChatInterceptor extends HttpSessionHandshakeInterceptor {
	//3way handshake: 안녕? 안녕! 손내밀기의 단계, 반응이 와야 연결할 수 있음 / 콘트롤러에 들어가기 전에 인터셉터해서 사용할 수 있는 권한이 있는지 확인해준다. 로그인 기능의 인터셉터와 동일함.
	//이 녀석은 리퀘스트를 가로채서 챗서버로 보내줌.
	//request.getSession이 없어서 무언가를 전달하기가 쉽지 않다.
	
	@Override
	public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
			Map<String, Object> attributes) throws Exception {
		
		String peer = request.getRemoteAddress().toString(); // InterSocketAddress: 
		
		if(request instanceof ServletServerHttpRequest) {
			ServletServerHttpRequest req = (ServletServerHttpRequest) request;
			HttpSession session = req.getServletRequest().getSession(); //spring과 상관없는 객체이기 때문에 세션도 서블릿 컨텍스트도 얻을 수 있음
			
			User user = (User) session.getAttribute("user");
			
			System.out.println(user.getUsrName());
			
			attributes.put("peer", user.getUsrName());
		}
		else
			attributes.put("peer", peer); // attributes에 put으로 peer를 저장해 주겠다. 
		
		return true;
		
		//return super.beforeHandshake(request, response, wsHandler, attributes);
	}
}
