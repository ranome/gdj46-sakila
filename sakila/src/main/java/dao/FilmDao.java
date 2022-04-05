package dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Types;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import util.DBUtil;

public class FilmDao {
	public Map<String, Object> filmInStockCall(int filmId, int storeId) {
		Map<String, Object> map = new HashMap<String, Object>();
		Connection conn = null;
		// PreparedStatement : 쿼리를 실행
		// CallableStatement : 프로시저를 실행 
		CallableStatement stmt = null;
		ResultSet rs = null;
		// select inventory_id .... 
		List<Integer> list = new ArrayList<>();
		
		// select count(inventroy_id) ....
		Integer count = 0;
		conn = DBUtil.getConnection();
		try {
			stmt = conn.prepareCall("{call film_in_stock(?, ?, ?)}");
			stmt.setInt(1, filmId);
			stmt.setInt(2, storeId);
			stmt.registerOutParameter(3, Types.INTEGER);
			rs = stmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getInt(1)); // rs.getInt("inventory_id")
			}
			count = stmt.getInt(3); // 프로시저 3번째 out변수 값
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		map.put("list", list);
		map.put("count", count);
		
		return map;
	}
	
	
	public Map<String, Object> filmNotInStockCall(int filmId, int storeId) {
		Map<String, Object> map = new HashMap<String, Object>();
		Connection conn = null;
		// PreparedStatement : 쿼리를 실행
		// CallableStatement : 프로시저를 실행 
		CallableStatement stmt = null;
		ResultSet rs = null;
		// select inventory_id .... 
		List<Integer> list = new ArrayList<>();
		
		// select count(inventroy_id) ....
		Integer count = 0;
		conn = DBUtil.getConnection();
		try {
			stmt = conn.prepareCall("{call film_not_in_stock(?, ?, ?)}");
			stmt.setInt(1, filmId);
			stmt.setInt(2, storeId);
			stmt.registerOutParameter(3, Types.INTEGER);
			rs = stmt.executeQuery();
			while(rs.next()) {
				list.add(rs.getInt(1)); // rs.getInt("inventory_id")
			}
			count = stmt.getInt(3); // 프로시저 3번째 out변수 값
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		map.put("list", list);
		map.put("count", count);
		
		return map;
	}
	
	public static void main(String[] args) {
		FilmDao fd = new FilmDao();
		int filmId =7;
		int storeId=2;
		Map<String,Object> map1 = fd.filmInStockCall(filmId, storeId);
		List<Integer> list1 = (List<Integer>)map1.get("list");
		int count1 = (Integer)map1.get("count");

		System.out.println(filmId + "번 영화는 "+ storeId +"번 가게에 "+count1+"개 남음");
		for(int i : list1) {
			System.out.println(i);												
		}
		Map<String,Object> map2 = fd.filmNotInStockCall(filmId, storeId);
		List<Integer> list2 =  (List<Integer>)map2.get("list");
		int count2 = (Integer)map2.get("count");
		System.out.println(filmId + "번 영화는 "+ storeId +"번 가게에 "+count2+"개 남음");
		for(int i : list2) {
			System.out.println(i);
		}
	}
}