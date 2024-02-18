package kr.ac.kopo.together.model;


import org.springframework.web.multipart.MultipartFile;

public class Normal {
	int boardId;// 게시판번호
	int usrId;// 사용자번호
	String boardTitle;// 게시판제목
	int boardSort;// 게시글분류
	String boardDate;// 게시일자
	String boardContent;// 게시글내용
	String boardUpdate;// 수정일자
	int boardIng;// 진행상황
	String cover;
	
	String usrNickname;
	String usrCover;
	String usrAddr;
	MultipartFile uploadFile;
	
	
	
	public String getUsrCover() {
		return usrCover;
	}

	public void setUsrCover(String usrCover) {
		this.usrCover = usrCover;
	}

	public String getUsrAddr() {
		return usrAddr;
	}

	public void setUsrAddr(String usrAddr) {
		this.usrAddr = usrAddr;
	}

	public String getUsrNickname() {
		return usrNickname;
	}

	public void setUsrNickname(String usrNickname) {
		this.usrNickname = usrNickname;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public int getBoardId() {
		return boardId;
	}

	public void setBoardId(int boardId) {
		this.boardId = boardId;
	}

	public int getUsrId() {
		return usrId;
	}

	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public int getBoardSort() {
		return boardSort;
	}

	public void setBoardSort(int boardSort) {
		this.boardSort = boardSort;
	}	



	public String getBoardDate() {
		return boardDate;
	}

	public void setBoardDate(String boardDate) {
		this.boardDate = boardDate;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public String getBoardUpdate() {
		return boardUpdate;
	}

	public void setBoardUpdate(String boardUpdate) {
		this.boardUpdate = boardUpdate;
	}

	public int getBoardIng() {
		return boardIng;
	}

	public void setBoardIng(int boardIng) {
		this.boardIng = boardIng;
	}

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}
	
}
