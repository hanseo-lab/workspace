package com.kh.review.inherit;

import java.util.Scanner;

public class PersonMenu {
	private Scanner sc = new Scanner(System.in);
	private PersonController pc = new PersonController();

	public void mainMenu() {
		int[] count = pc.personCount();
		System.out.println("학생은 최대 3명까지 저장할 수 있습니다.");
		System.out.printf("현재 저장된 학생은 %d명입니다.\n", count[0]);
		System.out.println("사원은 최대 10명까지 저장할 수 있습니다.");
		System.out.printf("현재 저장된 사원은 %d명입니다.\n", count[1]);

		System.out.println("1. 학생 메뉴");
		System.out.println("2. 사원 메뉴");
		System.out.println("9. 끝내기");
		int sel = sc.nextInt();
		sc.nextLine();

		switch (sel) {
		case 1: studentMenu(); break;
		case 2: employeeMenu(); break;
		case 9: System.out.println("종료합니다."); return;
		default: System.out.println("잘못된 번호입니다. 다시 입력해주세요.");
		}
	}

	public void studentMenu() {
		System.out.println("1. 힉셍 추가");
		System.out.println("2. 학생 보기");
		System.out.println("9. 매인으로");
		int sel = sc.nextInt();
		sc.nextLine();

		switch (sel) {
		case 1: insertStudent(); break;
		case 2: printStudent(); break;
		case 9: System.out.println("종료합니다."); return;
		default: System.out.println("잘못된 번호입니다. 다시 입력해주세요.");
		}
	}

	public void employeeMenu() {
		System.out.println("1. 사원 추가");
		System.out.println("2. 사원 보기");
		System.out.println("9. 매인으로");
		int sel = sc.nextInt();
		sc.nextLine();

		switch (sel) {
		case 1: insertEmployee(); break;
		case 2: printEmployee(); break;
		case 9: System.out.println("종료합니다."); return;
		default: System.out.println("잘못된 번호입니다. 다시 입력해주세요.");
		}
	}

	public void insertStudent() {
		int[] count = pc.personCount();
		if(count[0] > 3) {
			System.out.println("학생을 담을 수 있는 공간이 꽉 찼기 때문에 학생 추가를 종료하고 학생 메뉴로 돌아갑니다.");
		}
		while(true){
			System.out.print("학생 이름 : ");
			String n = sc.next();
			System.out.print("학생 나이 : ");
			int a = sc.nextInt();
			System.out.print("학생 키 : ");
			double h = sc.nextDouble();
			System.out.print("학생 몸무게 : ");
			double w = sc.nextDouble();
			System.out.print("학생 학년 : ");
			int g = sc.nextInt();
			System.out.print("학생 전공 : ");
			String m = sc.next();
			sc.hasNextLine();
			
			pc.insertStudent(n, a, h, w, g, m);
			
			if(count[0] > 3) {
				System.out.println("학생을 담을 수 있는 공간이 꽉 찼기 때문에 학생 추가를 종료하고 학생 메뉴로 돌아갑니다.");
				break;
			}	
			System.out.print("그만하시려면 N(또는 n), 이어하시려면 아무 키나 누르세요 : ");
			char answer = sc.next().toLowerCase().charAt(0);
			if(answer == 'n') {
				return;
			}
		}
	}

	public void printStudent() {
		Student[] stArr = pc.printStudent();
		for(Student s : stArr) {
			if(s != null) {
				System.out.println(s);
				break;
			}
		}
	}

	public void insertEmployee() {
		int[] count = pc.personCount();
		if(count[1] > 10) {
			System.out.println("사원을 담을 수 있는 공간이 꽉 찼기 때문에 사원 추가를 종료하고 사원 메뉴로 돌아갑니다.");
		}
		while(true){
			System.out.print("사원 이름 : ");
			String n = sc.next();
			System.out.print("사원 나이 : ");
			int a = sc.nextInt();
			System.out.print("사원 키 : ");
			double h = sc.nextDouble();
			System.out.print("사원 몸무게 : ");
			double w = sc.nextDouble();
			System.out.print("사원 급여 : ");
			int s = sc.nextInt();
			System.out.print("사원 부서 : ");
			String d = sc.next();
			sc.hasNextLine();
			
			pc.insertEmployee(n, a, h, w, s, d);
			
			if(count[1] > 10) {
				System.out.println("사원을 담을 수 있는 공간이 꽉 찼기 때문에 사원 추가를 종료하고 사원 메뉴로 돌아갑니다.");
				break;
			}
			System.out.print("그만하시려면 N(또는 n), 이어하시려면 아무 키나 누르세요 : ");
			char answer = sc.next().toLowerCase().charAt(0);
			if(answer == 'n') {
				return;
			}
		}
	}

	public void printEmployee() {
		Employee[] empArr = pc.printEmployee();
		for(Employee e : empArr) {
			if(e != null) {
				System.out.println(e);
				break;
			}
		}
	}
}
