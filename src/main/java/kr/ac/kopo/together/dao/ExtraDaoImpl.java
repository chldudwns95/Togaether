package kr.ac.kopo.together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.Extra;

@Repository
public class ExtraDaoImpl implements ExtraDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Extra> list() {
		return sql.selectList("extra.list");
	}

	@Override
	public void add(Extra extra) {
		sql.insert("extra.add",extra);
	}

	@Override
	public void delete(int extraId) {
		sql.delete("extra.delete", extraId);
	}
	

}
