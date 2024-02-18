package kr.ac.kopo.together.service;

import java.util.List;

import kr.ac.kopo.together.model.Extra;
import kr.ac.kopo.together.model.History;
import kr.ac.kopo.together.model.Take;
import kr.ac.kopo.together.util.Pager;

public interface TakeService {

	List<Take> list(Pager pager);

	void add(Take item);

	Take item(int serviceId);

	void update(Take item);

	void delete(int serviceId);

	Take takeItem(int serviceId);

	List<History> history(int usrId);

	List<Extra> extra(int usrId);



}
