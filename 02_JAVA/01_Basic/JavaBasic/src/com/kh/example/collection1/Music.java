package com.kh.example.collection1;

import java.util.Objects;

public class Music implements Comparable {
	private String title;
	private String singer;
	
	public Music() {
		super();
	}
	public Music(String title, String singer) {
		super();
		this.title = title;
		this.singer = singer;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	
	@Override
	public String toString() {
		return singer + "- " +title;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(title, singer);
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Music) {
			Music m = (Music)obj;
			return this.title.equals(m.getTitle()) && this.singer.equals(m.getSinger());
		}
		//return false; 강사님이 하신 거
		return super.equals(obj);
	}
	
	@Override
	public int compareTo(Object o) {
		return this.title.compareTo(((Music) o).getTitle());
	}
	
	
	
}
