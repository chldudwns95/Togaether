package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.History;

public interface HistoryDao {

	List<History> list();

	void add(History history);

	void delete(int historyId);

	Book bookInfo(int bookId);


}
