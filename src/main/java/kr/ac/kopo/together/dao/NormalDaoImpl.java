package kr.ac.kopo.together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.Normal;
import kr.ac.kopo.together.util.Pager;

@Repository
public class NormalDaoImpl implements NormalDao {
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<Normal> list(Pager pager) {
		return sql.selectList("normal.list", pager);
	}

	@Override
	public void add(Normal item) {
		sql.insert("normal.add",item);
	}

	@Override
	public Normal item(int boardId) {
		return sql.selectOne("normal.item",boardId);
	}

	@Override
	public void update(Normal item) {
		sql.update("normal.update", item);
	}

	@Override
	public void delete(int boardId) {
		sql.delete("normal.delete",boardId);
	}

	

}
