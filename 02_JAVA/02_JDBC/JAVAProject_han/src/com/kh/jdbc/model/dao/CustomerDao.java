package com.kh.jdbc.model.dao;

import static com.kh.jdbc.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.kh.jdbc.model.vo.Customer;

public class CustomerDao {
	private Properties prop = new Properties();

	public CustomerDao() {
		try {
			prop.loadFromXML(new FileInputStream("resources/customer-query.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public List<Customer> selectAllCustomers(Connection conn) throws SQLException {
		List<Customer> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectAllCustomers");

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Customer customer = new Customer();
				customer.setCustNo(rset.getLong("CUST_NO"));
				customer.setCustId(rset.getString("CUST_ID"));
				customer.setCustPw(rset.getString("CUST_PW"));
				customer.setCustName(rset.getString("CUST_NAME"));
				customer.setCustPhone(rset.getString("CUST_PHONE"));
				customer.setCustAddress(rset.getString("CUST_ADDRESS"));
				customer.setCustJoinDate(rset.getTimestamp("CUST_JOINDATE").toLocalDateTime());
				customer.setRole(rset.getString("ROLE"));
				list.add(customer);
			}
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int insertCustomer(Customer c, Connection conn) throws SQLException {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertCustomers");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, c.getCustId());
			pstmt.setString(2, c.getCustPw());
			pstmt.setString(3, c.getCustName());
			pstmt.setString(4, c.getCustPhone());
			pstmt.setString(5, c.getCustAddress());
			result = pstmt.executeUpdate();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public Customer loginCustomer(String custId, String custPw, Connection conn) throws SQLException {
		Customer loginUser = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("loginCustomers");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, custId);
			pstmt.setString(2, custPw);
			rset = pstmt.executeQuery();

			if (rset.next()) {
				loginUser = new Customer();
				loginUser.setCustNo(rset.getLong("CUST_NO"));
				loginUser.setCustId(rset.getString("CUST_ID"));
				loginUser.setCustPw(rset.getString("CUST_PW"));
				loginUser.setCustName(rset.getString("CUST_NAME"));
				loginUser.setCustPhone(rset.getString("CUST_PHONE"));
				loginUser.setCustAddress(rset.getString("CUST_ADDRESS"));
				loginUser.setCustJoinDate(rset.getTimestamp("CUST_JOINDATE").toLocalDateTime());
				loginUser.setRole(rset.getString("ROLE"));
			}
		} finally {
			close(rset);
			close(pstmt);
		}
		return loginUser;
	}
}