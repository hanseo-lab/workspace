package com.kh.review.oop6;

import com.kh.example.oop6.Student;

public class StudentMenu {
	private StudentController ssm= new StudentController();
	
	public StudentMenu() {
		System.out.println("==========학생 정보 출력==========");
		Student[] sArr = ssm.printStudent();
		for(Student s: sArr) {
			if(s == null) { 
				break;
			}
			System.out.println(s.inform());
		}
		System.out.println();
		System.out.println("==========학생 성적 출력==========");
		double[] score = ssm.avgScore();
		System.out.println("학생 점수 합계 : " + (int)score[0]);
		System.out.println("학생 점수 평균 : " + score[1]);
	
		System.out.println();
		System.out.println("==========성적 결과 출력==========");
		int cutLine = ssm.getCUT_LINE();
		for(Student s: sArr) {
			String result = (s.getScore() >= cutLine) ? "통과" : "재시험 대상";
			System.out.println(s.getName()+"학생은 "+ result+"입니다.");
		}	
	}
}
