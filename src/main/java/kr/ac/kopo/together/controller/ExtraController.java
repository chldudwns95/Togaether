package kr.ac.kopo.together.controller;

import java.util.List;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.User;
import kr.ac.kopo.together.service.ExtraService;

@Controller
@RequestMapping("/extra")
public class ExtraController {
	final String path ="extra/";
	
	@Autowired
	ExtraService service;
	
	@GetMapping("/list")
	String list(Model model) {
	List<Extra> extraList = service.list(); 	
	model.addAttribute("list", extraList);
	
	return path + "list";
	}
	
	@GetMapping("/{usrId}/add")
	String add(@PathVariable int usrId) {
		return path +"add";		
	}
	
	@PostMapping("/{usrId}/add")
	String add(@PathVariable int usrId, Model model, Extra extra) {
		service.add(extra);		
		
		return "redirect:/user/{usrId}/mypage";
	}
	@GetMapping("/{usrId}/{extraId}/delete")
	String delete(@PathVariable int extraId, @PathVariable int usrId) {
		service.delete(extraId);				 
		
		return "redirect:/user/{usrId}/mypage";
	}

}
	
	
