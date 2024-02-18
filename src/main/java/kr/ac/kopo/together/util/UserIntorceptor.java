package kr.ac.kopo.together.util;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.ac.kopo.together.model.User;


public class UserIntorceptor extends HandlerInterceptorAdapter {


	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		 
		HttpSession session = request.getSession(); //ssession 얻고
		User user = (User) session.getAttribute("user");
		if(user != null)
			return true;
		
		response.sendRedirect("/login"); //login잘못된위치 로그인 보내버림
			return false;
	}
}
