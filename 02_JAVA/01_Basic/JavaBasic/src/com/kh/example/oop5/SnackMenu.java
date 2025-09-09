package com.kh.example.oop5;

import java.util.Scanner;

public class SnackMenu {
	private Scanner sc = new Scanner(System.in);
	private SnackController scr = new SnackController();
	
	public void menu() {
		System.out.println("스낵류를 입력하세요.");
		System.out.print("종류 : ");
		String kind = sc.nextLine();
		
		System.out.print("이름 : ");
		String name = sc.nextLine();
		
		System.out.print("맛 : ");
		String flavor = sc.nextLine();
		
		System.out.print("개수 : ");
		int numOf = sc.nextInt();
		
		System.out.print("가격 : ");
		int price = sc.nextInt();
		sc.nextLine(); //개행 제거
		
		System.out.println(scr.saveData(kind, name, flavor, numOf, price));
		
		
		System.out.println("저장한 정보를 확인하시겠습니까?(y/n) : ");
		String answer = sc.nextLine().toLowerCase();
		
		if(answer.equals("y")) {
			System.out.println(scr.confirmData());
		}
	}
}
