package kr.ac.kopo.together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.together.dao.BookDao;
import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Take;

@Service
public class BookServiceImpl implements BookService {

	@Autowired
	BookDao dao;
	
	@Override
	public List<Book> list() {
		return dao.list();
	}

	@Override
	public void add(Book book) {
		dao.add(book);
		
	}

	@Override
	public void delete(int bookId) {
		dao.delete(bookId);
		
	}


	@Override
	public Take item(int serviceId) {
		
		return dao.item(serviceId);
	}



	@Override
	public Book book(int bookId) {
		return dao.book(bookId);
	}

	@Override
	public void update(Book book) {
		dao.update(book);
		
	}

	


}
