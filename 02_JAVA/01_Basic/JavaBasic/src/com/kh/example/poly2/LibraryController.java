package com.kh.example.poly2;

public class LibraryController {
	private Member mem = null;
	private Book[] bList = new Book[5];

	{
		bList[0] = new CookBook("백종원의 집밥", "백종원", "tvN", true);
		bList[1] = new AniBook("한번 더 해요", "미티", "원모어", 19);
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

	// 문자열1.contains(문자열2); -> 문자열1에 문자열2가 포함되어있다면 true 아니면 false
	public Book[] searchBook(String keyword) {
		Book[] searchBook = new Book[bList.length];
		int count = 0;
		for (Book b : bList) {
			if (b != null && b.getTitle() != null && b.getTitle().contains(keyword)) {
				searchBook[count++] = b;
			}
		}

		return searchBook;
	}

	public int rentBook(int index) {
		int result = 0;
		Book selected = bList[index];
		if (selected != null) {
			if (selected instanceof AniBook) {
				AniBook ani = (AniBook) selected;
				if (mem != null && mem.getAge() < ani.getAccessAge()) {
					return result = 1; //나이제한 실패
				}
			} else if (selected instanceof CookBook) {
				CookBook cook = (CookBook) selected;
				if (cook.isCoupon()) {
					if(mem != null) {
						mem.setCouponCount(mem.getCouponCount() +1);
						return result = 2; //대여성공 + 쿠폰발금
					}
				}
			}
			return result; // 성공
		}
		return result = 3; //책이 없어서 실패!
	}
}
