package com.kh.jdbc.view;

import java.util.List;
import java.util.Scanner;

import com.kh.jdbc.controller.CustomerController;
import com.kh.jdbc.controller.DeviceController;
import com.kh.jdbc.controller.RentalController;
import com.kh.jdbc.model.vo.Customer;
import com.kh.jdbc.model.vo.Device;

public class MainMenu {
	private Scanner sc;
	private DeviceController deviceController;
	private CustomerController customerController;
	private RentalController rentalController;
	private Customer loginCustomer = null;

	public MainMenu() {
	}

	public MainMenu(Scanner sc, DeviceController deviceController, CustomerController customerController,
			RentalController rentalController) {
		this.sc = sc;
		this.deviceController = deviceController;
		this.customerController = customerController;
		this.rentalController = rentalController;
	}

	public void startMenu() {
		while (true) {
			System.out.println("===== 의료기기 제품 관리 프로그램 =====");
			System.out.println("1. 로그인");
			System.out.println("2. 회원가입");
			System.out.println("3. 프로그램 종료");

			System.out.print("메뉴 입력 : ");
			int sel = sc.nextInt();
			sc.nextLine();

			switch (sel) {
			case 1:
				login();
				break;
			case 2:
				insertCustomer();
				break;
			case 3:
				System.out.println("프로그램을 종료합니다.");
				return;
			default:
				System.out.println("잘못 입력하셨습니다. 다시 입력하세요.");
			}
			System.out.println();
		}
	}

	public void managerMenu() {
		while (true) {
			System.out.println("===== " + loginCustomer.getCustName() + "님 의료기기 제품 메뉴 =====");
			System.out.println("1. 의료기기 제품 추가");
			System.out.println("2. 의료기기 제품 정보 수정");
			System.out.println("3. 의료기기 제품 삭제");
			System.out.println("4. 의료기기 제품 전체 조회");
			System.out.println("5. 의료기기 제품 검색");
			//System.out.println("6. 대여중인 의료기기 제품 조회");
			System.out.println("6. 의료기기 제품 대여");
			System.out.println("7. 의료기기 제품 반납");
			System.out.println("8. 회원 전체 조회");
			System.out.println("9. 로그아웃");

			System.out.print("메뉴 입력 : ");
			int sel = sc.nextInt();
			sc.nextLine();

			switch (sel) {
			case 1:
				insertDevice();
				break;
			case 2:
				updateDevice();
				break;
			case 3:
				deleteDevice();
				break;
			case 4:
				deviceController.selectAllDevices();
				break;
			case 5:
				searchDeviceByKeyword();
				break;
			//case 6:
			//	viewRentedDevices();
			//	break;
			case 6:
				rentalDevice();
			case 7:
				returnDevice();
				break;
			case 8:
				customerController.selectAllCustomer();
				break;
			case 9:
				System.out.println("프로그램을 종료합니다.");
				return;
			default:
				System.out.println("잘못 입력하셨습니다. 다시 입력하세요.");
			}
			System.out.println();
		}
	}

	public void customerMenu() {
		while (true) {
			System.out.println("===== " + loginCustomer.getCustName() + "님 의료기기 제품 메뉴 =====");
			System.out.println("1. 의료기기 제품 전체 조회");
			System.out.println("2. 의료기기 제품 검색");
			System.out.println("3. 의료기기 제품 대여");
			System.out.println("4. 의료기기 제품 반납");
			System.out.println("5. 로그아웃");

			System.out.print("메뉴 입력 : ");
			int sel = sc.nextInt();
			sc.nextLine();

			switch (sel) {
			case 1:
				deviceController.selectAllDevices();
				break;
			case 2:
				searchDeviceByKeyword();
				break;
			case 3:
				rentalDevice();
				break;
			case 4:
				returnDevice();
				break;
			case 5:
				System.out.println("프로그램을 종료합니다.");
				return;
			default:
				System.out.println("잘못 입력하셨습니다. 다시 입력하세요.");
			}
			System.out.println();
		}
	}

