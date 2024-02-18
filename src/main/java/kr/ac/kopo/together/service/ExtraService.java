package kr.ac.kopo.together.service;

import java.util.List;

import kr.ac.kopo.together.model.Extra;

public interface ExtraService {

	List<Extra> list();

	void add(Extra extra);

	List<Extra> extra();

	void delete(int extraId);
}
