package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.User;

public interface UserDao {

	List<User> list();

	int checkID(String id);

	int checkNick(String id);

	User login(User item);

	void signup(User item);

	void GetKey(User emailInfo);

	void keyupdate(User emailInfo);

	int alter_userKey(User emailInfo);

	String emailSearch(User emailSearch);

	int searchPw(User pwInfo);

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
