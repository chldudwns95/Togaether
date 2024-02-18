package kr.ac.kopo.together.model;
import org.springframework.web.multipart.MultipartFile;



public class Take {
	int serviceId;				// 서비스 번호 
	int usrId;					//사용자 번호 
	int serviceSortId;			//서비스 분류번호
	String serviceStartDate;	//서비스 가능 시작일
	String serviceEndDate;		//서비스가능 종료일    
	String serviceWalkingTime;	//산책시간 
	String serviceHouseSort;	// 주택종류 
	String serviceHouseSize;	// 주택크기 
	String serviceHouseYard;		//마당유무 
	String servicePickup;			// 픽업여부 
	String serviceEtc; 			// 특이사항 
	String serviceWalkingPrice; //산책가격 
	String serviceSittingPrice; //돌봄가격
	String serviceIng;
	String serviceCover;
	
	String u1Nick;
	String u2Nick;
	String u2Cover;
	
	MultipartFile uploadFile;
		
	/*USER JOIN*/
	String usrAddr;
	String usrNickname;
	String usrCover;
	/* JOIN */	
	int historyId;
	int usrPoint;
	String usrHistory;
	String historyCover;
	int historyPointTotal;
	
	
	public String getUsrCover() {
		return usrCover;
	}
	public void setUsrCover(String usrCover) {
		this.usrCover = usrCover;
	}
	public String getUsrNickname() {
		return usrNickname;
	}
	public void setUsrNickname(String usrNickname) {
		this.usrNickname = usrNickname;
	}
	public String getUsrAddr() {
		return usrAddr;
	}
	public void setUsrAddr(String usrAddr) {
		this.usrAddr = usrAddr;
	}
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
	public int getServiceSortId() {
		return serviceSortId;
	}
	public void setServiceSortId(int serviceSortId) {
		this.serviceSortId = serviceSortId;
	}
	
	public String getServiceStartDate() {
		return serviceStartDate;
	}
	public void setServiceStartDate(String serviceStartDate) {
		this.serviceStartDate = serviceStartDate;
	}
	public String getServiceEndDate() {
		return serviceEndDate;
	}
	public void setServiceEndDate(String serviceEndDate) {
		this.serviceEndDate = serviceEndDate;
	}
	public String getServiceWalkingTime() {
		return serviceWalkingTime;
	}
	public void setServiceWalkingTime(String serviceWalkingTime) {
		this.serviceWalkingTime = serviceWalkingTime;
	}
	public String getServiceHouseSort() {
		return serviceHouseSort;
	}
	public void setServiceHouseSort(String serviceHouseSort) {
		this.serviceHouseSort = serviceHouseSort;
	}
	public String getServiceHouseSize() {
		return serviceHouseSize;
	}
	public void setServiceHouseSize(String serviceHouseSize) {
		this.serviceHouseSize = serviceHouseSize;
	}

	public String getServiceHouseYard() {
		return serviceHouseYard;
	}
	public void setServiceHouseYard(String serviceHouseYard) {
		this.serviceHouseYard = serviceHouseYard;
	}
	public String getServicePickup() {
		return servicePickup;
	}
	public void setServicePickup(String servicePickup) {
		this.servicePickup = servicePickup;
	}
	public String getServiceEtc() {
		return serviceEtc;
	}
	public void setServiceEtc(String serviceEtc) {
		this.serviceEtc = serviceEtc;
	}
	public String getServiceWalkingPrice() {
		return serviceWalkingPrice;
	}
	public void setServiceWalkingPrice(String serviceWalkingPrice) {
		this.serviceWalkingPrice = serviceWalkingPrice;
	}
	public String getServiceSittingPrice() {
		return serviceSittingPrice;
	}
	public void setServiceSittingPrice(String serviceSittingPrice) {
		this.serviceSittingPrice = serviceSittingPrice;
	}
	public String getServiceIng() {
		return serviceIng;
	}
	public void setServiceIng(String serviceIng) {
		this.serviceIng = serviceIng;
	}
	public String getServiceCover() {
		return serviceCover;
	}
	public void setServiceCover(String serviceCover) {
		this.serviceCover = serviceCover;
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