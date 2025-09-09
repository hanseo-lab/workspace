package com.kh.practice.array;

import java.util.Scanner;

public class Practice3 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt(); 
        int m = sc.nextInt(); 
        int[] basket = new int[n]; 
        
        for(int a = 0; a < m; a++) {
            int i = sc.nextInt(); // i번 바구니부터
            int j = sc.nextInt(); // j번 바구니까지
            int k = sc.nextInt(); // k가 적힌 공
           
            for(int b = i - 1; b < j; b++) {
                basket[b] = k;
            }
        }

        for(int num : basket) {
            System.out.print(num + " ");
        }
        
        sc.close();
    }
}
