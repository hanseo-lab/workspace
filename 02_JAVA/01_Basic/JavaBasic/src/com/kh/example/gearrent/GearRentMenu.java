package com.kh.example.gearrent;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

public class GearRentMenu {
	private GearRentController gc = new GearRentController();
	private Scanner sc = new Scanner(System.in);
	
	public void mainMenu() {
		while (true) {
			System.out.println("=== KH 장비 대여 관리 ===");
			System.out.println("1) 장비등록");
			System.out.println("2) 회원등록");
			System.out.println("3) 대여");
			System.out.println("4) 반납");
			System.out.println("5) 태그검색");
			System.out.println("6) 키워드검색");
			System.out.println("7) 전체장비");
			System.out.println("8) 대여중목록");
			System.out.println("9) 종료");
			System.out.print("메뉴: ");

			int choice = sc.nextInt();
			sc.nextLine();

			switch (choice) {
			case 1:
				addDevice();
				break;
			case 2:
				addMember();
				break;
			case 3:
				borrow();
				break;
			case 4:
				returnItem();
				break;
			case 5:
				findByTag();
				break;
			case 6:
				findByKeyword();
				break;
			case 7:
				printAllDevices();
				break;
			case 8:
				printActiveLoans();
				break;
			case 9:
				System.out.println("프로그램을 종료합니다.");
				return;
			default:
				System.out.println("잘못된 번호입니다. 다시 입력해주세요.");
			}
			System.out.println();
		}
	}
	
	public void addDevice() {
		System.out.print("유형(1: Camera, 2: Laptop): ");
		int type = sc.nextInt();
		sc.nextLine();
		System.out.print("id: ");
		String id = sc.nextLine();
		System.out.print("name: ");
		String name = sc.nextLine();
		System.out.print("category: ");
		String category = sc.nextLine();
		System.out.print("tags(쉼표로 구분): ");
		String[] tagArr =sc.nextLine().split(",");
		Set<String> tags = new HashSet<>();
		for(String tag : tagArr) {
			tags.add(tag.trim());
		}
		boolean success = false;
		if(type == 1) {
			success = gc.addDevice(new Camera(id, name, category, tags));
		}else if(type == 2) {
			success = gc.addDevice(new Laptop(id, name, category, tags));
		}
		if(success) {
			System.out.println("등록 완료");
		}else {
			System.out.println("중복된 ID입니다. 다시 입력해주세요.");
		}
	}
	
	public void addMember() {
		System.out.print("member id: ");
		String id = sc.nextLine();
		System.out.print("name: ");
		String name = sc.nextLine();
		
		boolean success = gc.addMember(new Member(id, name));
		if(success) {
			System.out.println("가입 완료");
		}else {
			System.out.println("중복된 ID입니다. 다시 입력해주세요.");
		}
	}
	
	public void borrow() {
		System.out.print("memberId: ");
		String memberId = sc.nextLine();
		System.out.print("itemId: ");
		String itemId = sc.nextLine();
		System.out.print("대여일(YYYY-MM-DD): ");
		String dateStr = sc.nextLine();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate date = LocalDate.parse(dateStr, formatter);
		
		try {
			Loan loan = gc.borrow(memberId, itemId, date);
			System.out.println("대여 완료: " + loan);
			System.out.println("반납 예정일: "+ loan.getDueDate());
		}catch(Exception e) {
			System.out.println("대여 실패: "+ e.getMessage());
		}
		
	}
	
	public void returnItem() {
		System.out.print("장비Id: ");
		String itemId = sc.nextLine();
		System.out.print("반납일(YYYY-MM-DD): ");
		String returnDateStr = sc.nextLine();
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate returnDate = LocalDate.parse(returnDateStr, formatter);
        
        try {
			int fee = gc.returnItem(itemId, returnDate);
			System.out.println("반납 완료. 연체료: " + fee + "원" );
		}catch(Exception e) {
			System.out.println("반납 실패: "+ e.getMessage());
		}
		
	}
	public void findByTag() {
		System.out.print("검색 태그: ");
		String tag = sc.nextLine();
		
		List<Device> result = gc.findByTag(tag);
		if(result.isEmpty()) {
			System.out.println("결과 없음");
		}else {
			result.forEach(System.out::println);
		}
		
	}
	
	public void findByKeyword() {
		System.out.print("키워드: ");
		String keyWord = sc.nextLine();
		
		List<Device> result = gc.findByKeyword(keyWord);
		if(result.isEmpty()) {
			System.out.println("조회 결과 없음");
		}else {
			result.forEach(System.out::println);
		}
		
	}
	public void printAllDevices() {
		Collection<Device> devices = gc.getAllDevices();
		devices.forEach(System.out::println);
	}
	
	public void printActiveLoans() {
		Collection<Loan> devices = gc.getActiveLoans();
		devices.forEach(System.out::println);
	}
}
