package kr.ac.kopo.together.service;

import java.util.List;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.History;

public interface HistoryService {

	List<History> list();

	void add(History history);

	void delete(int historyId);

	Book bookInfo(int bookId);


}
