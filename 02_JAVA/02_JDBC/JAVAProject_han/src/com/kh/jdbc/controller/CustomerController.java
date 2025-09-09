package com.kh.jdbc.controller;

import java.util.List;

import com.kh.jdbc.model.vo.Customer;
import com.kh.jdbc.service.CustomerService;
import com.kh.jdbc.view.MainMenu;

public class CustomerController {
    private CustomerService customerService = new CustomerService();
    private MainMenu mainMenu = new MainMenu();
    
    public void selectAllCustomer() {
        List<Customer> list = customerService.selectAllCustomerList();
        
        if (list.isEmpty()) {
            mainMenu.displayNoData("조회된 회원이 없습니다.");
        } else {
            mainMenu.printAlllCustomerList(list);
        }
    }
    
    public void insertCustomer(String custId, String custPw, String custName, String custPhone, String custAddress) {
        Customer c = new Customer(custId, custPw, custName, custPhone, custAddress);
        
        int result = customerService.insertCustomer(c);
        
        if (result > 0) {
            mainMenu.displaySuccess("회원가입에 성공했습니다.");
        } else {
            mainMenu.displayFail("회원가입에 실패하였습니다.");
        }
    }
    
    public Customer loginCustomer(String custId, String custPw) {
        return customerService.loginCustomer(custId, custPw);
    }
}