package com.kh.practice.loop;

import java.util.Scanner;

public class Practice1 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
                int n = sc.nextInt();
        if (n >=1 && n <= 9) {
        	for(int i = 1; i <= 9; i++) {
                System.out.println(n + " * " + i + " = " + (n * i));
            }
        }else {
        	System.out.println("잘못입력하셨습니다.");
        }
        sc.close(); 
    }

}
