package kr.ac.kopo.together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.together.dao.ExtraDao;
import kr.ac.kopo.together.model.Extra;

@Service
public class ExtraServiceImpl implements ExtraService {

	@Autowired
	ExtraDao dao;
	
	@Override
	public List<Extra> list() {
		return dao.list();
	}

	@Override
	public void add(Extra extra) {
		dao.add(extra);

	}

	@Override
	public List<Extra> extra() {
		return dao.list();
	}

	@Override
	public void delete(int extraId) {
		dao.delete(extraId);
	}

}
