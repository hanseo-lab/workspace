package com.kh.example.collection1;

public class AscTitle extends Music implements Comparable {

	public int compareTo(Music o1, Music o2) {
		int result = o1.getTitle().compareTo(o2.getTitle());
		return result != 0 ? result : o1.getSinger().compareTo(o2.getSinger());
	}

}
