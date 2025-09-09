package com.kh.example.collection1;

import java.util.List;
import java.util.Scanner;

public class MusicView {
	private Scanner sc = new Scanner(System.in);
	private MusicController mc = new MusicController();

	public void mainMenu() {
		while (true) {
			System.out.println();
			System.out.println("=====***** 메인 메뉴 *****=====");
			System.out.println("1. 마지막 위치에 곡 추가");
			System.out.println("2. 첫 위치에 곡 추가");
			System.out.println("3. 전체 곡 목록 출력");
			System.out.println("4. 특정 곡 검색");
			System.out.println("5. 특정 곡 삭제");
			System.out.println("6. 특정 곡 정보 수정");
			System.out.println("7. 곡명 오름차순 정렬");
			System.out.println("8. 가수명 내림차순 정렬");
			System.out.println("9. 종료 (메시지 출력 후 반환)");
			System.out.print("메뉴 번호 입력 : ");

			int choice = sc.nextInt();
			sc.nextLine();

			switch (choice) {
			case 1:
				addList();
				break;
			case 2:
				addAtZero();
				break;
			case 3:
				printAll();
				break;
			case 4:
				searchMusic();
				break;
			case 5:
				removeMusic();
				break;
			case 6:
				setMusic();
				break;
			case 7:
				ascTitle();
				break;
			case 8:
				descSinger();
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

	public void addList() {
		System.out.println("****** 마지막 위치에 곡 추가 ******");
		System.out.print("곡 명 : ");
		String title = sc.nextLine();
		System.out.print("가수 명 : ");
		String singer = sc.nextLine();
		int result = mc.addList(new Music(title, singer));
		System.out.println(result == 1 ? "추가 성공" : "추가 실패");
	}

	public void addAtZero() {
		System.out.println("****** 첫 위치에 곡 추가 ******");
		System.out.print("곡 명 : ");
		String title = sc.nextLine();
		System.out.print("가수 명 : ");
		String singer = sc.nextLine();
		int result = mc.addAtZero(new Music(title, singer));
		System.out.println(result == 1 ? "추가 성공" : "추가 실패");
	}

	public void printAll() {
		List<Music> list = mc.printAll();
		System.out.println("****** 전체 곡 목록 출력 ******");
		System.out.println(list);
	}

	public void searchMusic() {
		System.out.println("****** 특정 곡 검색 ******");
		System.out.print("검색할 곡 명 : ");
		String title = sc.nextLine();
		Music m = mc.searchMusic(title);
		if (m == null) {
			System.out.println("검색한 곡이 없습니다.");
		} else {
			System.out.println("검색한 곡은 " + m.getSinger() + "- " + m.getTitle() + "입니다.");
		}
	}

	public void removeMusic() {
		System.out.println("****** 특정 곡 삭제 ******");
		System.out.print("삭제할 곡 명 : ");
		String title = sc.nextLine();
		Music m = mc.removeMusic(title);
		if (m == null) {
			System.out.println("삭제할 곡이 없습니다.");
		} else {
			System.out.println(m.getSinger() + "- " + m.getTitle() + "을(를) 삭제했습니다.");
		}
	}

	public void setMusic() {
		System.out.println("****** 특정 곡 수정 ******");
		System.out.print("검색할 곡 명 : ");
		String oldTitle = sc.nextLine();

		System.out.print("수정할 곡 명 : ");
		String newTitle = sc.nextLine();
		System.out.print("수정할 가수 명 : ");
		String newSinger = sc.nextLine();
		Music m = mc.setMusic(oldTitle, new Music(newTitle, newSinger));
		if (m == null) {
			System.out.println("수정할 곡이 없습니다.");
		} else {
			System.out.println(m.getSinger() + "- " + oldTitle + "의 값이 변경되었습니다.");
		}
	}

	public void ascTitle() {
		int result = mc.ascTitle();
		System.out.println(result == 1 ? "정렬 성공" : "정렬 실패");
	}

	public void descSinger() {
		int result = mc.descSinger();
		System.out.println(result == 1 ? "정렬 성공" : "정렬 실패");
	}
}
