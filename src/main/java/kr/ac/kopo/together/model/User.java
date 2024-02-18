package kr.ac.kopo.together.model;

import org.springframework.web.multipart.MultipartFile;

public class User {
	int usrId; // 사용자번호
	String usrName; // 이름
	String usrTell; // 전화번호
	String usrAddr; // 주소
	String usrAddr2; // 상세 주소
	int usrSort; // 사용자 구분
	String usrNickname; // 닉네임
	String usrEmail; // 이메일
	String usrPassword; // 비밀번호
	String usrCareer; // 경력
	String usrCirtificate; // 자격증
	String usrKey; // 메일인증
	String key; 
	String usrCover;
		
	MultipartFile uploadFile;
	
	/* JOIN */	
	int historyId;
	int usrPoint;
	String usrHistory;
	String historyCover;
	int historyPointTotal;
	
	//밑에값을 생성하기위해 초기화해줄 값이 필요함(생성자?) 무튼 초기화
	public User() {
		super();
	}

	public User(String usrEmail, String usrName, String key) {
		super();
		this.usrEmail = usrEmail;
		this.usrName = usrName;
		this.key = key;
		
	}

	public User(String usrEmail, String usrKey) {
		super();
		this.usrEmail = usrEmail;
		this.usrKey = usrKey;
	}

	public int getUsrId() {
		return usrId;
	}

	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}

	public String getUsrName() {
		return usrName;
	}

	public void setUsrName(String usrName) {
		this.usrName = usrName;
	}

	public String getUsrTell() {
		return usrTell;
	}

	public void setUsrTell(String usrTell) {
		this.usrTell = usrTell;
	}

	public String getUsrAddr() {
		return usrAddr;
	}

	public void setUsrAddr(String usrAddr) {
		this.usrAddr = usrAddr;
	}

	public int getUsrSort() {
		return usrSort;
	}

	public void setUsrSort(int usrSort) {
		this.usrSort = usrSort;
	}

	public String getUsrNickname() {
		return usrNickname;
	}

	public void setUsrNickname(String usrNickname) {
		this.usrNickname = usrNickname;
	}

	public String getUsrEmail() {
		return usrEmail;
	}

	public void setUsrEmail(String usrEmail) {
		this.usrEmail = usrEmail;
	}

	public String getUsrPassword() {
		return usrPassword;
	}

	public void setUsrPassword(String usrPassword) {
		this.usrPassword = usrPassword;
	}

	public String getUsrCareer() {
		return usrCareer;
	}

	public void setUsrCareer(String usrCareer) {
		this.usrCareer = usrCareer;
	}

	public String getUsrCirtificate() {
		return usrCirtificate;
	}

	public void setUsrCirtificate(String usrCirtificate) {
		this.usrCirtificate = usrCirtificate;
	}

	public String getUsrKey() {
		return usrKey;
	}

	public void setUsrKey(String usrKey) {
		this.usrKey = usrKey;
	}

	public String getUsrAddr2() {
		return usrAddr2;
	}

	public void setUsrAddr2(String usrAddr2) {
		this.usrAddr2 = usrAddr2;
	}

	public int getHistoryId() {
		return historyId;
	}

	public void setHistoryId(int historyId) {
		this.historyId = historyId;
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

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getUsrCover() {
		return usrCover;
	}

	public void setUsrCover(String usrCover) {
		this.usrCover = usrCover;
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

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

}
