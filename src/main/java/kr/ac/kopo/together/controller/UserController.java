package kr.ac.kopo.together.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.User;
import kr.ac.kopo.together.service.ExtraService;
import kr.ac.kopo.together.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	final String path = "user/";
	final String uploadPath = "c://upload/user/";

	@Autowired
	UserService service;
	@Autowired
	ExtraService extraService;
	
	@GetMapping("/list")
	String list(Model model) {
		List<User> list = service.list();

		model.addAttribute("list", list);

		return path + "list";
	}

	@GetMapping("/signup")
	String signup() {
		return path + "signup";
	}

	@PostMapping("/signup")
	public String signup(User user, HttpServletRequest request, Model model) {

		if (!service.checkID(user.getUsrEmail())) { // 가능하면 true, 반대일경우 사용자에게 메시지를 준
			model.addAttribute("message", "이미 가입된 id입니다");
			model.addAttribute("user", user);

			return path + "signup"; // 서버에서 막
		}
		if (!service.checkNick(user.getUsrNickname())) {
			model.addAttribute("message", "이미 사용중인 닉네임입니다");
			model.addAttribute("user", user);

			return path + "signup";
		}

		service.signup(user);
		service.mailSendWithUserKey(user.getUsrEmail(), request);
		return path + "complete";
	}

	@GetMapping("/agree")
	String agree() {
		return path + "agree";
	}

	@GetMapping("/complete")
	String complete() {
		return path + "complete";
	}

	// e-mail 인증 컨트롤러
	@GetMapping("/key_alter")
	public String key_alterConfirm(@RequestParam("usrEmail") String usrEmail, @RequestParam("usrKey") String key) {

		service.alter_userKey_service(usrEmail, key);

		return path + "success";
	}

	@ResponseBody // 값을 그대로 클라이언트로 보냄
	@GetMapping("/checkID")
	String checkID(String id) {
		if (service.checkID(id))
			return "OK";

		return "FAIL";
	}

	@ResponseBody
	@GetMapping("/checkNick")
	String checkNick(String id) {
		if (service.checkNick(id))
			return "OK";

		return "FAIL";
	}

	@GetMapping("/findInfo")
	String findInfo() {
		return path + "findInfo";
	}

	@ResponseBody
	@PostMapping("/emailSearch")
	public String emailSearch(@RequestParam("inputName") String usrName, @RequestParam("inputPhone") String usrTell) {
		String result = service.emailSearch(usrName, usrTell);

		return result;
	}

	@ResponseBody
	@PostMapping("/pwSearch")
	public int pwSearch(User userInfo, HttpServletRequest request) {
		int result = service.mailSenderWithPassWord(userInfo, request);

		return result;
	}

	/* mypage */
	@GetMapping("/{usrId}/mypage")
	String mypage(@PathVariable int usrId, Model model, User user, Extra extra) {
		User userList = service.item(usrId);
		List<History> historyList = service.history(userList.getUsrId());
		List<History> historyAvg = service.historyAvg(userList.getUsrId());
		List<Extra> extraList = service.extra(userList.getUsrId());
		List<Book> serviceBook = service.serviceBook(userList.getUsrId());
		List<Book> book = service.book(userList.getUsrId());

		model.addAttribute("item", userList);
		model.addAttribute("history", historyList);	
		model.addAttribute("historyAvg", historyAvg);
		model.addAttribute("extra", extraList);
		model.addAttribute("serviceBook", serviceBook);
		model.addAttribute("book", book);
		
		return path + "mypage";
	}
		
	@GetMapping("/checkpw")
	String checkpw(int usrId) {
		return path + "checkpw";
	}
	//비밀번호 확인후 마이페이지로 
	@PostMapping("/checkpw")
	String checkpw(int usrId,Model model, @RequestParam String usrEmail,
			@RequestParam String usrPassword) {
		
		//System.out.println(usrPassword);
		
		boolean result = service.checkPw(usrEmail, usrPassword);
		if (result) {
		 
			return "redirect:/user/myedit";
			
		} else {
			model.addAttribute("msg", "비밀번호를 확인해 주세요");
			return path + "checkpw";

		}
	}

	 //내정보수정	 
	 @GetMapping("/myedit") 
	 String myedit( Model model) { 
		 return path + "myedit"; 
	  } 

	@PostMapping("/myedit")
	String myedit(Model model, User user, HttpSession session) {						
		MultipartFile file = user.getUploadFile();
		
		try {
			if (!file.isEmpty()) {
				String filename = file.getOriginalFilename();

				file.transferTo(new File(uploadPath + filename));

				if (user.getUsrCover() != null) {
					File cover = new File(uploadPath + user.getUsrCover());
					cover.delete();
				}
				user.setUsrCover(filename);				
			}
			User loginUser = (User)session.getAttribute("user");  //세션의 USER를 가져온다 (USER)SESSION
			int usrId = loginUser.getUsrId();		//session의loginuser의 usrId를가지고와라				
			user.setUsrId(usrId);					//set은 수정하기위해 setting, get은 얻어와					
			service.update(user);
			session.invalidate();			
			model.addAttribute("upmsg", "회원님의 정보가 수정되었습니다. 다시 로그인 해주세요.");
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
				
		return "redirect:/login";
	}
	
}
