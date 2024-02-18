package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.Extra;

public interface ExtraDao {

	List<Extra> list();

	void add(Extra extra);

	void delete(int extraId);
		
}
