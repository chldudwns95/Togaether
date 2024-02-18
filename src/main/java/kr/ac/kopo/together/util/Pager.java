package kr.ac.kopo.together.util;

import java.util.ArrayList;
import java.util.List;

public class Pager {
	int page = 1;
	int perPage = 10;	//목록개수
	float total;
	private int perGroup=5; //12345 한 개에 몇 페이지 까지 나올지
	int search = 0;
	String keyword;
	
	public int getOffset() {
		return (page-1)*perPage;
	}
	
	public int getSearch() {
		return search;
	}
	public void setSearch(int search) {
		this.search = search;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	
	public float getTotal() {
		return total;
	}
	public void setTotal(float total) {
		this.total = total;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getPerPage() {
		return perPage;
	}
	public void setPerPage(int perPage) {
		this.perPage = perPage;
	}
	
	public int getPrev() {
		return page<=perGroup?1:(((page-1)/perGroup)-1)*perGroup+1;
	}
	public int getNext() {
		int next = (((page-1)/perGroup)+1)*perGroup+1;
		int last = getLast();
		
		return next<last?next:last;
		
	}
	public int getLast() {
		return (int)Math.ceil(total/perPage);
	}
	public List<Integer> getList(){
		ArrayList<Integer> list = new ArrayList<Integer>();
		
		int startPage = ((page-1)/perGroup)*perGroup+1;
		int last = getLast();
		
		for(int index=startPage; index < (startPage+perGroup)&&index<=last; index++)
			list.add(index);
		if(list.isEmpty()) {
			list.add(1);
		}
		return list;
	}
	
	public String getQuery() {
		if(search>0 && search<=4)
		return "search=" + search + "&keyword=" + keyword;
		return "";
	}
}
