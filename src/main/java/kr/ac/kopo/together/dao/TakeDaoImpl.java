package kr.ac.kopo.together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.Take;
import kr.ac.kopo.together.util.Pager;

@Repository
public class TakeDaoImpl implements TakeDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<Take> list(Pager pager) {
		return sql.selectList("take.list", pager);
	}

	@Override
	public void add(Take item) {
		sql.insert("take.add", item);
	}

	@Override
	public Take item(int serviceId) {
		return sql.selectOne("take.item", serviceId);
	}

	@Override
	public void update(Take item) {
		sql.update("take.update", item);
	}

	@Override
	public void delete(int serviceId) {
		sql.delete("take.delete", serviceId);
	}
	@Override
	public int total(Pager pager) {
		return sql.selectOne("take.total", pager);
	}
	@Override
	public Take takeItem(int serviceId) {
		return sql.selectOne("take.takeItem", serviceId);
	}

	@Override
	public List<History> history(int usrId) {
		return sql.selectList("take.history", usrId);
	}

	@Override
	public List<Extra> extra(int usrId) {
		return sql.selectList("take.extra", usrId);
	}
}
