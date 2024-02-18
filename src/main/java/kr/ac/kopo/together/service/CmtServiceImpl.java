package kr.ac.kopo.together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.together.dao.CmtDao;
import kr.ac.kopo.together.model.Cmt;

@Service
public class CmtServiceImpl implements CmtService {
	
	@Autowired 
	CmtDao dao;
	
	@Override
	public List<Cmt> list(int boardId) {
		return dao.list(boardId);
	}

	@Override
	public void add(Cmt item) {
		dao.add(item);
	}

	@Override
	public void update(Cmt item) {
		dao.update(item);
	}

	

	@Override
	public Cmt item(int cmtId) {
		return dao.item(cmtId);
	}

	@Override
	public void delete(int cmtId) {
		dao.delete(cmtId);
		
	}

	
}
