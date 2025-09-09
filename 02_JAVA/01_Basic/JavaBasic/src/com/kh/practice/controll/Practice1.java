package com.kh.practice.controll;

import java.util.Scanner;

public class Practice1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("점수를 입력하세요 : ");
		int num = sc.nextInt();
		String grade;
		
		if(num >= 90 && num <=100) {
			grade = "A";
		}else if(num >= 80) {
			grade = "B";
		}else if(num >= 70) {
			grade =  "C";
		}else if(num >= 60) {
			grade = "D";
		}else {
			grade = "F";
		}
		
		System.out.println("당신의 성적은 " + grade +"입니다.");
		sc.close();
	}

}
