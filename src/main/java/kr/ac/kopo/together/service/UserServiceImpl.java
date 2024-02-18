package kr.ac.kopo.together.service;


import java.util.List;
import java.util.Random;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;


import kr.ac.kopo.together.dao.UserDao;
import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.User;


@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	UserDao dao;

	@Override
	public List<User> list() {
		return dao.list();
	}

	@Override
	public void signup(User item) {
		dao.signup(item);
	}

	// 이메일 난수 만드는 메서드
	private String init() {
		Random ran = new Random();
		StringBuffer sb = new StringBuffer();
		int num = 0;

		do {
			num = ran.nextInt(75) + 48;
			if ((num >= 48 && num <= 57) || (num >= 65 && num <= 90) || (num >= 97 && num <= 122)) {
				sb.append((char) num);
			} else {
				continue;
			}

		} while (sb.length() < size);
		if (lowerCheck) {
			return sb.toString().toLowerCase();
		}
		return sb.toString();
	}
	// 난수를 이용한 키 생성
	private boolean lowerCheck;
	private int size;

	public String getKey(boolean lowerCheck, int size) {
		this.lowerCheck = lowerCheck;
		this.size = size;
		return init();
	}
	// 회원가입 발송 이메일(인증키 발송)
	public void mailSendWithUserKey(String usrEmail, HttpServletRequest request) {
 		
 		String key = getKey(false, 20); 		
 		
		/*
		 * dao = session.getMapper(UserDao.class);
		 */
 		
 		User emailInfo = new User(usrEmail, key);
		emailInfo.setUsrEmail(usrEmail);
		emailInfo.setUsrKey(key);
	
 		dao.GetKey(emailInfo);
 		System.out.println("인증 키 : " + key);
 		
 		MimeMessage mail = mailSender.createMimeMessage();
 		String htmlStr = "<h2>안녕하세요 Together 입니다</h2><br><br>" 
 				+ "<h3>" + usrEmail + "님</h3>" + "<p>인증하기 버튼을 누르시면 로그인을 하실 수 있습니다 : " 
 				+ "<a href='http://localhost:8090" + request.getContextPath() + "/user/key_alter?usrEmail="+ usrEmail +"&usrKey="+key+"'>인증하기</a></p>"
 				+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
 		try {
 			mail.setSubject("[본인인증] Together의 인증메일입 니다", "utf-8");
 			mail.setText(htmlStr, "utf-8", "html");
 			mail.addRecipient(RecipientType.TO, new InternetAddress(usrEmail));
 			mailSender.send(mail);
 		} catch (MessagingException e) {
 			e.printStackTrace();
 		}
 	}

	
	  // 인증 확인 메서드 (Y 값으로 바꿔주는 메서드)
		public int alter_userKey_service(String usrEmail, String key) {
			User emailInfo = new User(usrEmail, key);
			emailInfo.setUsrEmail(usrEmail);
			emailInfo.setUsrKey(key);
		
			dao.keyupdate(emailInfo);
			
		int resultCnt = 0;
		
		/* dao = sqlSession.getMapper(UserDao.class); */ 	
		
		
		resultCnt = dao.alter_userKey(emailInfo);
		
		return resultCnt;
	}

	@Override
	public boolean checkID(String id) {
		if (dao.checkID(id) == 0)
			return true;

		return false;
	}

	@Override
	public boolean checkNick(String id) {
		if (dao.checkNick(id) == 0)
			return true;

		return false;
	}

	@Override
	public User login(User item) {
		User user = dao.login(item);

		if ( user != null )
			return user;	
		
		return null;
	}								
					
	@Override
	public String emailSearch(String usrName, String usrTell) {
		User emailSearch = new User(usrName, usrTell);
		emailSearch.setUsrName(usrName);
		emailSearch.setUsrTell(usrTell);
		
		return dao.emailSearch(emailSearch);	
	}

	
	// 패스워드 찾기 이메일 발송
	@Override
	public int mailSenderWithPassWord(User userInfo, HttpServletRequest request) {
		String key = getKey(false, 6);
		String usrEmail = userInfo.getUsrEmail();
		String usrName = userInfo.getUsrName();
		
		User pwInfo = new User(usrEmail, usrName, key);
						
		/* userDao = sqlSession.getMapper(UserDaoInterface.class); */
		
		// 회원 이름 꺼내는 코드
		int result = dao.searchPw(pwInfo);	
		
		if(result > 0) {
			MimeMessage mail = mailSender.createMimeMessage();
			String htmlStr = "<h2>안녕하세요 '"+ usrEmail +"' 님</h2><br><br>" 
					+ "<p>비밀번호 찾기를 신청해주셔서 임시 비밀번호를 발급해드렸습니다.</p>"
					+ "<p>임시로 발급 드린 비밀번호는 <h2 style='color : blue'>'" + key +"'</h2>이며 로그인 후 마이페이지에서 비밀번호를 변경해주시면 됩니다.</p><br>"
					+ "<h3><a href='http://localhost:8090/'>"
					+ "(혹시 잘못 전달된 메일이라면 이 이메일을 무시하셔도 됩니다)";
			try {
				mail.setSubject("[MS :p] 임시 비밀번호가 발급되었습니다", "utf-8");
				mail.setText(htmlStr, "utf-8", "html");
				mail.addRecipient(RecipientType.TO, new InternetAddress(usrEmail));
				mailSender.send(mail);
		
			} catch (MessagingException e) { 
				e.printStackTrace();
				
			}
			
			return result; // 성공 - 1
			
		} else {
			
			return result; // 실패 - 0
		}
	}

	@Override
	public void update(User user) {
		dao.update(user);
	}

	@Override
	public User myedit(int usrId) {
		return dao.myedit(usrId); 
	}

	@Override
	public User item(int usrId) {
		return dao.item(usrId);
	}
	
	@Override
	public List<History> history(int usrId) {
		return dao.history(usrId);
	}

	@Override
	public boolean checkPw(String usrEmail, String usrPassword) {
		return dao.checkPw(usrEmail, usrPassword);
	}

	@Override
	public List<Extra> extra(int usrId) {
		return dao.extra(usrId);
	}

	@Override
	public List<Book> book(int usrId) {
		return dao.book(usrId);
	}

	@Override
	public List<Book> serviceBook(int usrId) {
		return dao.serviceBook(usrId);
	}

	@Override
	public List<History> historyAvg(int usrId) {
		return dao.historyAvg(usrId);
	}

	
}
