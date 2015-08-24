package kr.co.javaspecialist.emp.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;

import kr.co.javaspecialist.common.db.Util;

import org.apache.log4j.Logger;


public class EmpDAO implements IEmpDAO {
	static final Logger logger = Logger.getLogger(EmpDAO.class);
	
	public int getEmpCount() {
		Connection con=null;
		int rowCount = 0;
		String sql = "select count(*) from emp";
		try {
			con = Util.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			rs.next();
			rowCount = rs.getInt(1);
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			Util.closeConnection(con);
		}
		return rowCount;
	}
	
	public ArrayList<Integer> getAllEmpno() {
		Connection con=null;
		ArrayList<Integer> listData = new ArrayList<Integer>();
		String sql = "select empno from emp";
		try {
			con = Util.getConnection();

			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				listData.add(rs.getInt("empno"));
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			Util.closeConnection(con);
		}
		return listData;
	}

	public ArrayList<EmpVO> getAllEmps() {
		ArrayList<EmpVO> lists = new ArrayList<EmpVO>();
		String sql = "select * from emp";
		Connection con = Util.getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				EmpVO vo = new EmpVO();
				vo.setEmpno(rs.getInt("empno"));
				vo.setEname(rs.getString("ename"));
				vo.setJob(rs.getString("job"));
				vo.setMgr(rs.getInt("mgr"));
				vo.setHiredate(rs.getDate("hiredate"));
				vo.setSal(rs.getDouble("sal"));
				vo.setComm(rs.getDouble("comm"));
				vo.setDeptno(rs.getInt("deptno"));
				lists.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			Util.closeConnection(con); 
		}
		return lists;
	}
	
	public ArrayList<String> getAllColumnNames() {
		ArrayList<String> columnNames = new ArrayList<String>();
		String sql = "select * from emp";
		Connection con = null;
		
		try {
			con = Util.getConnection();
			PreparedStatement stmt = con.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();
			ResultSetMetaData metaData = rs.getMetaData();
			int columnCount = metaData.getColumnCount();
			for(int i=0; i<columnCount; i++) {
				columnNames.add(metaData.getColumnName(i+1).toUpperCase());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally { 
			Util.closeConnection(con); 
		}
		
		return columnNames;
	}
	
	public int insertEmp(EmpVO vo) {
		Connection con=null;
		int count=0;
		String sql = "insert into emp (empno, ename, job, mgr, hiredate, sal, comm, deptno)" +
				" values (?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			con = Util.getConnection();

			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, vo.getEmpno());
			pstmt.setString(2, vo.getEname());
			pstmt.setString(3, vo.getJob());
			pstmt.setInt(4, vo.getMgr());
			pstmt.setDate(5, vo.getHiredate());
			pstmt.setDouble(6, vo.getSal());
			pstmt.setDouble(7, vo.getComm());
			pstmt.setInt(8, vo.getDeptno());
			count = pstmt.executeUpdate();
		} catch (SQLException e1) {
//			System.out.println(e1.getMessage());
			throw new RuntimeException(e1.getMessage());
		} finally {
			Util.closeConnection(con);
//			if(con!=null) try {con.close();} catch (SQLException e1) {	}
		}
		return count;
	}
	
	public int updateEmp(EmpVO vo) {
		int count=0;
		String sql = "update emp set ename=?, job=?, mgr=?, hiredate=?, sal=?, comm=?, deptno=? where empno=?";
		Connection con = Util.getConnection();
		try {
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getEname());
			stmt.setString(2, vo.getJob());
			stmt.setInt(3, vo.getMgr());
			stmt.setDate(4, vo.getHiredate());
			stmt.setDouble(5, vo.getSal());
			if(vo.getComm() < 0) {
				stmt.setNull(6, java.sql.Types.FLOAT);
			} else {
				stmt.setDouble(6, vo.getComm());
			}
			stmt.setInt(7, vo.getDeptno());
			stmt.setInt(8, vo.getEmpno());
			count = stmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e.getMessage());
		} finally {
			Util.closeConnection(con);
		}
		return count;
	}
	
	public int deleteEmp(int empno) {
		Connection con=null;
		int deletedRow = 0;
		String sql = "delete from emp where empno=?";
		try {
			con = Util.getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, empno);
			deletedRow = pstmt.executeUpdate();
		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			Util.closeConnection(con);
		}
		return deletedRow;
	}

}
