package kr.co.javaspecialist.emp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.javaspecialist.common.db.Util;


public class DeptDAO implements IDeptDAO {

	public DeptDAO() {
	}
	
	public ArrayList<DeptVO> getAllDepts() {
		Connection con=null;
		ArrayList<DeptVO> listData = new ArrayList<DeptVO>();
		String sql = "select * from dept";
		try {
			con = Util.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				DeptVO vo = new DeptVO(rs.getInt("deptno"), rs.getString("dname"), rs.getString("loc"));
				listData.add(vo);
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			if(con!=null) try {con.close();} catch (SQLException e1) {	}
		}
		return listData;
	}

}//end class
