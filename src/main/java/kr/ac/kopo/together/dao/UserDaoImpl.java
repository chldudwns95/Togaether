package kr.ac.kopo.together.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.User;

@Repository
public class UserDaoImpl implements UserDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<User> list() {
		return sql.selectList("user.list");
	}

	@Override
	public void signup(User item) {
		sql.insert("user.add", item);

	}

	@Override
	public int checkID(String id) {
		return sql.selectOne("user.checkid", id);
	}

	@Override
	public int checkNick(String id) {
		return sql.selectOne("user.checknick", id);
	}

	@Override
	public User login(User item) {
		return sql.selectOne("user.login", item);
	}


	@Override
	public int alter_userKey(User emailInfo) {
		sql.update("user.alter_userKey", emailInfo);
		return 0;
	}

	@Override
	public void keyupdate(User emailInfo) {
		 sql.update("user.GetKey", emailInfo); 
		
	}

	@Override
	public void GetKey(User emailInfo) {
		 sql.update("user.GetKey", emailInfo); 
		
	}

	@Override
	public String emailSearch(User emailSearch) {
		return sql.selectOne("user.emailSearch", emailSearch);
	}

	
	@Override
	public int searchPw(User pwInfo) {
		return 	sql.update("user.pwSearch", pwInfo);
	}	
	

	@Override
	public void update(User user) {
		sql.update("user.update", user);
	}

	@Override
	public User myedit(int usrId) {
		return sql.selectOne("user.myedit", usrId);
	}


	@Override
	public User item(int usrId) {
		return sql.selectOne("user.item", usrId);
	}

	@Override
	public List<History> history(int usrId) {
		return sql.selectList("user.history", usrId);
	}

	@Override
	public boolean checkPw(String usrEmail, String usrPassword) {
		boolean result = false;
		Map<String, String> map = new HashMap<String, String>();
		map.put("usrEmail", usrEmail);
		map.put("usrPassword", usrPassword);
		int count = sql.selectOne("user.checkPw", map);
		if(count == 1) result=true;
		
		return result;
	}

	@Override
	public List<Extra> extra(int usrId) {
		return sql.selectList("user.extra", usrId);
	}

	@Override
	public List<Book> book(int usrId) {
		return sql.selectList("user.book", usrId);
	}

	@Override
	public List<Book> serviceBook(int usrId) {
		return sql.selectList("user.serviceBook", usrId);
		
	}

	@Override
	public List<History> historyAvg(int usrId) {
		return sql.selectList("user.historyAvg", usrId);
	}


}
