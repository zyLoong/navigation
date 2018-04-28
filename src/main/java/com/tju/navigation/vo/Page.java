package com.tju.navigation.vo;

import java.util.List;

public class Page<T> {
	private List<T> datas;//查询所有的记录
	private int totalno;//一共多少页
	private int pageno;//第几页
	private int totalsize;//一共多少条
	private int pagesize;//一页多少条数据

	public List<T> getDatas() {
		return datas;
	}

	public Page(int pageno, int pagesize) {
		super();
		
		if (pageno<=0) {
			this.pageno=1;
		}else {
			this.pageno=pageno;
		}
		if(pagesize<=0) {
			this.pagesize = 10 ;
		}else {
			this.pagesize = pagesize;
		}
	}

	public void setDatas(List<T> datas) {
		this.datas = datas;
	}

	public int getTotalno() {
		return totalno;
	}

	public void setTotalno(int totalno) {
		this.totalno = totalno;
	}

	public int getPageno() {
		return pageno;
	}

	public void setPageno(int pageno) {
		this.pageno = pageno;
	}

	public int getTotalsize() {
		return totalsize;
	}

	public void setTotalsize(int totalsize) {
		this.totalsize = totalsize;
		this.totalno = totalsize % pagesize==0 ? (totalsize/pagesize) : (totalsize/pagesize + 1);
	}

	public int getPagesize() {
		return pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}
	//这个方法是找索引 当查询分页数据的时候需要传两个参数 一个索引 一个pagesize
	public int getStartIndex() {
		return (pageno-1)*pagesize ;
	}

}
