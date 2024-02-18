package kr.ac.kopo.together.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.Take;
import kr.ac.kopo.together.service.BookService;
import kr.ac.kopo.together.service.TakeService;

@Controller
@RequestMapping("/book")
public class BookController {
	final String path = "book/";
			
	@Autowired
	BookService service;
	TakeService takeservice;
	
	@GetMapping("/list")
	String list(Model model) {
	List<Book> bookList = service.list();
	
	model.addAttribute("list", bookList);
	
	return path + "list";
	}
	@GetMapping("/{serviceId}/add")
	String add(Model model,Take take, @PathVariable int serviceId) {			
	
	Take TakeDetail = service.item(serviceId);	
	model.addAttribute("item", TakeDetail);
		
		return path + "add";
	}
	@PostMapping("/{serviceId}/add")
	String add(Book book, @PathVariable int serviceId) {
		service.add(book);
		
		return "redirect:/";
	}
	@GetMapping("/{bookId}/update")
	String update(@PathVariable int bookId) {
	
		
		return path+"update";
	}
	@PostMapping("/{bookId}/update")
	String update(@PathVariable int bookId, Book book) {
		book.setBookId(bookId);
		
		service.update(book);
		
		return "redirect:/";
	}
	@GetMapping("/{bookId}/delete")
	String delete(@PathVariable int bookId) {
		service.delete(bookId);
		return "redirect:list";
	}
}
