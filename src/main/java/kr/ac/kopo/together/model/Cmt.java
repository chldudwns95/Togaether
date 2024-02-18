package kr.ac.kopo.together.model;

public class Cmt {
	
	int cmtId;
	int boardId;	
	String cmtContent;
	
	String cmtNickname;
	
	String usrNickname;
	

	
	
	public String getUsrNickname() {
		return usrNickname;
	}
	public void setUsrNickname(String usrNickname) {
		this.usrNickname = usrNickname;
	}
	public String getCmtNickname() {
		return cmtNickname;
	}
	public void setCmtNickname(String cmtNickname) {
		this.cmtNickname = cmtNickname;
	}
	public int getCmtId() {
		return cmtId;
	}
	public void setCmtId(int cmtId) {
		this.cmtId = cmtId;
	}
	public int getBoardId() {
		return boardId;
	}
	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}
	public String getCmtContent() {
		return cmtContent;
	}
	public void setCmtContent(String cmtContent) {
		this.cmtContent = cmtContent;
	}
}