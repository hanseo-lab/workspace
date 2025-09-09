package com.kh.example.collection1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public class MusicController implements Comparator{
	private List<Music> list = new ArrayList<>();

	public int addList(Music music) {
		if(music == null) return 0;
		list.add(music);
		return 1;
	}

	public int addAtZero(Music music) {
		if(music == null) return 0;
		list.add(0, music);
		return 1;
	}

	public List<Music> printAll() {
		return list;
	}

	public Music searchMusic(String title) {
		for (Music m : list) {
			if (m.getTitle().equals(title))
				return m;
		}
		return null;
	}

	public Music removeMusic(String title) {
		/* 강사님이 하신 거
		for(Music m : list) {
			if(m.getTitle().equals(title){
				Music removeMusic = m;
				list.remove(m);
				return removeMusic;
				}
			}
			return null;
		}
		*/
		Iterator<Music> it = list.iterator();
		while (it.hasNext()) {
			Music m = it.next(); // 다음요소 꺼내기
			if (m.getTitle().equals(title)) {
				it.remove();
				return m;
			}
		}
		return null;

	}

	public Music setMusic(String title, Music music) {
		for (int i = 0; i < list.size(); i++) {
			Music m = list.get(i);
			if (m.getTitle().equals(title)) {
				list.set(i, music);
				return m;
			}
		}
		return null;
	}

	public int ascTitle() {
		try {
			Collections.sort(list);
			return 1;
		} catch (Exception e) {
			return 0;
		}

	}
	
	public int descSinger() {
		try {
			list.sort(Collections.reverseOrder());
			return 1;
		} catch (Exception e) {
			return 0;
		}
	}

	
	public int compare(Music m1, Music m2) {
        return m1.getTitle().compareTo(m2.getTitle());
    }

	@Override
	public int compare(Object o1, Object o2) {
		// TODO Auto-generated method stub
		return 0;
	}
	
}
