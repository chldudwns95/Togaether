package kr.ac.kopo.together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.together.dao.HistoryDao;
import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.History;

@Service
public class HistoryServiceImpl implements HistoryService {
	
	@Autowired
	HistoryDao dao;
	
	@Override
	public List<History> list() {
		return dao.list();
	}

	@Override
	public void add(History history) {
		dao.add(history);
	}

	@Override
	public void delete(int historyId) {
		dao.delete(historyId);
	}

	@Override
	public Book bookInfo(int bookId) {
		return dao.bookInfo(bookId);
	}

}
