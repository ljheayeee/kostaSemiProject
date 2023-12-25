package  member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import conn.DBConnect;
import model.Member;


public class DaoImpl implements Dao {
	
	
	private DBConnect db;
	 
	public DaoImpl() {
		db = DBConnect.getInstance();
	}

		
	
	public void insert(Member m) {
		// TODO Auto-generated method stub
		Connection conn = null;

		String sql = "insert into semi_member values(?,?,?,?,?,?,?)";
		
		PreparedStatement pstmt = null;
		
		try {
			
			conn = db.getConnection();
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getEmail());
			pstmt.setString(2, m.getPw());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getPostcode());
			pstmt.setString(5, m.getRoadAddress());
			pstmt.setString(6, m.getRoadAddress());
			pstmt.setInt(7, m.getType());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// 자원 반환
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public Member select(String email) {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		ResultSet rs = null;
		Member m = null;
		
		String sql = "select * from semi_member where email=?";
		PreparedStatement pstmt = null;
		
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				m = new Member(rs.getString(1),
							   rs.getString(2),
							   rs.getString(3),
							   rs.getString(4),
							   rs.getString(5),
							   rs.getString(6),
							   rs.getInt(7));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// 자원 반환
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		return m;
	}

	
	
	public void update(Member m) {
		// TODO Auto-generated method stub
		Connection conn = null;
		
		
		String sql = "update semi_member set pw=?, postcode=?, roadAddress=?, detailAddress=? where email=?";
		
		PreparedStatement pstmt = null;
		
		try {
			
			conn = db.getConnection();

			// java에서 sql을 실행하는 PreparedStatement객체 생성
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, m.getPw());
			pstmt.setString(2, m.getPostcode());
			pstmt.setString(3, m.getRoadAddress());
			pstmt.setString(4, m.getDetailAddress());
			pstmt.setString(5, m.getEmail());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// 자원 반환
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
	}

	
	
	public void delete(String email) {
		// TODO Auto-generated method stub
		
		Connection conn = null;
		
		String sql = "delete semi_member where email=?";
		
		PreparedStatement pstmt = null;
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}



	@Override
	public int getType(String email) {

		Connection conn = null;
		ResultSet rs = null;
		int type = 0;
		
		String sql = "select type from semi_member where email=?";
		
		PreparedStatement pstmt = null;
		
		
		try {
			conn = db.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				type = rs.getInt(1);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				// 자원 반환
				rs.close();
				pstmt.close();
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}
		
		
		return type;
	}

}
