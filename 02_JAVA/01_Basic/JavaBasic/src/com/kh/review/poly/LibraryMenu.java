package com.kh.review.poly;

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
			System.out.println("==== 메뉴 ==== ");
			System.out.println("1. 마이페이지");
			System.out.println("2. 도서 전체 조회");
			System.out.println("3. 도서 검색");
			System.out.println("4. 도서 대여하기");
			System.out.println("5. 도서 추가하기");
			System.out.println("6. 도서 삭제하기");
			System.out.println("9. 프로그램 종료하기");
			System.out.print("메뉴 번호 : ");
			int sel = sc.nextInt();
			sc.nextLine();

			switch (sel) {
			case 1:
				Member m = lc.myInfo();
				if (m != null) {
					System.out.println(m);
				}
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
			case 5:
				insertBook();
				break;
			case 6:
				deleteBook();
				break;
			case 9:
				System.out.println("프로그램을 종료합니다.");
				return;
			default:
				System.out.println("잘못 입력하셨습니다. 다시 입력해주세요.");
			}
			System.out.println();
		}
	}

	public void selectAll() {
		Book[] bArr = lc.selectAll();
		for (int i = 0; i < bArr.length; i++) {
			if (bArr == null)
				break;
			System.out.println(i + "번 도서 : " + bArr[i]);
		}
	}

	public void searchBook() {
		System.out.print("검색할 제목 키워드 : ");
		String keyword = sc.next();
		sc.nextLine();

		Book[] bArr = lc.searchBook(keyword);
		if (bArr[0] == null) {
			System.out.println("검색 결과 없음");
		} else {
			for (Book b : bArr) {
				if (b == null) {
					break;
				}
				System.out.println(b);
			}
		}
	}

	public void rentBook() {
		System.out.println();
		selectAll();
		System.out.print("대여할 도서 번호 선택 : ");
		int index = sc.nextInt();
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

	// 도서정보를 모두 입력받아 컨트롤러의 도서목록에 추가
	// 단 도서목록이 가득찼을 경우 길이가 +1 배열을 새로 생성하여 추가
	public void insertBook() {
		// 정보 입력받아 생성
		Book b = null;
		System.out.println("===== 도서 추가 =====");
		System.out.print("추가할 도서 종류를 고르시오(1.만화 2.요리) : ");
		int sel = sc.nextInt();
		sc.nextLine();
		System.out.print("추가할 도서명 : ");
		String title = sc.nextLine();
		System.out.print("추가할 작가명 : ");
		String author = sc.nextLine();
		System.out.print("추가할 출판사명 :");
		String publisher = sc.nextLine();

		switch (sel) {
		case 1:
			System.out.print("제한 나이 : ");
			int accessAge = sc.nextInt();
			b = new AniBook(title, author, publisher, accessAge);
			break;
		case 2:
			System.out.print("쿠폰 여부(1. 발급 2. 미발급) : ");
			boolean isCoupon = sc.nextInt() == 1;
			b = new CookBook(title, author, publisher, isCoupon);
			break;
		}
		lc.insertBoook(b);
	}

	// 도서정보를 전체 출력한 후 index를 입력받아
	// 도서목록에서 해당 index에 값을 제거한 후
	// 도서목록에 생성된 객체에 딱맞게 배열을 다시 생성해서 교체
	public void deleteBook() {
		selectAll();

		System.out.print("삭제할 도서번호 : ");
		int index = sc.nextInt();
		sc.nextLine();

		lc.deleteBook(index);
	}
}
