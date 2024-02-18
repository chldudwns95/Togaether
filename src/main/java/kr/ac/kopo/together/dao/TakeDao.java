package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.Take;
import kr.ac.kopo.together.util.Pager;

public interface TakeDao {

	List<Take> list(Pager pager);

	void add(Take item);

	Take item(int serviceId);

	void update(Take item);

	void delete(int serviceId);

	int total(Pager pager);

	Take takeItem(int serviceId);

	List<History> history(int usrId);

	List<Extra> extra(int usrId);

}
