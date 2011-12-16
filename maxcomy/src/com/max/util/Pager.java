package com.max.util;

public class Pager {
	private int pagesize=5;   //ÿҳ��ʾ��
	private int start=1;	  //��ʼ����
	private int end=1;		  //��������
	private int sum;		  //����
	private int curpage=1;    //��ǰҳ
	private int pages=1;	  //��ҳ��
	
	public int getCurpage() {
		return curpage;
	}
	public void setCurpage(int curpage) {
		if(curpage<1)curpage=1;
		if(curpage>this.getPages())curpage=this.getPages();
		this.curpage = curpage;
	}
	public int getEnd() {
		end=this.getStart()+pagesize;
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getPages() {
		if(sum%pagesize==0){
			pages=sum/pagesize;
		}else{
			pages=sum/pagesize+1;
		}
		return pages;
	}
	public void setPages(int pages) {
		this.pages = pages;
	}
	public int getPagesize() {
		return pagesize;
	}
	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	public int getStart() {
		start=(this.getCurpage()-1)*pagesize+1;
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getSum() {
		return sum;
	}
	public void setSum(int sum) {
		this.sum = sum;
	}
	
	
}
