package kr.ac.kopo.together.dao;

import java.util.List;

import kr.ac.kopo.together.model.Cmt;

public interface CmtDao {

	List<Cmt> list(int boardId);

	void add(Cmt item);

	void update(Cmt item);

	Cmt item(int cmtId);

	void delete(int cmtId);

}
