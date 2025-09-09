package com.kh.operator;

import java.util.Scanner;

public class Practice1 {
	/*
	 * 키보드로 가로, 세로값을 실수형을 입력받아 사각형의 면적과 둘레를 계산하여 출력
	 * 면적 : 가로*세로
	 * 둘레 : (가로 + 세로) * 2
	 * 
	 * [출력]
	 * 가로 : (키보드로 입력)
	 * 세로 : (키보드로 입력)
	 * 
	 * 면적 : ~
	 * 둘렉 : ~
	 * +소수점2번째 자리까지 출력
	 * */
	
	public static void main(String[] args) {
		 Scanner sc = new Scanner(System.in);
	        
	        float width, height;
	        
	        System.out.print("가로 : ");
	        width = sc.nextFloat();
	        
	        System.out.print("세로 : ");
	        height = sc.nextFloat();
	        
	        System.out.printf("면적 : %.2f\n", width * height);
	        System.out.printf("둘레 : %.2f\n", (width + height) * 2);
	}
	
}
