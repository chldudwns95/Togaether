package kr.ac.kopo.together.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.together.model.Book;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.service.HistoryService;

@Controller
@RequestMapping("/history")
public class HistoryController {
	final String path ="history/";
	final String uploadPath = "c://upload/history/";
	
	@Autowired
	HistoryService service;
	
	@GetMapping("/list")
	String list(Model model) {		
	List<History> historyList = service.list();	
	
	model.addAttribute("list", historyList);
	
	return path + "list";
	}
	
	@GetMapping("/{bookId}/add")
	String add(@PathVariable int bookId, Book book, Model model) {
	
	Book bookDetail = service.bookInfo(book.getBookId());
	model.addAttribute("bookInfo", bookDetail);
	
	return path + "add";
	}
	
	@PostMapping ("/{bookId}/add")
	String add(@PathVariable int bookId, History history) {
		MultipartFile file = history.getUploadFile();
		try {
			if(!file.isEmpty()) {
				String filename = file.getOriginalFilename();
			file.transferTo(new File(uploadPath + filename));
			history.setHistoryCover(filename);
			}
			service.add(history);	
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	
	return "redirect:/";
	}
	
	@GetMapping("/{historyId}/delete")
	String delete(@PathVariable int historyId) {
		service.delete(historyId);
		return "redirect:../list";
	}
}
