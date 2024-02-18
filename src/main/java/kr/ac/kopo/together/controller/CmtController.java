package kr.ac.kopo.together.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.ac.kopo.together.model.Cmt;
import kr.ac.kopo.together.service.CmtService;

@RestController
@RequestMapping({"/detail","/straydetail"})
public class CmtController {
	
	@Autowired
	CmtService service;
		
	
	@GetMapping
	List <Cmt> list(int boardid){		
		return service.list(boardid);				
	}	
	
	@PostMapping
	Cmt add(@RequestBody Cmt item) {
		service.add(item);
		
		return item;
	}
	
	@PatchMapping
	Cmt update(@RequestBody Cmt item) {
		service.update(item);
		
		return item;
	}
	
	@DeleteMapping
	Cmt delete(@RequestBody Cmt item) {
		service.delete(item.getCmtId());
		
		return item;
		
	}
	

}
