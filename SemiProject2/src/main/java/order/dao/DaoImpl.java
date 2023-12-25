package order.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import model.Order;

public class DaoImpl implements Dao {
	private DBConnect db;

	public DaoImpl() {
		db = DBConnect.getInstance();
	}

	@Override
	public void insert(Order o) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();
		String sql = "insert into semi_order values(seq_semi_order.nextval, ?,?,?,?,?,sysdate,?,0)";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, o.getPro_num());
			pstm.setInt(2, o.getOrder_num());
			pstm.setInt(3, o.getTotal_price());
			pstm.setString(4, o.getO_email());
			pstm.setString(5, o.getO_category());
			pstm.setInt(6, o.getO_state());
			pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@Override
	public Order select(int num) {
		// TODO Auto-generated method stub
		Order o = null;
		ResultSet rs = null;
		Connection conn = db.getConnection();
		String sql = "select * from semi_order where num=?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, num);
			rs = pstm.executeQuery();
			if (rs.next()) {
				return new Order(rs.getInt(1),
								 rs.getInt(2),
								 rs.getInt(3),
								 rs.getInt(4),
								 rs.getString(5),
								 rs.getString(6),
								 rs.getDate(7),
								 rs.getInt(8),
								 rs.getInt(9));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public ArrayList<Order> selectAll(String o_email, int o_state) {
		// TODO Auto-generated method stub
		ArrayList<Order> list = new ArrayList<Order>();
		ResultSet rs = null;
		Connection conn = db.getConnection();
		String sql = "select * from semi_order where o_email=? and o_state=?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, o_email);
			pstm.setInt(2, o_state);
			rs = pstm.executeQuery();
			while (rs.next()) {
				list.add(new Order(rs.getInt(1),
								   rs.getInt(2),
								   rs.getInt(3),
								   rs.getInt(4),
								   rs.getString(5),
								   rs.getString(6),
								   rs.getDate(7),
								   rs.getInt(8),
								   rs.getInt(9)
								   ));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

	@Override
	public void delete(int num) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();
		String sql = "delete from semi_order where num=?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, num);
			pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	@Override
	public void update(String type, int num) {
		// TODO Auto-generated method stub
		Connection conn = db.getConnection();
		String sql = "update semi_order set " + type + "_state=1 where num=?";
		try {
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setInt(1, num);
			pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	

}
