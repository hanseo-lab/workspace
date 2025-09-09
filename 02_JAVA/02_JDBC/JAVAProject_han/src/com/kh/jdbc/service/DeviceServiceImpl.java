package com.kh.jdbc.service;

import static com.kh.jdbc.common.JDBCTemplate.close;
import static com.kh.jdbc.common.JDBCTemplate.commit;
import static com.kh.jdbc.common.JDBCTemplate.getConnection;
import static com.kh.jdbc.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

import com.kh.jdbc.model.dao.DeviceDao;
import com.kh.jdbc.model.dao.RentalDao;
import com.kh.jdbc.model.vo.Device;

public class DeviceServiceImpl implements DeviceService {
	private DeviceDao deviceDao = new DeviceDao();
	private RentalDao rentalDao = new RentalDao();

	@Override
	public int insertDevice(Device d) {
		Connection conn = null;
		int result = 0;
		try {
			conn = getConnection();
			result = deviceDao.insertDevice(d, conn);
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

	@Override
	public List<Device> selectAllDevices() {
		Connection conn = null;
		List<Device> list = null;
		try {
			conn = getConnection();
			list = deviceDao.selectAllDevices(conn);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return list;
	}

	@Override
	public int updateDevice(Device d) {
		Connection conn = null;
		int result = 0;
		try {
			conn = getConnection();
			result = deviceDao.updateDevice(d, conn);
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

	@Override
	public int deleteDevice(Long devNo) {
		Connection conn = null;
		int result = 0;
		try {
			conn = getConnection();
			result = deviceDao.deleteDevice(devNo, conn);
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

	@Override
	public List<Device> searchDeviceByName(String keyword) {
		Connection conn = null;
		List<Device> list = null;
		try {
			conn = getConnection();
			list = deviceDao.searchDeviceByName(keyword, conn);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(conn);
		}
		return list;
	}

	@Override
	public List<Device> selectRentedDevices(Long custNo) {
		Connection conn = null;
		List<Device> list = null;
		
		try {
			conn = getConnection();
			list = rentalDao.selectRentdeDevicesByCustomer(custNo, conn);
		}finally {
			close(conn);
		}
		return list;
	}
}