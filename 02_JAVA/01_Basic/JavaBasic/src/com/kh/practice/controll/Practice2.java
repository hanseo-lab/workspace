package com.kh.practice.controll;

import java.util.Scanner;

public class Practice2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.println("입력 : ");
		int a = sc.nextInt(); 
		int b = sc.nextInt();
		int c = sc.nextInt();
		int max = a;
		
		if(a==b && b==c) {
			System.out.println(10000+(a*1000));
		}else if(a==b && a!=c){
			System.out.println(1000 +a*100);
		}else if(b==c && a!=b) {
			System.out.println(1000+b*100);
		}else if(a==c && a!=b){
			System.out.println(1000+b*100);
		}else {
			if(max < b) {
				max = b;
			}if(max < c) {
				max = c;
			}System.out.println(max*100);
		}   sc.close();
	}

}
