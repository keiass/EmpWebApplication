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

import kr.co.javaspecialist.manage.domain.ProductVO;
import kr.co.javaspecialist.manage.service.IProductDAO;

public class ProductDAO implements IProductDAO { 
	
	static final Logger logger = Logger.getLogger(ProductDAO.class);
	
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
	
	public List<ProductVO> getProductInfoByKeyword(String keyword) {
		Connection con = null;
		List<ProductVO> productList = new ArrayList<ProductVO>();
		try {
			con = getConnection();
			String sql = "select * from product where keyword like ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "%"+keyword+"%");
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				
				ProductVO vo = new ProductVO();
				vo.setProductId(rs.getInt("product_id"));
				vo.setBarcode(rs.getString("barcode"));
				vo.setProductName(rs.getString("product_name"));
//				vo.setCompany(rs.getString("company"));
				vo.setKeyword(rs.getString("keyword"));
//				vo.setLocation(rs.getString("location"));
				vo.setProductImage(rs.getString("product_image"));
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
	
	public List<ProductVO> getProductInfoByName(String name) {
		Connection con = null;
		List<ProductVO> productList = new ArrayList<ProductVO>();
		try {
			con = getConnection();
			String sql = "select * from product where product_name like ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "%"+name+"%");
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				
				ProductVO vo = new ProductVO();
				vo.setProductId(rs.getInt("product_id"));
				vo.setBarcode(rs.getString("barcode"));
				vo.setProductName(rs.getString("product_name"));
				vo.setKeyword(rs.getString("keyword"));
				
				vo.setProductImage(rs.getString("product_image"));
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
	
	
	public List<ProductVO> getProductInfoByLocation(String location) {
		Connection con = null;
		List<ProductVO> productList = new ArrayList<ProductVO>();
		try {
			con = getConnection();
			String sql = "select * from product where company like ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "%"+location+"%");
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				
				ProductVO vo = new ProductVO();
				vo.setProductId(rs.getInt("product_id"));
				vo.setBarcode(rs.getString("barcode"));
				vo.setProductName(rs.getString("product_name"));
				vo.setKeyword(rs.getString("keyword"));
				
				vo.setProductImage(rs.getString("product_image"));
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
	
	public List<ProductVO> getProductInfoByDeptname(String deptname) {
		Connection con = null;
		List<ProductVO> productList = new ArrayList<ProductVO>();
		try {
			con = getConnection();
			String sql = "select * from product where details like ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "%"+deptname+"%");
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				
				ProductVO vo = new ProductVO();
				vo.setProductId(rs.getInt("product_id"));
				vo.setBarcode(rs.getString("barcode"));
				vo.setProductName(rs.getString("product_name"));
				vo.setKeyword(rs.getString("keyword"));
				
				vo.setProductImage(rs.getString("product_image"));
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

	@Override
	public ProductVO getProductInfoByBarcode(String barcode) {
		Connection con = null;
		ProductVO product = new ProductVO();
		try {
			con = getConnection();
			String sql = "select * from product where barcode = ?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, barcode);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {

				product.setProductId(rs.getInt("product_id"));
				product.setBarcode(rs.getString("barcode"));
				product.setProductName(rs.getString("product_name"));
				product.setUserId(rs.getString("userid"));
				product.setKeyword(rs.getString("keyword"));		
				product.setLocation(rs.getString("location"));
				product.setProductImage(rs.getString("product_image"));
			}
		}catch(SQLException e) {
			throw new RuntimeException(e.getMessage());
		}finally {
			closeConnection(con);
		}
		return product;
	}

	@Override
	public List<ProductVO> getProductInfoByID(String id) {
		Connection con = null;
		List<ProductVO> productList = new ArrayList<ProductVO>();
		try {
			con = getConnection();
			String sql = "select * from product where userid=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, id);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				
				ProductVO vo = new ProductVO();
				vo.setProductId(rs.getInt("product_id"));
				vo.setBarcode(rs.getString("barcode"));
				vo.setProductName(rs.getString("product_name"));
				vo.setKeyword(rs.getString("keyword"));
				
				vo.setLocation(rs.getString("location"));
				vo.setProductImage(rs.getString("product_image"));
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

	public List<ProductVO> getProductInfoByDepartmentAndCategory(String department, String category) {

		Connection con = null;
		PreparedStatement pstmt = null;
		List<ProductVO> productList = new ArrayList<ProductVO>();


		con = getConnection();
		String sql = "select p.product_id, p.product_name, p.barcode, p.keyword, p.location, p.product_image from product p, member m ";

		try {
			if(!department.equals(null) && !category.equals(null)){
				sql=sql.concat("where m.deptname = ? and p.category = ?");
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, department);
				pstmt.setString(2, category);
			}else{
				pstmt = con.prepareStatement(sql);
			}


			ResultSet rs = pstmt.executeQuery();

			while(rs.next()) {

				ProductVO vo = new ProductVO();

				vo.setProductId(rs.getInt("product_id"));
				vo.setBarcode(rs.getString("barcode"));
				vo.setProductName(rs.getString("product_name"));
				vo.setKeyword(rs.getString("keyword"));
				vo.setLocation(rs.getString("location"));
				vo.setProductImage(rs.getString("product_image"));
				logger.info(vo.toString());
				System.out.println(vo.toString());
				productList.add(vo);
			}

			

		} catch (SQLException e) {

			throw new RuntimeException(e.getMessage());

		}finally {
			closeConnection(con);

		}
		return productList;
	}

}
