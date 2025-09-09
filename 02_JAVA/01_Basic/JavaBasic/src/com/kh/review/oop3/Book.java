package com.kh.review.oop3;

public class Book {
	private String title;
	private String publisher;
	private String author;
	private int price;
	private double discountRate;

	public Book() {
		super();
	}

	public Book(String title, String publisher, String author) {
		this(title, publisher, author,0, 0.0);
	}

	public Book(String title, String publisher, String author, int price, double discountRate) {
		super();
		this.title = title;
		this.publisher = publisher;
		this.author = author;
		this.price = price;
		this.discountRate = discountRate;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public double getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}

	public void inform() {
		String str = "Book [title=" + title + ", publisher=" + publisher + ", author=" + author + ", price=" + price
				+ ", discountRate=" + discountRate + "]";
		System.out.println(str);
	}
}
