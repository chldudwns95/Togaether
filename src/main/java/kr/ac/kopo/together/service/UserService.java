package kr.ac.kopo.together.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.User;

public interface UserService {

	List<User> list();

	boolean checkID(String id);

	boolean checkNick(String id);

	User login(User item);

	void signup(User item);

	void mailSendWithUserKey(String usrEmail, HttpServletRequest request); 
	
	int alter_userKey_service(String usrEmail, String key);

	String emailSearch(String usrName, String usrTell);

	int mailSenderWithPassWord(User userInfo, HttpServletRequest request);
	
	void update(User user);

	User myedit(int usrId);
		
	User item(int usrId);

	List<History> history(int usrId);

	boolean checkPw(String usrEmail, String usrPassword);

	List<Extra> extra(int usrId);

	List<Book> book(int usrId);

	List<Book> serviceBook(int usrId);

	List<History> historyAvg(int usrId);

}
