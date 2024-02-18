package kr.ac.kopo.together.service;

import java.util.List;

import kr.ac.kopo.together.model.Cmt;

public interface CmtService {

	List<Cmt> list(int boardId);

	void add(Cmt item);

	void update(Cmt item);

	

	Cmt item(int cmtId);

	void delete(int cmtId);


}
