package com.kh.review.poly;

import java.util.Arrays;

import com.kh.review.oop7.Product;

public class LibraryController {
	private Member mem = null;
	private Book[] bList = new Book[5];

	{
		bList[0] = new CookBook("백종원의 집밥", "백종원", "tvN", true);
		bList[1] = new AniBook("아기공룡 뿌꾸", "미티", "원모어", 19);
		bList[2] = new AniBook("루피의 원피스", "루피", "japan", 12);
		bList[3] = new CookBook("이혜정의 얼마나 맛있게요", "이혜정", "문학", false);
		bList[4] = new CookBook("최현석 날 따라해봐", "최현석", "소금책", true);
	}

	public void insertMember(Member mem) {
		this.mem = mem;
	}

	public Member myInfo() {
		return mem;
	}

	public Book[] selectAll() {
		return bList;
	}

	public Book[] searchBook(String keyword) {
		Book[] bArr = new Book[bList.length];
		int count = 0;
		for (Book b : bList) {
			if (b != null && b.getTitle() != null && b.getTitle().contains(keyword)) {
				bArr[count++] = b;
			}
		}
		return bArr;
	}

	public int rentBook(int index) {
		int result = 0;

		Book bArr = bList[index];
		if (bArr != null) {
			if (bArr instanceof AniBook) {
				AniBook ani = (AniBook) bArr; // 다운 캐스팅
				if (mem != null && mem.getAge() < ani.getAccessAge()) {
					return result = 1;
				}
			} else if (bArr instanceof CookBook) {
				CookBook cook = (CookBook) bArr;
				if (mem != null) {
					mem.setCouponCount(mem.getCouponCount() + 1);
					return result = 2;
				}
			}
		}
		return result;
	}

	public void insertBoook(Book b) {
		for (int i = 0; i < bList.length; i++) {
			if (bList[i] == null) {
				bList[i] = b;
				return;
			}
		}
		// 종료되지 않음 -> 모든 bList의 index가 null이 아님
		Book[] newList = new Book[bList.length + 1];
		for (int i = 0; i < bList.length; i++) { // bList를 전부 반복하며 새로운 리스트에 복사
			newList[i] = bList[i];
		}
		newList[newList.length - 1] = b;
		bList = newList;
	}

	// 도서목록에서 해당 index에 값을 제거한 후
	// 도서목록에 생성된 객체에 딱맞게 배열을 다시 생성해서 교체
	public void deleteBook(int index) {
		// index = 2가정
		bList[index] = null;

		for (int i = index; i < bList.length; i++) {
			if (i == bList.length - 1) {
				bList[i] = null;
			} else {
				bList[i] = bList[i + 1];
			}
		}

		Book[] newList = new Book[bList.length - 1];
		for (int i = 0; i < newList.length; i++) {
			newList[i] = bList[i];
		}

		bList = newList;
	}
}
