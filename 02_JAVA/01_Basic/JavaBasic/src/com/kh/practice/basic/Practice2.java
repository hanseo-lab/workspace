package com.kh.practice.basic;

import java.util.Scanner;

public class Practice2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String str = sc.next();
		boolean check = true;
		for (int i = 0, j = str.length() - 1; i < j; i++, j--) {
			if (str.charAt(i) != str.charAt(j)) {
				check = false;
				break;
			}
		}
		System.out.println(check ? 1 : 0);

		sc.close();
	}

}
