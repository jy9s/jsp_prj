package kr.co.sist.map;

import java.sql.SQLException;
import java.util.List;

public class RestaurantService {
	private static RestaurantService rs;
	
	private RestaurantService() {
		
	}
	
	public static RestaurantService getInstance() {
		
		if(rs==null) {
			rs = new RestaurantService();
		}
		
		return rs;
		
	}

	
	
	public List<RestaurantDTO> searchRestaurant(String id){
		
		List<RestaurantDTO> list=null;
		
		RestaurantDAO rDAO = RestaurantDAO.getInstance();
		
		try {
			list=rDAO.selectAllRestaurant(id);
			System.out.println(list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
		
		
	}
	
}	
