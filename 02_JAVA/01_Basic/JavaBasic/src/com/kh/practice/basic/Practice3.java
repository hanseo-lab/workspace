package com.kh.practice.basic;

import java.util.Scanner;

public class Practice3 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		String str = sc.next();
		str = str.toUpperCase();
		int[] count = new int[26];
		
		for(int i=0; i<str.length(); i++) {
			int num = str.charAt(i) -'A';
			count[num]++;
		}
		sc.close();
		int max=0;
		char answer = '?';
		for(int i=0; i<count.length; i++) {
			if(max<count[i]) {
				max=count[i];
				answer = (char)(i+ 'A');
			}else if(max==count[i]) {
				answer ='?';
			}
		}
		System.out.println(answer);
	}

}
