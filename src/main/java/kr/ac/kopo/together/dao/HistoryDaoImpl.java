package kr.ac.kopo.together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.History;

@Repository
public class HistoryDaoImpl implements HistoryDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<History> list() {
		return sql.selectList("history.list");
	}

	@Override
	public void add(History history) {
		sql.insert("history.add", history);
	}

	@Override
	public void delete(int historyId) {
		sql.delete("history.delete", historyId);
	}

	@Override
	public Book bookInfo(int bookId) {
		return sql.selectOne("history.bookInfo", bookId);
	}

}
