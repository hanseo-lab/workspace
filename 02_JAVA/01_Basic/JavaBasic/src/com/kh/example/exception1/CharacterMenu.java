package com.kh.example.exception1;

import java.util.Scanner;

public class CharacterMenu {

	public void menu() {
		Scanner sc = new Scanner(System.in);
		CharacterController cc = new CharacterController();

		try {
			System.out.print("문자열 : ");
			String str = sc.nextLine();

			int result = cc.countAlpha(str);
			System.out.println(str + "에 포함된 영문자 개수 : " + result);
		} catch (CharCheckException e) {
			e.printStackTrace();
		}

	}
}
