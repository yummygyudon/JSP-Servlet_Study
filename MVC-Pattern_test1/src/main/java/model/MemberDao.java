package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDao {

	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public void con() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); // �뱶�씪�씠踰� 濡쒕뱶
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:TestDB", "hr", "hr"); // connection媛앹껜�깮�꽦
		} catch (Exception e) {
			System.out.println(e);
		}
	}

	public void discon() { // close硫붿꽌�뱶 insert,update�쓣 �궗�슜�븯硫� �샇異�
		try {
			pstmt.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}
	}


	public void insertMember(MemberVO vo) throws SQLException{
		con();
		String sql="insert into member2(id,password,name,address) values(?,?,?,?)";
    try {
    	pstmt=conn.prepareStatement(sql);
		pstmt.setString(1, vo.getId());
		pstmt.setString(2,vo.getPassword());
		pstmt.setString(3,vo.getName());
		pstmt.setString(4,vo.getAddress());
		int result=pstmt.executeUpdate();
		System.out.println("insert result:"+result);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		discon();
		
	}
	
	public MemberVO login(String id,String password)throws SQLException {
		con();
		MemberVO vo=null;
		String sql ="select name,address from member2 where id=? and password=?";
		
		try {
			    pstmt=conn.prepareStatement(sql);
			    pstmt.setString(1, id);
			    pstmt.setString(2, password);
			    rs=pstmt.executeQuery();
			    if(rs.next()){
			    	vo=new MemberVO(id,password,rs.getString(1),rs.getString(2));
			    }
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				discon();
				return vo;
	}
	
	
	public boolean isExist(String id) throws SQLException{
		con();
		String sql="select id from member2 where id=?";
		boolean flag=false;
		try {
			pstmt=conn.prepareStatement(sql);
		    pstmt.setString(1, id);
		    rs=pstmt.executeQuery();
		    flag=rs.next();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			discon();
			return flag;
		
	}

	public MemberVO findMember(String id)throws SQLException  { 
		con();
		MemberVO vo=null;
		String sql="select password,name,address from member2 where id=?";
		try {
			pstmt=conn.prepareStatement(sql);
		    pstmt.setString(1, id);
		    rs=pstmt.executeQuery();
		    if(rs.next()){
		    	vo=new MemberVO(
		    			id,rs.getString(1),rs.getString(2),rs.getString(3));
		    }
			
			rs.close();
		} catch (Exception e) {
			System.out.println(e);
		}

		discon();
		return vo;
		
	}

	public void updateMember(MemberVO vo) throws SQLException{
		con();
		
		String sql="update  member2 set password=?,name=?,address=? where id=?";
    try {
    	pstmt=conn.prepareStatement(sql);
    	pstmt.setString(1,vo.getPassword());
    	pstmt.setString(2,vo.getName());
    	pstmt.setString(3,vo.getAddress());
    	pstmt.setString(4, vo.getId());
		int result=pstmt.executeUpdate();
		System.out.println("insert result:"+result);
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		discon();
	}
}