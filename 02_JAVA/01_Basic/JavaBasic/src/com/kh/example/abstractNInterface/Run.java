package com.kh.example.abstractNInterface;

public class Run {

	public static void main(String[] args) {
		PhoneController controller = new PhoneController();
		String [] infos = controller.method();
		
		for(String info : infos) {
			System.out.println(info);
			System.out.println();
		}
		

	}

}
