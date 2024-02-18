package kr.ac.kopo.together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.Goods;
import kr.ac.kopo.together.util.Pager;

@Repository
public class GoodsDaoImpl implements GoodsDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Goods> list(Pager pager) {
		return sql.selectList("goods.list",pager);
	}

	@Override
	public void add(Goods item) {
		sql.insert("goods.add", item);
	}

	@Override
	public Goods item(int goodsId) {
		return sql.selectOne("goods.item", goodsId);
	}

	@Override
	public void update(Goods item) {
		sql.update("goods.update", item);
	}

	@Override
	public void delete(int goodsId) {
		sql.delete("goods.delete", goodsId);
	}

	
}