	public void login() {
		System.out.println("\n===== 로그인 =====");
		System.out.print("아이디 : ");
		String custId = sc.nextLine();
		System.out.print("비밀번호 : ");
		String custPw = sc.nextLine();

		loginCustomer = customerController.loginCustomer(custId, custPw);

		if (loginCustomer != null) {
			displaySuccess(loginCustomer.getCustName() + "님 환영합니다!");
			if ("MANAGER".equals(loginCustomer.getRole())) {
				managerMenu();
			} else {
				customerMenu();
			}
		} else {
			displayFail("로그인에 실패했습니다. 아이디와 비밀번호를 다시 확인해주세요");
		}
	}

	public void insertCustomer() {
		System.out.println("\n===== 회원가입 =====");
		System.out.print("아이디 : ");
		String custId = sc.nextLine();
		System.out.print("비밀번호 : ");
		String custPw = sc.nextLine();
		System.out.print("이름 : ");
		String custName = sc.nextLine();
		System.out.print("전화번호 : ");
		String custPhone = sc.nextLine();
		System.out.print("주소 : ");
		String custAddress = sc.nextLine();

		customerController.insertCustomer(custId, custPw, custName, custPhone, custAddress);
	}

	public void insertDevice() {
		System.out.println("\n===== 의료기기 제품 추가 =====");
		System.out.print("카테고리 : ");
		String category = sc.nextLine();
		System.out.print("제품명 : ");
		String devName = sc.nextLine();
		System.out.print("가격 : ");
		String price = sc.nextLine();
		deviceController.insertDevice(category, devName, price);
	}

	public void deleteDevice() {
		System.out.println("\n===== 의료기기 제품 삭제 =====");
		System.out.print("삭제할 제품번호 : ");
		Long devNo = sc.nextLong();
		sc.nextLine();
		deviceController.deleteDevice(devNo);
	}

	public void rentalDevice() {
		System.out.println("\n===== 의료기기 제품 대여 =====");

		deviceController.selectAllDevices();

		System.out.print("대여할 제품 번호 : ");
		Long devNo = sc.nextLong();
		sc.nextLine();

		Long custNo = loginCustomer.getCustNo();

		rentalController.rentDevice(custNo, devNo);
	}

	public void viewRentedDevices() {
		List<Device> rentedDevices = deviceController.selectRentedDevices(loginCustomer.getCustNo());
		if (rentedDevices.isEmpty()) {
			displayNoData("대여 중인 기기가 없습니다.");
		} else {
			displayList(rentedDevices, "대여 중인 기기 목록");
		}
	}

	public void updateDevice() {
		System.out.println("\n===== 의료기기 제품 정보 변경 =====");
		System.out.print("정보를 변경할 제품번호 : ");
		Long devNo = sc.nextLong();
		sc.nextLine();
		System.out.print("변경할 가격 : ");
		String price = sc.nextLine();
		deviceController.updateDevice(devNo, price);
	}

	public void searchDeviceByKeyword() {
		System.out.println("\n===== 키워드로 제품 검색 =====");
		System.out.print("키워드 : ");
		String keyword = sc.nextLine();
		deviceController.searchDeviceByKeyword(keyword);
	}

	public void printAlllCustomerList(List<Customer> list) {
		if (list.isEmpty()) {
			System.out.println("회원이 없습니다.");
		} else {
			System.out.println("\n===== 회원 목록 =====");
			for (Customer c : list) {
				System.out.println(c);
			}
		}
	}

	public void returnDevice() {
		System.out.println("\n===== 제품 반납 =====");

		List<Device> rentedDevices = deviceController.selectRentedDevices(loginCustomer.getCustNo());

		if (rentedDevices.isEmpty()) {
			displayNoData("대여 중인 기기가 없습니다.");
			return;
		}

		displayList(rentedDevices, "대여 중인 기기 목록");

		System.out.print("반납할 제품 번호 : ");
		Long devNo = sc.nextLong();
		sc.nextLine();

		rentalController.returnDevice(loginCustomer.getCustNo(), devNo);
	}

	public static void displaySuccess(String msg) {
		System.out.println("\n서비스 요청 성공 : " + msg);
	}

	public static void displayFail(String msg) {
		System.out.println("\n서비스 요청 실패 : " + msg);
	}

	public static void displayNoData(String msg) {
		System.out.println("\n" + msg);
	}

	public static void displayList(List<Device> list, String title) {
		System.out.println("\n========== " + title + " ==========");
		for (Device d : list) {
			System.out.println(d);
		}
	}
}