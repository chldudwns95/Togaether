package kr.ac.kopo.together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Take;

@Repository
public class BookDaoImpl implements BookDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Book> list() {
		return sql.selectList("book.list");
	}


	@Override
	public void delete(int bookId) {
		sql.delete("book.delete", bookId);
	}


	@Override
	public void add(Book book) {
		sql.insert("book.add", book);
		
	}


	@Override
	public Take item(int serviceId) {
		return sql.selectOne("book.item", serviceId);
	}


	@Override
	public Book book(int bookId) {
		return sql.selectOne("book.book", bookId);
	}


	@Override
	public void update(Book book) {
		sql.update("book.update", book);
	}




}
