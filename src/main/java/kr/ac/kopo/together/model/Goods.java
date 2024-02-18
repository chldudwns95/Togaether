package kr.ac.kopo.together.model;

import org.springframework.web.multipart.MultipartFile;

public class Goods {

	int goodsId;// 상품번호
	int usrId;// 사용자번호
	String goodsName;// 상품명
	String goodsDate;// 상품게시일자
	String goodsContent;// 상품설명
	String cover; //책표지
	
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

	public String getCover() {
		return cover;
	}

	public void setCover(String cover) {
		this.cover = cover;
	}	

	public int getGoodsId() {
		return goodsId;
	}

	public void setGoodsId(int goodsId) {
		this.goodsId = goodsId;
	}

	public int getUsrId() {
		return usrId;
	}

	public void setUsrId(int usrId) {
		this.usrId = usrId;
	}

	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}

	public String getGoodsDate() {
		return goodsDate;
	}

	public void setGoodsDate(String goodsDate) {
		this.goodsDate = goodsDate;
	}

	public String getGoodsContent() {
		return goodsContent;
	}

	public void setGoodsContent(String goodsContent) {
		this.goodsContent = goodsContent;
	}

	public MultipartFile getUploadFile() {
		return uploadFile;
	}

	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}

	
	

}
