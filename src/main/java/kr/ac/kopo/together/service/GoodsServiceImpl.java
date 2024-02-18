package kr.ac.kopo.together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.together.dao.GoodsDao;
import kr.ac.kopo.together.model.Goods;
import kr.ac.kopo.together.util.Pager;

@Service
public class GoodsServiceImpl implements GoodsService {
	
	@Autowired
	GoodsDao dao;
	
	@Override
	public List<Goods> list(Pager pager) {
		return dao.list(pager);
	}

	@Override
	public void add(Goods item) {
		dao.add(item);
	}

	@Override
	public Goods item(int goodsId) {
		
		return dao.item(goodsId);
	}

	@Override
	public void update(Goods item) {
		dao.update(item);
	}

	@Override
	public void delete(int goodsId) {
		dao.delete(goodsId);
	}

	
	

}
