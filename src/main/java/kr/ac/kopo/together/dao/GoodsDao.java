package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.Goods;
import kr.ac.kopo.together.util.Pager;

public interface GoodsDao {

	List<Goods> list(Pager pager);

	void add(Goods item);

	Goods item(int goodsId);

	void update(Goods item);

	void delete(int goodsId);

}
