package com.kh.jsp.service;

import static com.kh.jsp.common.JDBCTemplate.close;
import static com.kh.jsp.common.JDBCTemplate.commit;
import static com.kh.jsp.common.JDBCTemplate.getConnection;
import static com.kh.jsp.common.JDBCTemplate.rollback;

import java.sql.Connection;

import com.kh.jsp.model.dao.MemberDao;
import com.kh.jsp.model.vo.Member;

public class BoardService {
	public int insertMember(Member m) {
		Connection conn = getConnection();
		
		int result = new MemberDao().insertBoard(b, conn);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		
		return result;
	}

}
