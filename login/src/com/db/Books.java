package com.db;

public class Books 
{
	private String callno, bookname, author, publisher;
	private Integer quantity;
	
	public String getCallno() {
		return callno;
	}

	public void setCallno(String callno) {
		this.callno = callno;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity2) {
		this.quantity = quantity2;
	}
}
