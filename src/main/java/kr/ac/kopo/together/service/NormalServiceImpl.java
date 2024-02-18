package kr.ac.kopo.together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.together.dao.NormalDao;
import kr.ac.kopo.together.model.Normal;
import kr.ac.kopo.together.util.Pager;

@Service
public class NormalServiceImpl implements NormalService {
	
	@Autowired
	NormalDao dao;
	
	@Override
	public List<Normal> list(Pager pager) {
		return dao.list(pager);
	}

	@Override
	public void add(Normal item) {
		dao.add(item);
	}

	@Override
	public Normal item(int boardId) {
		return dao.item(boardId);
	}

	@Override
	public void update(Normal item) {
		dao.update(item);
	}

	@Override
	public void delete(int boardId) {
		dao.delete(boardId);
	}



	
	
}
