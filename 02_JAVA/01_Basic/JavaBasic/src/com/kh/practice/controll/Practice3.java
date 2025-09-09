package com.kh.practice.controll;

import java.util.Scanner;

public class Practice3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("나이를 입력하세요 : ");
		int age = sc.nextInt();
		System.out.println("요일를 입력하세요 : ");
		String day = sc.next();
		String grade;
		String wee;
		int fee;
		
		if(age >= 0 && age <= 12) {
			grade = "어린이";
			fee = 5000;
		}else if(age <= 18) {
			grade = "청소년";
			fee = 7000;
		}else {
			grade = "성인";
			fee = 10000;
		}
		
		switch(day) {
		case "토":
		case "일":
			fee = (int)(fee * 0.8);
			wee = "(주말 할인 적용)";
		break;
		default: 
			wee = " ";
		}
		
		System.out.println(grade+" 요금입니다." + wee);
		System.out.println("최종 요금은 " + fee +"원입니다.");
		
		sc.close();
	}

}
