package kr.ac.kopo.together.model;

public class Extra {
	int extraId;			//추가서비스 번호
	int usrId;				//usrId
	String extraContent;	//추가서비스 내용
	String extraPrice;		//추가서비스 가격
	
	
	public int getExtraId() {
		return extraId;
	}
	public void setExtraId(int extraId) {
		this.extraId = extraId;
	}
	
	public int getUsrId() {
		return usrId;
	}
	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}
	
	public String getExtraContent() {
		return extraContent;
	}
	public void setExtraContent(String extraContent) {
		this.extraContent = extraContent;
	}
	public String getExtraPrice() {
		return extraPrice;
	}
	public void setExtraPrice(String extraPrice) {
		this.extraPrice = extraPrice;
	}

}
