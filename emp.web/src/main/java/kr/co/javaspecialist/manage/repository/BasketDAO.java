package kr.co.javaspecialist.manage.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import org.apache.log4j.Logger;

import kr.co.javaspecialist.manage.domain.BasketVO;
import kr.co.javaspecialist.manage.service.IBasketDAO;

public class BasketDAO implements IBasketDAO {
	static final Logger logger = Logger.getLogger(BasketDAO.class);
	
	private Connection getConnection() {
		DataSource ds = null; //javax.sql.*
		Connection con = null;
		try{
			Context ctx = new InitialContext();
	        ds = (DataSource)ctx.lookup("java:comp/env/jdbc/hsqlDB");
//			ds = (DataSource)ctx.lookup("java:comp/env/jdbc/Oracle");
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
	
	@Override
	public List<BasketVO> getBasketInforByID(String userid) {
		Connection con = null;
		List<BasketVO> productList = new ArrayList<BasketVO>();
		try {
			con = getConnection();
			String sql = "select * from basket where userid=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, userid);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				
				BasketVO vo = new BasketVO();
				vo.setProductId(rs.getInt("product_id"));
//				vo.setBarcode(rs.getString("barcode"));
//				vo.setProductName(rs.getString("product_name"));
//				vo.setKeyword(rs.getString("keyword"));
//				
//				vo.setLocation(rs.getString("location"));
//				vo.setProductImage(rs.getString("product_image"));
				logger.info(vo.toString());
				productList.add(vo);
			}
		}catch(SQLException e) {
			throw new RuntimeException(e.getMessage());
		}finally {
			closeConnection(con);
		}
		return productList;
	}
}
