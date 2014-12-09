package com.measyui.entity;

public class DataGrid {
	
	//前台传递过来分页的页码，第一页的页码为1
	private int page = 0;
	//前台传递过来分页的页大小。
	private int rows = 0;
	
	private int startRows;
	private int endRows;
	public int getStartRows() {
		return startRows;
	}
	public void setStartRows(int startRows) {
		this.startRows = startRows;
	}
	public int getEndRows() {
		return endRows;
	}
	public void setEndRows(int endRows) {
		this.endRows = endRows;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
		this.format();
	}
	public int getRows() {
		return rows;
	}
	public void setRows(int rows) {
		this.rows = rows;
		this.format();
	}
	
	private void format(){
		if(page != 0 && rows != 0){
			this.setStartRows((this.page-1)*this.rows);
			this.setEndRows(this.page*this.rows);
		}
	}
}
