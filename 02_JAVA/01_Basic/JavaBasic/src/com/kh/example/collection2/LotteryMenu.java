package com.kh.example.collection2;

import java.util.HashSet;
import java.util.Scanner;
import java.util.TreeSet;

public class LotteryMenu {
	private Scanner sc = new Scanner(System.in);
	private LotteryController lc = new LotteryController();

	public void mainMenu() {
		System.out.println("========== KH 추첨 프로그램 ========== ");
		while (true) {
			System.out.println("=====***** 메인 메뉴 *****=====");
			System.out.println("1. 추첨 대상 추가");
			System.out.println("2. 추첨 대상 삭제");
			System.out.println("3. 당첨 대상 확인");
			System.out.println("4. 정렬된 당첨 대상 확인");
			System.out.println("5. 당첨 대상 검색");
			System.out.println("9. 종료");
			System.out.print("메뉴 번호 입력 : ");

			int choice = sc.nextInt();
			sc.nextLine();

			switch (choice) {
			case 1:
				insertObject();
				break;
			case 2:
				deleteObject();
				break;
			case 3:
				winObject();
				break;
			case 4:
				sortedWinObject();
				break;
			case 5:
				searchWinner();
				break;
			case 9:
				System.out.println("프로그램을 종료합니다.");
				return;
			default:
				System.out.println("잘못된 번호입니다. 다시 입력하세요.");
			}
			System.out.println();
		}

	}

	public void insertObject() {
		System.out.print("추가할 추첨 대상 수 : ");
		int count = sc.nextInt();
		sc.nextLine();

		for (int i = 0; i < count; i++) {
			System.out.print("이름 : ");
			String name = sc.nextLine();
			System.out.print("핸드폰 번호('-'빼고) : ");
			String phone = sc.nextLine();
			boolean isInsert = lc.insertObject(new Lottery(name, phone));
			if (!isInsert) {
				System.out.println("중복된 대상입니다. 다시 입력해주세요");
				i--;
			}
		}

		System.out.println(count + "명 추가 완료되었습니다.");
	}

	public void deleteObject() {
		System.out.println("삭제할 대상의 이름과 핸드폰 번호를 입력하세요.");
		System.out.print("이름 : ");
		String name = sc.nextLine();
		System.out.print("핸드폰 번호('-'빼고) : ");
		String phone = sc.nextLine();
		boolean isDelet = lc.deleteObject(new Lottery(name, phone));
		if (isDelet) {
			System.out.println("삭제 완료되었습니다. ");
		} else {
			System.out.println("존재하지 않는 대상입니다.");
		}
	}

	public void winObject() {
		HashSet<Lottery> win = lc.winObject();
		System.out.print(win);
	}

	public void sortedWinObject() {
		TreeSet<Lottery> result = lc.sortedWinObject();
		if (!result.isEmpty()) {
			System.out.println("정렬 성공");
			for (Lottery lottery : result) {
				System.out.println(lottery);
			}
		} else {
			System.out.println("정렬 실패");
		}
	}

	public void searchWinner() {
		System.out.println("검색할 대상의 이름과 핸드폰 번호를 입력하세요.");
		System.out.print("이름 : ");
		String name = sc.nextLine();
		System.out.print("핸드폰 번호('-'빼고) : ");
		String phone = sc.nextLine();

		boolean isWin = lc.searchWinner(new Lottery(name, phone));
		if (isWin) {
			System.out.println("축하합니다. 당첨 목록에 존재합니다.");
		} else {
			System.out.println("안타깝지만 당첨 목록에 존재하지 않습니다.");
		}
	}

}
