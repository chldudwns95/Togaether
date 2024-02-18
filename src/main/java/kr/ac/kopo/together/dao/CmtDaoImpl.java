package kr.ac.kopo.together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.Cmt;

@Repository
public class CmtDaoImpl implements CmtDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public List<Cmt> list(int boardId) {
		return sql.selectList("cmt.list", boardId);
	}

	@Override
	public void add(Cmt item) {
		sql.insert("cmt.add", item);
	}

	@Override
	public void update(Cmt item) {
		sql.update("cmt.update",item);
	}

	

	@Override
	public Cmt item(int cmtId) {
		return sql.selectOne("cmt.item", cmtId);
	}

	@Override
	public void delete(int cmtId) {
		sql.delete("cmt.delete",cmtId);
		
	}

}
