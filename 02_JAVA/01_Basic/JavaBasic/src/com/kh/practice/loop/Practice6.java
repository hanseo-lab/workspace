package com.kh.practice.loop;

import java.util.Scanner;

public class Practice6 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("숫자 입력 : ");
        int i = sc.nextInt();  
        int n;
        
        for (i = 0; i < 10; i++) {
            if (i % 2 != 0) {  
                continue;
            }
            
            n = i * i;  
            System.out.printf("짝수 %d의 제곱은 %d 입니다.\n", i, n);
            sc.close();
        }

    }
}
