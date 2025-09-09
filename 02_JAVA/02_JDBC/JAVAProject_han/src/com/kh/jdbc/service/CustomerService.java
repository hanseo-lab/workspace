package com.kh.jdbc.service;

import static com.kh.jdbc.common.JDBCTemplate.close;
import static com.kh.jdbc.common.JDBCTemplate.commit;
import static com.kh.jdbc.common.JDBCTemplate.getConnection;
import static com.kh.jdbc.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.kh.jdbc.model.dao.CustomerDao;
import com.kh.jdbc.model.vo.Customer;


public class CustomerService {
	private CustomerDao customerDao = new CustomerDao();
	
	public List<Customer> selectAllCustomerList() {
		Connection conn = null;
		List<Customer> list = null;
		try {
			conn = getConnection();
			list = customerDao.selectAllCustomers(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return list;
	}

	public int insertCustomer(Customer c) {
		Connection conn = null;
		int result = 0;
		try {
			conn = getConnection();
			result = customerDao.insertCustomer(c, conn);
			if (result > 0) {
				commit(conn);
			} else {
				rollback(conn);
			}
		} catch (SQLException e) {
			rollback(conn);
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return result;
	}
	
	public Customer loginCustomer(String custId, String custPw) {
		Connection conn = null;
		Customer loginUser = null;
		try {
			conn = getConnection();
			loginUser = customerDao.loginCustomer(custId, custPw, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return loginUser;
	}
}