package com.kh.example.poly1;

import java.util.Scanner;

public class AnimalManager {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		Animal[] animals = new Animal[5];
		
		/*
		for(int i=0; i<animals.length; i++) {
			System.out.print("1. 강아지 2. 고양이 : ");
			int num = sc.nextInt();
			
			System.out.print("이름 : ");
			String name =  sc.next();
			
			System.out.print("나이 : ");
			int age =  sc.nextInt();
			
			if(num == 1) {
				System.out.print("견종 : ");
				String breed = sc.next();
				animals[i] = new Dog(name, age, breed);
			} else {
				System.out.print("색상 : ");
				String color = sc.next();
				animals[i] = new Dog(name, age, color);
			}
		}
		*/
		
		animals[0] = new Dog("뚱이", 5, "진돗개");
		animals[1] = new Cat("초코", 3, "검정색");
		animals[2] = new Dog("라떼", 1, "삽살개");
		animals[3] = new Dog("달콩이", 7, "진돗개");
		animals[4] = new Cat("설탕", 2, "흰색");
		 
		for (Animal a : animals) {
			a.speak();

			if (a instanceof Dog) {
				Dog dog = (Dog) a;
				System.out.println("이 개의 견종은 "+ dog.getBreed()+ "입니다.");
			} else if (a instanceof Cat) {
				Cat cat = (Cat) a;
				System.out.println("이 고양이의 색상은 " + cat.getColor() + "입니다.");
			}
		}
		sc.close();
	}

}
