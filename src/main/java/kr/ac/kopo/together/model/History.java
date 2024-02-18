package kr.ac.kopo.together.model;

import org.springframework.web.multipart.MultipartFile;

public class History {
	int historyId;
	int usrId;
	int usrPoint;
	String usrHistory;
	String historyCover;
	int historyPointTotal;
	String historyDate;
	String historyUsrId;
	
	/* join */
	String usrNickname;
	String usrCover;
	String u2Cover;
	
	String u1Nick;
	String u2Nick;
	
	MultipartFile uploadFile;

	public int getHistoryId() {
		return historyId;
	}

	public void setHistoryId(int historyId) {
		this.historyId = historyId;
	}

	public int getUsrId() {
		return usrId;
	}

	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}

	public int getUsrPoint() {
		return usrPoint;
	}

	public void setUsrPoint(int usrPoint) {
		this.usrPoint = usrPoint;
	}

	public String getUsrHistory() {
		return usrHistory;
	}

	public void setUsrHistory(String usrHistory) {
		this.usrHistory = usrHistory;
	}

	public String getHistoryCover() {
		return historyCover;
	}

	public void setHistoryCover(String historyCover) {
		this.historyCover = historyCover;
	}

	public int getHistoryPointTotal() {
		return historyPointTotal;
	}

	public void setHistoryPointTotal(int historyPointTotal) {
		this.historyPointTotal = historyPointTotal;
	}

	public String getHistoryDate() {
		return historyDate;
	}

	public void setHistoryDate(String historyDate) {
		this.historyDate = historyDate;
	}
	

	public String getHistoryUsrId() {
		return historyUsrId;
	}

	public void setHistoryUsrId(String historyUsrId) {
		this.historyUsrId = historyUsrId;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	public String getUsrNickname() {
		return usrNickname;
	}

	public void setUsrNickname(String usrNickname) {
		this.usrNickname = usrNickname;
	}

	public String getUsrCover() {
		return usrCover;
	}

	public void setUsrCover(String usrCover) {
		this.usrCover = usrCover;
	}

	public String getU1Nick() {
		return u1Nick;
	}

	public void setU1Nick(String u1Nick) {
		this.u1Nick = u1Nick;
	}

	public String getU2Nick() {
		return u2Nick;
	}

	public void setU2Nick(String u2Nick) {
		this.u2Nick = u2Nick;
	}

	public String getU2Cover() {
		return u2Cover;
	}

	public void setU2Cover(String u2Cover) {
		this.u2Cover = u2Cover;
	}

	
}
