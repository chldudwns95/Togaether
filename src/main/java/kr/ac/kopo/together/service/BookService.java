package kr.ac.kopo.together.service;

import java.util.List;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Take;

public interface BookService {

	List<Book> list();

	void add(Book book);

	void delete(int bookId);

	Take item(int serviceId);


	Book book(int bookId);

	void update(Book book);

	
}