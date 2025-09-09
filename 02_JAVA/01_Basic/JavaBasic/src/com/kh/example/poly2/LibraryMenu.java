package com.kh.example.poly2;

import java.util.Scanner;

public class LibraryMenu {
	private LibraryController lc = new LibraryController();
	private Scanner sc = new Scanner(System.in);

	public void mainMenu() {
		System.out.print("이름 : ");
		String name = sc.next();
		System.out.print("나이 : ");
		int age = sc.nextInt();
		System.out.print("성별 : ");
		char gender = sc.next().charAt(0);
		lc.insertMember(new Member(name, age, gender));

		while (true) {
			System.out.println();
			System.out.println("==== 메뉴 ====");
			System.out.println("1. 마이페이지");
			System.out.println("2. 도서 전체 조회");
			System.out.println("3. 도서 검색");
			System.out.println("4. 도서 대여하기");
			System.out.println("9. 프로그램 종료하기");
			System.out.println("메뉴 번호 : ");
			int select = sc.nextInt();
			sc.nextLine(); // 개행 제거

			switch (select) {
			case 1:
				Member m = lc.myInfo();
				if (m != null)
					System.out.println(m);
				break;
			case 2:
				selectAll();
				break;
			case 3:
				searchBook();
				break;
			case 4:
				rentBook();
				break;
			case 9:
				System.out.println("프로그램을 종료합니다.");
				return;
			default:
				System.out.println("잘못된 번호입니다. 다시 입력하세요.");
			}
		}
	}

	public void selectAll() {
		Book[] books = lc.selectAll();
		for (int i = 0; i < books.length; i++) {
			if (books[i] == null)
				break;

			System.out.println(i + "번 도서 : " + books[i]);
		}
	}

	public void searchBook() {
		System.out.print("검색할 제목 키워드 : ");
		String keyword = sc.next();
		sc.nextLine();

		Book[] book = lc.searchBook(keyword);
		if (book[0] == null) {
			System.out.println("검색 결과 없음");
		} else {
			for (Book bk : book) {
				if (bk == null) {
					break;
				} System.out.println(bk);
			}
		}
	}

	public void rentBook() {
		//대여전 목록안내
		selectAll();
		System.out.print("대여할 도서 번호 선택 : ");
		int index = sc.nextInt();
		sc.nextLine();
		switch (lc.rentBook(index)) {
		case 0:
			System.out.println("성공적으로 대여되었습니다.");
			break;
		case 1:
			System.out.println("나이 제한으로 대여 불가능입니다.");
			break;
		case 2:
			System.out.println("성공적으로 대여되었습니다. 요리학원 쿠폰이 발급되었으니 마이페이지에서 확인하세요");
			break;
		default:
			System.out.println("대여가 불가능한 책입니다..");
		}
	}
}
