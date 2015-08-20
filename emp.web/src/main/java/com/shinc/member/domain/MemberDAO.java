package com.shinc.member.domain;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {

	private Connection getConnection() {
	    DataSource ds = null; //javax.sql.*
	    Connection con = null;
	    try{
	        Context ctx = new InitialContext();
	        ds = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle");
	        con = ds.getConnection();
	    }catch(Exception e){
	        e.printStackTrace();
	    }
	    return con;
	}

	private void closeConnection(Connection con) {
		if(con!=null) {
			try { con.close(); }catch(Exception e) {}
		}
 	}
	
	public void insert(MemberVO member) {
		Connection con = null;
		try {
			con = getConnection();
			//1. 쿼리 작성
			String sql = "insert into member values (?, ?, ?, ?, ?)";
			//2. statement 객체 생성 
			PreparedStatement stmt = con.prepareStatement(sql);
			//3. 쿼리 파라미터 설정
			stmt.setString(1, member.getUserid());
			stmt.setString(2, member.getName());
			stmt.setString(3, member.getPassword());
			stmt.setString(4, member.getPhone());
			stmt.setString(5, member.getAddress());
			//4. 쿼리 실행, executeQuery 또는 executeUpdate
			stmt.executeUpdate();
//			System.out.println(con);//커넥션객채가 서버의 콘솔에 출력되면 성공
		}catch(SQLException e) {
//			System.out.println(e.getMessage());
			throw new RuntimeException(e);
		}finally {
			closeConnection(con);
		}
	}
	
	public MemberVO selectMember(String userid) {
		MemberVO member = new MemberVO();
		Connection con = null;
		try {
			con = getConnection();
			
			String sql = "select * from member where userid=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, userid);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				//rs에는 쿼리 실행결과가 있다. rs에 있는 데이터를 vo에 담아야 한다.
				member.setUserid(rs.getString("userid"));
				member.setPassword(rs.getString("password"));
				member.setName(rs.getString("name"));
				member.setPhone(rs.getString("phone"));
				member.setAddress(rs.getString("address"));
			}
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally{
			closeConnection(con);
		}
		
		return member;
	}
	
	public ArrayList<MemberVO> selectAllMembers() {
		ArrayList<MemberVO> members = null;
		Connection con = null;
		try {
			members = new ArrayList<MemberVO>();
			con = getConnection();
			String sql = "select userid, name, password, phone, address from member";
			PreparedStatement stmt = con.prepareStatement(sql);
			ResultSet rs = stmt.executeQuery();
			
			//결과 셋이 여러개 이므로...
			while(rs.next()) {
				MemberVO vo = new MemberVO();
//				String userid = rs.getString("userid");
//				vo.setUserid(userid);
				vo.setUserid(rs.getString("userid"));
				vo.setName(rs.getString("name"));
				vo.setPassword(rs.getString("password"));
				vo.setPhone(rs.getString(4));//권하지는 않는다. select 열 순서를 입력해도 됨
				vo.setAddress(rs.getString("address"));
				//ResultSet을 소비하는 도중에 select 쿼리를 전송시키면 안된다.
//				String sql2 = "select * from board where writer=?";
//				PreparedStatement stmt2 = con.prepareStatement(sql2);
//				stmt2.setString(1, vo.getUserid());
//				ResultSet rs2 = stmt2.executeQuery();
				
				members.add(vo);
			}
		}catch(SQLException e){
			throw new RuntimeException(e);
		}finally {
			closeConnection(con);
		}
		
		return members;
	}

	public void update(MemberVO member) {
		Connection con = null;
		try {
			con = getConnection();
			con.setAutoCommit(false);
			String sql = "update member set name=?, password=?, phone=?, address=?"
					+ " where userid=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, member.getName());
			stmt.setString(2, member.getPassword());
			stmt.setString(3, member.getPhone());
			stmt.setString(4, member.getAddress());
			stmt.setString(5, member.getUserid());

			stmt.executeUpdate();
			con.commit();
		}catch(SQLException e) {
			try {
				con.rollback();
			} catch (SQLException e1) {
				//nothing
			}
			throw new RuntimeException(e);
		}finally {
			closeConnection(con);
		}
	}

	public void delete(MemberVO member) {
		Connection con = null;
		try{
			con = getConnection();
			String sql = "delete from member where userid=? and password=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, member.getUserid());
			stmt.setString(2, member.getPassword());
			
			stmt.executeUpdate();
		}catch(SQLException e) {
			throw new RuntimeException(e);
		}finally{
			closeConnection(con);
		}
	}
}












