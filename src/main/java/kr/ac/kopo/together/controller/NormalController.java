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

import kr.ac.kopo.together.model.Cmt;
import kr.ac.kopo.together.model.Normal;
import kr.ac.kopo.together.service.CmtService;
import kr.ac.kopo.together.service.NormalService;
import kr.ac.kopo.together.util.Pager;

@Controller
@RequestMapping("/board/normal")
public class NormalController {
	final String path = "/board/normal/";
	final String uploadPath = "c://upload/normal/";

	@Autowired
	NormalService service;
	@Autowired
	CmtService cmtService;
	
	/* 채팅주석
	 * @GetMapping("/{boardId}/chat") String chat(@PathVariable int boardId, Model
	 * model, HttpSession session) { model.addAttribute("jsessionid",
	 * session.getId());
	 * 
	 * return path+"chat"; }
	 */
	
	

	@GetMapping("/{boardId}/detail")
	String detail(@PathVariable int boardId, Model model ) {
		Normal item = service.item(boardId);
		model.addAttribute("item", item);

		Cmt cItem = cmtService.item(boardId);
		model.addAttribute("cItem", cItem);

				
		return path + "detail";
	}

	@GetMapping("/{boardId}/straydetail")
	String straydetail(@PathVariable int boardId, Model model) {
		Normal item = service.item(boardId);
		model.addAttribute("item", item);
		
		Cmt cItem = cmtService.item(boardId);
		model.addAttribute("cItem", cItem);

		return path + "straydetail";
	}

	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Normal> list = service.list(pager);

		model.addAttribute("list", list);

		return path + "list";

	}

	@GetMapping("/straylist")
	String strayDogList(Model model, Pager pager) {
		List<Normal> list = service.list(pager);

		model.addAttribute("list", list);

		return path + "straylist";
	}

	@GetMapping("/add")
	String add() {
		return path + "add";
	}

	@GetMapping("/strayadd")
	String strayadd() {
		return path + "strayadd";
	}

	@PostMapping("/add")
	String add(Normal item) {
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

	@GetMapping("/{boardId}/update")
	String update(@PathVariable int boardId, Model model) {
		Normal item = service.item(boardId);

		model.addAttribute("item", item);

		return path + "update";
	}

	@GetMapping("/{boardId}/strayupdate")
	String strayupdate(@PathVariable int boardId, Model model) {
		Normal item = service.item(boardId);

		model.addAttribute("item", item);

		return path + "strayupdate";
	}

	@PostMapping("/{boardId}/update")
	String update(@PathVariable int boardId, Normal item) {
		MultipartFile file =item.getUploadFile();
		
		try {
			if(!file.isEmpty()) {
				String filename = file.getOriginalFilename();
				
				file.transferTo(new File(uploadPath + filename));
				
				if(item.getCover() != null) {
					File cover  = new File(uploadPath + item.getCover());
					cover.delete();
					}
					
				item.setCover(filename);;
				}	
				
				item.setUsrId(boardId);
				
				service.update(item);
							
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
				
	return "redirect:../list";
	}

	@GetMapping("/{boardId}/delete")
	String delete(@PathVariable int boardId) {
		service.delete(boardId);

		return "redirect:../list";
	}
}
