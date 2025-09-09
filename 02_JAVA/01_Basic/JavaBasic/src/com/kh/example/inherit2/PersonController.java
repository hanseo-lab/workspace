package com.kh.example.inherit2;

public class PersonController {
	private Student[] s = new Student[3];
	private Employee[] e = new Employee[10];

	// private int studentIndex = 0;
	// private int employeeIndex = 0;

	public int[] personCount() {
		// 학생수
		int stCount = 0, empCount = 0;
		for (Student st : s) {
			if (st == null) {
				break;
			}
			stCount++;
		}
		for (Employee emp : e) {
			if (emp == null) {
				break;
			}
			empCount++;
		}

		// int[] countArr = {stCount, empCount};
		return new int[] { stCount, empCount };
	}

	public void insertStudent(String name, int age, double height, double weight, int grade, String major) {
		// 0부터 하나식 인덱스값을 검사해 빈공간(null)을 찾아서 학생을 추가.
		for (int i = 0; i < s.length; i++) {
			if (s[i] == null) {
				s[i] = new Student(name, age, height, weight, grade, major);
				break;
			} else {
				System.out.println("학생을 담을 공간이 꽉 찼기 땨문에 학생 추가를 종료하고 학생 메뉴로 돌아갑니다.");
			}
		}
	}

	public Student[] printStudent() {
		return s;
	}

	public void insertEmployee(String name, int age, double height, double weight, int salary, String dept) {
		for (int i = 0; i < e.length; i++) {
			if (e[i] == null) {
				e[i] = new Employee(name, age, height, weight, salary, dept);
				break;
			} else {
				System.out.println("사원을 담을 공간이 꽉 찼기 땨문에 학생 추가를 종료하고 사원 메뉴로 돌아갑니다.");
			}
		}
	}

	public Employee[] printEmployee() {
		return e;
	}
}
