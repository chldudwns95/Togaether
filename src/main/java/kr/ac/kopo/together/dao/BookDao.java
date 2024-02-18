package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Take;

public interface BookDao {

	List<Book> list();

	void delete(int bookId);

	void add(Book book);

	Take item(int serviceId);
	

	Book book(int bookId);

	void update(Book book);

}
