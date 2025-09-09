package com.kh.practice.basic;

import java.util.Scanner;

public class Practice1 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		int[] need = {1,1,2,2,2,8};
		int[] count = new int[need.length];
		for(int i=0; i<count.length; i++) {
			count[i] = sc.nextInt();
		}
		for(int i=0; i<need.length; i++) {
			System.out.print(need[i]-count[i]+ " ");
		}
		sc.close();
		/*int king = 1;
		int queen = 1;
		int rook = 2;
		int bishop= 2;
		int knight = 2;
		int pawn = 8;
		
		king = king - sc.nextInt();
		queen = queen - sc.nextInt();
		rook = rook - sc.nextInt();
		bishop = bishop - sc.nextInt();
		knight = knight - sc.nextInt();
		pawn = pawn - sc.nextInt();
		
		sc.close();
		System.out.print(king+ " " + queen+ " " +rook +" "+bishop+" "+knight+" "+pawn);
		*/
	}

}
