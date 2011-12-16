package com.max.util;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.TagSupport;


public class PagerTag extends TagSupport {
	private static final long serialVersionUID = 183373550159351609L;
	private Pager pager;
	private String urlstart;
	private String urlend;
	public PagerTag() {
	}
	
	public int doStartTag() throws JspException {
		try {
			String bar=getNavigatorBar();
			pageContext.getOut().write(bar);
			return SKIP_BODY;
		} catch (IOException e) {
			e.printStackTrace();
			throw new JspException(e);
		}
	}
	
	
	private String getNavigatorBar()
	{
		StringBuffer bar=new StringBuffer();
		int curpage = pager.getCurpage();//��ǰҳ
		int pages   = pager.getPages();//��ҳ��
		/**
		 * ��һҳ
		 */
		//����ǵ�һҳ
		if(curpage == 1){
			bar.append("<span class='current prev'>Prev</span>")
			   .append("<span class='current'>1</span>");
		}else{
			bar.append("<a href='"+urlstart+(curpage-1)+urlend+"'>Prev</a>")
			   .append("<a href='"+urlstart+1+urlend+"'>1</a>");
		}
		/**
		 * ����(��һҳ)
		 */
		
		//�����ҳ��С��11
		if(pages <= 11){
			for(int i =2 ; i<pages;i++){
				if(curpage==i){
					bar.append("<span class='current'>"+i+"</span>");
				}else{
					bar.append("<a href='"+urlstart+i+urlend+"'>"+i+"</a>");
				}
			}
		}else{//��ҳ������8
			if(curpage <=6){ 						//��ǰҳСҳ����6ʱ  (ҳ��Ҫ��ǰ��Ľ���)
				for(int i=2;i<=7;i++){
					if(curpage==i){
						bar.append("<span class='current'>"+i+"</span>");
					}else{
						bar.append("<a href='"+urlstart+i+urlend+"'>"+i+"</a>");
					}
				}
				bar.append("<span>....</span>");
				bar.append("<a href='"+urlstart+(pages-1)+urlend+"'>"+(pages-1)+"</a>");
			}else if(curpage>=pages-5){  			//��ǰҳ�������ҳ-5ʱ Ҫ�����Ľ���
				bar.append("<a href='"+urlstart+2+urlend+"'>"+2+"</a>");
				bar.append("<span>....</span>");
				for(int i=pages-5-3;i<=pages-1;i++){
					if(curpage==i){
						bar.append("<span class='current'>"+i+"</span>");
					}else{
						bar.append("<a href='"+urlstart+i+urlend+"'>"+i+"</a>");
					}
				}
			}else{
				bar.append("<a href='"+urlstart+2+urlend+"'>"+2+"</a>");
				bar.append("<span>....</span>");
				for(int i=curpage-3;i<=curpage+3;i++){
					if(curpage==i){
						bar.append("<span class='current'>"+i+"</span>");
					}else{
						bar.append("<a href='"+urlstart+i+urlend+"'>"+i+"</a>");
					}
				}
				bar.append("<span>....</span>");
				bar.append("<a href='"+urlstart+(pages-1)+urlend+"'>"+(pages-1)+"</a>");
			}
		}
		
		
		/**
		 * ���һҳ
		 */
		//��������һҳ
		if(curpage == pages){
			bar.append("<span class='current'>"+pages+"</span>")
			   .append("<span class='current next'>Next</span>");
		}else{
			bar.append("<a href='"+urlstart+pages+urlend+"'>"+pages+"</a>")
			   .append("<a href='"+urlstart+(curpage+1)+urlend+"'>Next</a>");
		}
		bar.append("<select style='height:26px;text-align: center;padding: 0.3em 0.5em;' onchange=\"location.href='"+urlstart+"'+this.value+'"+urlend+"'\">");
		for(int i=1;i<=pages;i++){
			if(curpage==i){
				bar.append("<option value='"+i+"' selected='selected'>").append("��"+i+"ҳ").append("</option>");
			}else{
				bar.append("<option value='"+i+"'>").append("��"+i+"ҳ").append("</option>");
			}
		}
		bar.append("</select>");
		return bar.toString();
	}
	
	
	public int doEndTag() throws JspTagException
	{
		return EVAL_PAGE;
	}

	
	
	
	
	
	
	public Pager getPager() {
		return pager;
	}

	public void setPager(Pager pager) {
		this.pager = pager;
	}

	public String getUrlend() {
		return urlend;
	}

	public void setUrlend(String urlend) {
		this.urlend = urlend;
	}

	public String getUrlstart() {
		return urlstart;
	}

	public void setUrlstart(String urlstart) {
		this.urlstart = urlstart;
	}
}
