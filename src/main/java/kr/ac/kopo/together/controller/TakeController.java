package kr.ac.kopo.together.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.Take;

import kr.ac.kopo.together.service.TakeService;
import kr.ac.kopo.together.util.Pager;

@Controller
@RequestMapping("/take")
public class TakeController {
	final String path = "take/";
	final String uploadPath = "c://upload/take/"; 

	@Autowired
	TakeService service;
 
	/* 돌봄 */
	@GetMapping("/{serviceId}/detail")
	String detail(@PathVariable int serviceId, Model model, Pager pager) {
		Take takeDetail = service.item(serviceId);
		List<History> historyList = service.history(takeDetail.getUsrId());
		List<Extra> extraList = service.extra(takeDetail.getUsrId());
		
		model.addAttribute("item", takeDetail);
		model.addAttribute("history", historyList);
		model.addAttribute("extra", extraList);
		return path + "detail";
	}

	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Take> serviceList = service.list(pager);

		model.addAttribute("list", serviceList); // "list" == jsp serviceList 컨트롤러 변수이름

		return path + "list";
	}

	@GetMapping("/add")
	String add() {
		return path + "add";
	}

	@PostMapping("/add")
	String add(Take item) {
		MultipartFile file = item.getUploadFile();
		try {
			if(!file.isEmpty()) {
				String filename = file.getOriginalFilename();
			file.transferTo(new File(uploadPath + filename));
			item.setServiceCover(filename);
			}
			service.add(item);	
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		

		return "redirect:list";
	}

	@GetMapping("/{serviceId}/update")
	String update(@PathVariable int serviceId, Model model) {
		Take item = service.item(serviceId);
		model.addAttribute("item", item);
		
		return path + "update";
	}

	@PostMapping("/{serviceId}/update")
	String update(@PathVariable int serviceId, Take item) {
		MultipartFile file =item.getUploadFile();
		
		try {
			if(!file.isEmpty()) {
				String filename = file.getOriginalFilename();
				
				file.transferTo(new File(uploadPath + filename));
				
				if(item.getServiceCover() != null) {
					File cover  = new File(uploadPath + item.getServiceCover());
					cover.delete();
					}
					
				item.setServiceCover(filename);
				}	
				
				item.setUsrId(serviceId);
				
				service.update(item);
							
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:../list";
	}

	@GetMapping("/{serviceId}/delete")
	String delete(@PathVariable int serviceId) {
		service.delete(serviceId);
		return "redirect:../list";
	}

	/* 산책 */
	@GetMapping("/wklist")
	String takelist(Model model, Pager pager) {
		List<Take> list = service.list(pager);
		model.addAttribute("list", list); // String name, object value => value객체를, name이름으로 추가한다.
		return path + "wklist"; // view에서 name으로 지정한 이름을 통해서 value사용
	}

	@GetMapping("/wkadd")
	String wkadd() {
		return path + "wkadd";
	}

	@PostMapping("/wkadd")
	String wkadd(Take take) {
		MultipartFile file = take.getUploadFile();
		try {
			if(!file.isEmpty()) {
				String filename = file.getOriginalFilename();
			file.transferTo(new File(uploadPath + filename));
						
			take.setServiceCover(filename);
			}
			service.add(take);	
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
			
		return "redirect:wklist";
	}

	@GetMapping("/{serviceId}/wkupdate")
	String wkupdate(@PathVariable int serviceId, Model model) {
		Take item = service.item(serviceId);
		model.addAttribute("item", item);
		
		return path + "wkupdate";
	}

	@PostMapping("/{serviceId}/wkupdate")
	String wkupdate(@PathVariable int serviceId, Take take) {
	MultipartFile file =take.getUploadFile();
		
		try {
			if(!file.isEmpty()) {
				String filename = file.getOriginalFilename();
				
				file.transferTo(new File(uploadPath + filename));
				
				if(take.getServiceCover() != null) {
					File cover  = new File(uploadPath + take.getServiceCover());
					cover.delete();
					}
					
				take.setServiceCover(filename);
				}	
				
				take.setUsrId(serviceId);
				
				service.update(take);
							
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return "redirect:../wklist";
	}

	@GetMapping("/{serviceId}/wkdetail")
	String wkdetail(@PathVariable int serviceId, Model model) {
		Take walkDetail = service.item(serviceId);
		List<History> historyList = service.history(walkDetail.getUsrId());				
	
		
		model.addAttribute("item", walkDetail);
		model.addAttribute("history", historyList);
	
		return path + "wkdetail";
	}
	
	@GetMapping("/{serviceId}/wkdelete")
	String wkdelete(@PathVariable int serviceId) {
		service.delete(serviceId);
		return "redirect:../wklist";		
	}   
	
}