package kr.ac.kopo.together.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.KakaoProfile;
import kr.ac.kopo.together.model.OAuthToken;
import kr.ac.kopo.together.model.User;
import kr.ac.kopo.together.service.HistoryService;
import kr.ac.kopo.together.service.UserService;

@Controller
@RequestMapping("/")

public class RootController {
	@Autowired
	UserService service;
	
	@Autowired
	HistoryService historyService;
		
	@RequestMapping("/")
	String index(Model model) {
		
	List<History> historyList = historyService.list();			
 	model.addAttribute("list", historyList); 
	
	return "index";
	}
	
	@RequestMapping("/guide")
	String guide() {
		return "guide";
	}
	
	@GetMapping("/login")
	String login() {
		return "login";
	}
	
	@PostMapping("/login")
	String login(User user, Model model, HttpSession session) {
		
		User loginUser = service.login(user);
		
		if(loginUser!=null) {			
			session.setAttribute("user", loginUser);
			return "redirect:/";			
		}
		
			model.addAttribute("msg", "회원정보를 다시 확인해 주세요");
			return "login";
		
	} 				
	
	@GetMapping("/logout")
	String logout(HttpSession session) {
		session.invalidate();
		
	return "redirect:/";
	}
	
	// 카카오 로그인
	@GetMapping("/auth/kakao/callback")
	// jsp에서 카카오 서버로 요청한 값을 code로 응답받음
	public String kakaoCallback(String code, HttpSession session) {

		// http 통신에 유용하게 쓸 수 있는 템플릿
		RestTemplate rt = new RestTemplate();

		// HttpHeader 오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		// HttpBody 오브젝트 생성
		// rest api키, uri 변수에 담아 사용할 것
		MultiValueMap<String, String> params = new LinkedMultiValueMap<String, String>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "d5f97184dea540a9227732bd45e5aeaf"); //발급받은 restapi key 넣으세요.
		params.add("redirect_uri", "http://localhost:8090/auth/kakao/callback");
		/*
		 * params.add("redirect_uri", "http://localhost:8090/auth/kakao/callback");
		 * //사이트에 기입해놓은 콜백 주소
		 */	
		// code는 일정하지 않음
		params.add("code", code);

		// 생성한 header, body를 하나의 오브젝트에 담음
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = new HttpEntity<MultiValueMap<String, String>>(params, headers);

		// Http 요청하기 = Post방식 - response 변수에 응답받음
		ResponseEntity<String> response = rt.exchange("https://kauth.kakao.com/oauth/token", HttpMethod.POST, kakaoTokenRequest, String.class);

		ObjectMapper objectMapper = new ObjectMapper();
		OAuthToken oauthToken = null;

		try {
			oauthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		 System.out.println("카카오 엑세스 토큰 : " + oauthToken.getAccess_token()); 

		RestTemplate rt2 = new RestTemplate();

		// HttpHeader
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer " + oauthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");

		// 생성한 header, body를 하나의 오브젝트로 
		HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest2 = new HttpEntity<>(headers2);

		// Http 요청하기 = Post방식 - response2 변수에 응답받음
		ResponseEntity<String> response2 = rt2.exchange("https://kapi.kakao.com/v2/user/me", HttpMethod.POST,
				kakaoProfileRequest2, String.class);

		ObjectMapper objectMapper2 = new ObjectMapper();
		KakaoProfile kakaoProfile = null;

		try {
			kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
			session.setAttribute("user", kakaoProfile.getKakao_account().getEmail());
		} catch (JsonMappingException e) {

			e.printStackTrace();

		} catch (JsonProcessingException e) {

			e.printStackTrace();
			
		}
		session.setAttribute("user", kakaoProfile.getKakao_account().getEmail());
		System.out.println("카카오메일 : "+kakaoProfile.getKakao_account().getEmail());

		//1. 기본키로 사용하는 이메일로 가입자 비가입자 체크 (서비스 생성)
		//3. 가입자면 로그인처리
		//3. add 할 유저 오브젝트 만들기
		//4. 소셜 가입자들은 암호변경 못하게 막아놔야함.(여러가지 방법으로 암호를 임의 설정)
		//5. 세션으로 로그인정보 유지
		
		return "redirect:/";
		//return response2.getBody();
		/*
		 * return response.getBody(); // 작업 끝나고 어디로?
		 */	
		}	
}