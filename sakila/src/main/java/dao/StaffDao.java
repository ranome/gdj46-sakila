package dao;

import java.util.*;
import java.sql.*;

public class StaffDao {
	public List<Map<String, Object>> selectStaffList() {
			
		List<Map<String, Object>> list = new ArrayList<>(); // 다형성
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mariadb://localhost:3306/sakila","root","java1234");
			String sql = "SELECT"
					+ " 	s2.staff_id staffId, "
					+ " 	CONCAT(s2.first_name,' ', s2.last_name) staffName, "
					+ " 	s2.address_id addressId, "
					+ " 	s2.picture picture, "
					+ " 	s2.email email, "
					+ " 	s2.store_id storeId, "
					+ " 	s2.active active, "
					+ " 	s2.username username, "
					+ " 	s2.password password, "
					+ " 	s2.last_update lastUpdate "
					+ " 	FROM staff s2 "
					+ " 	INNER JOIN address a "
					+ " 	INNER JOIN store s1 "
					+ " 	ON s2.address_id = a.address_id "
					+ " 	AND s2.store_id = s1.store_id; ";
			stmt = conn.prepareStatement(sql);
			rs = stmt.executeQuery();
			
			while(rs.next()) {
				Map<String, Object> map = new HashMap<>(); // 다형성
				
				map.put("staffId", rs.getInt("staffId"));
				map.put("staffName", rs.getString("staffName"));
				map.put("addressId", rs.getInt("addressId"));
				map.put("picture", rs.getString("picture"));
				map.put("email", rs.getString("email"));
				map.put("storeId", rs.getInt("storeId"));
				map.put("active", rs.getInt("active"));
				map.put("username", rs.getString("username"));
				map.put("password", rs.getString("password"));
				map.put("lastUpdate", rs.getString("lastUpdate"));
				list.add(map);
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("예외 발생");
			
		} finally {
			try {
				//DB 자원 해지 - try절에서 예외가 발생시 자원해지 못한상태에서 코드가 종료. finally절이 필요
				rs.close();
				stmt.close();
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				
			}
		}
		return list;
	}
	
	public static void main(String[] args) {
		StaffDao dao = new StaffDao();
		List<Map<String, Object>> list = dao.selectStaffList();
		for(Map m : list) {
			
			System.out.print(m.get("staffId")+", ");
			System.out.print(m.get("staffName")+", ");
			System.out.print(m.get("addressId")+", ");
			System.out.print(m.get("picture")+", ");
			System.out.print(m.get("email")+", ");
			System.out.print(m.get("storeId")+", ");
			System.out.print(m.get("active")+", ");
			System.out.print(m.get("username")+", ");
			System.out.print(m.get("password")+", ");
			System.out.print(m.get("lastUpdate")+", ");
			System.out.println("");
		}
	}
}



