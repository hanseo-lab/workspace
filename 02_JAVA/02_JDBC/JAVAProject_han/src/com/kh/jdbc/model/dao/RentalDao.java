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

import com.kh.jdbc.model.vo.Device;
import com.kh.jdbc.model.vo.Rental;

public class RentalDao {
	private Properties prop = new Properties();

	public RentalDao() {
		try {
			prop.loadFromXML(new FileInputStream("resources/rental-query.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int rentDevice(Rental r, Connection conn) throws SQLException {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertRental");

		try {
			pstmt = conn.prepareStatement(sql);
			// 바인딩 순서 수정: DEV_NO를 먼저, CUST_NO를 나중에 바인딩합니다.
			pstmt.setLong(1, r.getDevNo());
			pstmt.setLong(2, r.getCustNo());
			result = pstmt.executeUpdate();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int returnDevice(Rental r, Connection conn) throws SQLException {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateRentalToReturned");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, r.getCustNo());
			pstmt.setLong(2, r.getDevNo());
			result = pstmt.executeUpdate();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int checkDevice(Long devNo, Connection conn) throws SQLException {
		int count = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("checkRentalStatus");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, devNo);

			rset = pstmt.executeQuery();
			if (rset.next()) {
				count = rset.getInt(1);
			}
		} finally {
			close(rset);
			close(pstmt);
		}
		return count;
	}
	
	public List<Device> selectRentdeDevicesByCustomer(Long custNo, Connection conn){
		List<Device> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectRentedDevices");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, custNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				Device d = new Device();
				d.setDevNo(rset.getLong("DEV_NO"));
				d.setCategory(rset.getString("CATEGORY"));
				d.setDevName(rset.getString("DEV_NAME"));
				d.setPrice(rset.getInt("PRICE"));
				d.setArrivalDate(rset.getTimestamp("ARRIVAL_DATE").toLocalDateTime());
				list.add(d);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return list;
		
	}
}
