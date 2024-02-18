package kr.ac.kopo.together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.together.dao.TakeDao;
import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.Take;
import kr.ac.kopo.together.util.Pager;

@Service
public class TakeServiceImpl implements TakeService {

	@Autowired
	TakeDao dao;
	
	@Override
	public List<Take> list(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	}

	@Override
	public void add(Take item) {
		dao.add(item);

	}

	@Override
	public Take item(int serviceId) {
		return dao.item(serviceId);
	}

	@Override
	public void update(Take item) {
		dao.update(item);

	}

	@Override
	public void delete(int serviceId) {
		dao.delete(serviceId);

	}
	@Override 
	public Take takeItem(int serviceId) {
	return dao.takeItem(serviceId);
	}

	@Override
	public List<History> history(int usrId) {
		return dao.history(usrId);
	}

	@Override
	public List<Extra> extra(int usrId) {
		return dao.extra(usrId);
	}

}
