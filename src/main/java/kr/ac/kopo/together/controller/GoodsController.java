package kr.ac.kopo.together.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.together.model.Goods;
import kr.ac.kopo.together.service.GoodsService;
import kr.ac.kopo.together.util.Pager;

@Controller
@RequestMapping("/board/goods")
public class GoodsController {
	final String path = "/board/goods/";
	final String uploadPath = "c://upload/goods/";
	
	@Autowired
	GoodsService service;
	
	@GetMapping("{goodsId}/chat")
	String chat(@PathVariable int goodsId, HttpSession session, Model model) {		
		model.addAttribute("jsessionid", session.getId());
	
		return path+"chat";
	}
	
	@GetMapping("/{goodsId}/detail")
	String detail(@PathVariable int goodsId, Model model) {
				
		Goods item= service.item(goodsId);
		model.addAttribute("item", item);	
				
		return path+"detail";
	}
	
	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Goods> list = service.list(pager);
		
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(Goods item) {
		MultipartFile file = item.getUploadFile();
		try {
			if(!file.isEmpty()) {
				String filename =file.getOriginalFilename();//파일이름을 filename에 저장 
				
			file.transferTo(new File(uploadPath + filename));// uploadPath 경로에 파일전송
			
			item.setCover(filename); //데이터베이스에 저장하는 커버이름(표지이름)
			}
											
			service.add(item);
			
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
				
	return "redirect:list";
		
		
	}
	
	@GetMapping("/{goodsId}/update")
	String update(@PathVariable int goodsId, Model model) {
		Goods item = service.item(goodsId);
		
		model.addAttribute("item",item);
		
		return path+"update";
	}
	
	@PostMapping("/{goodsId}/update")
	String update(@PathVariable int goodsId, Goods item) {
		MultipartFile file =item.getUploadFile();
		
		try {
			if(!file.isEmpty()) {
				String filename = file.getOriginalFilename();
				
				file.transferTo(new File(uploadPath + filename));
				
				if(item.getCover() != null) {
					File cover  = new File(uploadPath + item.getCover());
					cover.delete();
					}
					
				item.setCover(filename);
				}	
				
				item.setUsrId(goodsId);
				
				service.update(item);
							
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
				
	return "redirect:../list";
}
	
	@GetMapping("/{goodsId}/delete")
	String delete(@PathVariable int goodsId) {
		service.delete(goodsId);
		
		return "redirect:../list";
	}
	
}
