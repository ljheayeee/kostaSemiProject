package product.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import conn.DBConnect;
import model.Product;

public class DaoImpl implements Dao {
	
	private DBConnect db;
	
	public DaoImpl() {
		db = DBConnect.getInstance();
	}


	public void insert(Product p) {
		// TODO Auto-generated method stub
		
		Connection conn = db.getConnection();
		
		String sql = "insert into semi_product values(?, ?, ?, ?, ?, ?, ?, ?, 0)";
		PreparedStatement pstmt = null;
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, p.getNum());
			pstmt.setString(2, p.getName());
			pstmt.setInt(3, p.getQuantity());
			pstmt.setInt(4, p.getPrice());
			pstmt.setString(5, p.getImg());
			pstmt.setString(6, p.getContent());
			pstmt.setString(7, p.getCategory());
			pstmt.setString(8, p.getS_email());
			pstmt.executeUpdate();
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

	
	public Product select(int num) {
		// TODO Auto-generated method stub
		ResultSet rs = null;
		Product product = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		String sql = "select * from semi_product where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				product = new Product(rs.getInt(1),
									  rs.getString(2),
									  rs.getInt(3),
									  rs.getInt(4),
								  	  rs.getString(5),
								  	  rs.getString(6),
									  rs.getString(7),
									  rs.getString(8),
									  rs.getInt(9));
				
			}
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		
		return product;
	}

	public ArrayList<Product> selectAllById(String s_email) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();
		ResultSet rs = null;
		ArrayList<Product> products = new ArrayList<Product>();
		PreparedStatement pstmt = null;

		String sql = "select * from semi_product where s_email=?";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, s_email);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				products.add(new Product(rs.getInt(1),
										 rs.getString(2),
										 rs.getInt(3),
										 rs.getInt(4),
										 rs.getString(5),
										 rs.getString(6),
										 rs.getString(7),
										 rs.getString(8),
										 rs.getInt(9)
										 ));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return products;
	}

	

	public void update(Product p) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();

		String sql = "update semi_product set name=?, quantity=?,"
				+ " price=?, content=? where num=?";
		
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, p.getName());
			pstmt.setInt(2, p.getQuantity());
			pstmt.setInt(3, p.getPrice());
			pstmt.setString(4, p.getContent());
			pstmt.setInt(5, p.getNum());
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
			
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		
	}

	public void delete(int num) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();
		
		String sql = "delete semi_product where num=?";
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	
	
	
	public int selectNum() {
		// TODO Auto-generated method stub
		
		Connection conn = db.getConnection();
		
		String sql = "select seq_semi_product.nextval from dual";
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		int num = 0;


		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				num = rs.getInt(1);
			}
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return num;
	}

	
	public ArrayList<Product> selectAll() {
		// TODO Auto-generated method stub
		ArrayList<Product> products = new ArrayList<Product>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		
		String sql = "select * from semi_product";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				products.add(new Product(rs.getInt(1),
										 rs.getString(2),
										 rs.getInt(3),
										 rs.getInt(4),
										 rs.getString(5),
										 rs.getString(6),
										 rs.getString(7),
										 rs.getString(8),
										 rs.getInt(9)
										 ));
			}
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return products;
	}

	
	
	public void updateQuantity(int q, int num) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update semi_product set quantity=quantity-? "
				+ "where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, q);
			pstmt.setInt(2, num);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}

		
	}


	@Override
	public void updateCount(int num) {
		
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;

		String sql = "update semi_product set count=count+1 where num=?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}


	@Override
	public ArrayList<Product> selectTop5() {
		ArrayList<Product> products = new ArrayList<Product>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		PreparedStatement pstmt = null;
		
		
		String sql = "select * from (select * from semi_product order by count desc) where rownum <7";
		
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				products.add(new Product(rs.getInt(1),
										 rs.getString(2),
										 rs.getInt(3),
										 rs.getInt(4),
										 rs.getString(5),
										 rs.getString(6),
										 rs.getString(7),
										 rs.getString(8),
										 rs.getInt(9)
										 ));
			}
			
			rs.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		return products;
	}


	@Override
	public ArrayList<Product> searchAllByProductName(String name, String category) {
		Connection conn = db.getConnection();
		ResultSet rs = null;
		ArrayList<Product> products = new ArrayList<Product>();
		PreparedStatement pstmt = null;

		String sql = "select * from semi_product where category like ? and name like ?";
		
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, category);
			pstmt.setString(2, "%"+name+"%");
			rs = pstmt.executeQuery();
			while (rs.next()) {
				products.add(new Product(rs.getInt(1),
										 rs.getString(2),
										 rs.getInt(3),
										 rs.getInt(4),
										 rs.getString(5),
										 rs.getString(6),
										 rs.getString(7),
										 rs.getString(8),
										 rs.getInt(9)
										 ));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally {
			try {
				// �ڿ� ��ȯ
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return products;
	}

}
