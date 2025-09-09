package com.kh.control;

import java.util.Scanner;

public class Practice2 {
	/*
	 * 성별을(m/f)(대소문자 상관 x)로 입력받아 남학생인지 여학생인지
	 * 출력하는 프로그램을 작성해라
	 * 
	 * [출력]
	 * 성별(m/f) : x
	 * 여학생입니다 / 남학생입니다 / 잘못입력하셨습니다.
	 * */
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		char gender;
		
		System.out.println("성별(m/f) : ");
		// 			문자열입력.대문자로모두변경.맨앞글자추출
		gender= sc.next().toUpperCase().charAt(0);
		//toUpperCase() : 모든 문자열 대문자로 변환변환
		//toLowerCase() : 모든 문자열 소문자로 변환
		
		switch(gender) {
		case 'F' :
			System.out.println("여학생입니다.");
			break;
		case 'M' :
			System.out.println("남학생입니다.");
			break;
		default: 
			System.out.println("잘못 입력하셨습니다.");
		}
	}

}
