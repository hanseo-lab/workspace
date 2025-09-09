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

public class DeviceDao {
	private Properties prop = new Properties();

	public DeviceDao() {
		try {
			prop.loadFromXML(new FileInputStream("resources/device-query.xml"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int insertDevice(Device d, Connection conn) throws SQLException {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("insertDevice");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, d.getCategory());
			pstmt.setString(2, d.getDevName());
			pstmt.setInt(3, d.getPrice());
			result = pstmt.executeUpdate();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int deleteDevice(Long devNo, Connection conn) throws SQLException {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("deleteDevice");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setLong(1, devNo);
			result = pstmt.executeUpdate();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public int updateDevice(Device d, Connection conn) throws SQLException {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("updateDevice");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, d.getPrice());
			pstmt.setLong(2, d.getDevNo());
			result = pstmt.executeUpdate();
		} finally {
			close(pstmt);
		}
		return result;
	}

	public List<Device> searchDeviceByName(String keyword, Connection conn) throws SQLException {
		List<Device> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("searchDeviceByName");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, keyword);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Device d = new Device();
				d.setDevNo(rset.getLong("DEV_NO"));
				d.setCategory(rset.getString("CATEGORY"));
				d.setDevName(rset.getString("DEV_NAME"));
				d.setPrice(rset.getInt("PRICE"));
				d.setArrivalDate(rset.getTimestamp("ARRIVAL_DATE").toLocalDateTime());
				list.add(d);
			}
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public List<Device> selectAllDevices(Connection conn) throws SQLException {
		List<Device> list = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String sql = prop.getProperty("selectDeviceList");

		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				Device d = new Device();
				d.setDevNo(rset.getLong("DEV_NO"));
				d.setCategory(rset.getString("CATEGORY"));
				d.setDevName(rset.getString("DEV_NAME"));
				d.setPrice(rset.getInt("PRICE"));
				d.setArrivalDate(rset.getTimestamp("ARRIVAL_DATE").toLocalDateTime());
				list.add(d);
			}
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}
}