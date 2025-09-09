package com.kh.jdbc.service;

import static com.kh.jdbc.common.JDBCTemplate.close;
import static com.kh.jdbc.common.JDBCTemplate.commit;
import static com.kh.jdbc.common.JDBCTemplate.getConnection;
import static com.kh.jdbc.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.sql.SQLException;

import com.kh.jdbc.model.dao.RentalDao;
import com.kh.jdbc.model.vo.Rental;

public class RentalService {
	private RentalDao rentalDao = new RentalDao();

	public int rentDevice(Rental r) {
		Connection conn = null;
		int result = 0;

		try {
			conn = getConnection();
			int activeRentals = rentalDao.checkDevice(r.getDevNo(), conn);

			if (activeRentals > 0) {
				return -1;
			}

			result = rentalDao.rentDevice(r, conn);

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

	public int returnDevice(Rental r) {
		Connection conn = null;
		int result = 0;
		try {
			conn = getConnection();
			result = rentalDao.returnDevice(r, conn);

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
}