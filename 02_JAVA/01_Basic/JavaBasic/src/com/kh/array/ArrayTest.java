package com.kh.array;

import java.util.Scanner;

public class ArrayTest {

	public static void main(String[] args) {
		// 1. 크기가 10인 정수형 배열 생성
		int[] arr = new int[10];

		// 2. 반복문을 통해서 0번인덱스부터 마지막 인덱스까지 10으로 초기화
		for (int i = 0; i < arr.length; i++) {
			arr[i] = 10;
		}

		// 3.for-each를 통해서 모든 배열의 요소를 출력
		for (int j : arr) {
			System.out.print(j + " ");
		}
		System.out.println();
	
		// 4. 사용자에게 배열의 길이를 입력받아서 해당크기의 문자열 배열 nameArr을 생성
		Scanner sc = new Scanner(System.in);

		System.out.print("배열의 길이 : ");
		int size = sc.nextInt();
		
		String[] nameArr = new String[size];

		// 5. 사용자에게 사람의 이름을 입력받아 nameArr에 할당, nameArr의 모든 요소만큼 실행
		for (int i = 0; i < nameArr.length; i++) {
			System.out.print("이름 입력 : ");
			nameArr[i] = sc.next();
		}

		System.out.println("\n배열의 내용:");
		for (String name : nameArr) {
			System.out.println(name);
		}

		// 6. 사용자에게 이름을 하나 입력받아, nameArr에 동일한 이름이 있다면
		// 동일한 이름이 존재합니다 / 동일한 이름이 존재하지 않습니다. 출력
		System.out.print("\n이름 : ");
		String searchName = sc.next();
		
		/*
		if(nameArr[i].equals(searchName)) {
			System.out.println("동일한 이름이 존재합니다.");
			break;
		} else if(i == (nameArr.length -1)) {
			System.out.println("동일한 이름이 존재하지 않습니다.");
		}
		*/
		
		boolean found = false;
		for (String name : nameArr) {
			if (name.equals(searchName)) {
				found = true;
				break;
			}
		}

		if (found) {
			System.out.println("동일한 이름이 존재합니다.");
		} else {
			System.out.println("동일한 이름이 존재하지 않습니다.");
		}

		sc.close();
	}

}
