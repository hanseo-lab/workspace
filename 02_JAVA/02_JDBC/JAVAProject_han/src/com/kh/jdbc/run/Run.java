package com.kh.jdbc.run;

import java.util.Scanner;

import com.kh.jdbc.controller.CustomerController;
import com.kh.jdbc.controller.DeviceController;
import com.kh.jdbc.controller.RentalController;
import com.kh.jdbc.service.DeviceServiceImpl;
import com.kh.jdbc.view.MainMenu;

public class Run {

	public static void main(String[] args) {
		CustomerController customerController = new CustomerController();
		DeviceController deviceController = new DeviceController(new DeviceServiceImpl());
		RentalController rentalController = new RentalController();

		new MainMenu(new Scanner(System.in), deviceController, customerController, rentalController).startMenu();
	}
}
