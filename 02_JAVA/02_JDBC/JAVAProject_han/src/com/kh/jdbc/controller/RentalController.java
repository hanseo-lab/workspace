package com.kh.jdbc.controller;

import com.kh.jdbc.model.vo.Rental;
import com.kh.jdbc.service.RentalService;
import com.kh.jdbc.view.MainMenu;

public class RentalController {
	private RentalService rentalService = new RentalService();
	private MainMenu mainMenu = new MainMenu();

	public void rentDevice(Long custNo, Long devNo) {
		Rental r = new Rental();
		r.setCustNo(custNo);
		r.setDevNo(devNo);

		int result = rentalService.rentDevice(r);

		if (result > 0) {
			mainMenu.displaySuccess("대여 성공");
		} else if (result == -1) {
			mainMenu.displayFail("해당 제품은 이미 대여 중입니다.");
		} else {
			mainMenu.displayFail("대여 실패");
		}
	}

	public void returnDevice(Long custNo, Long devNo) {
		Rental r = new Rental();
		r.setCustNo(custNo);
		r.setDevNo(devNo);

		int result = rentalService.returnDevice(r);

		if (result > 0) {
			mainMenu.displaySuccess("반납 성공");
		} else {
			mainMenu.displayFail("반납 실패");
		}
	}
}