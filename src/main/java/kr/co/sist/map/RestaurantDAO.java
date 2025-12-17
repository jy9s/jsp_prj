package kr.co.sist.map;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.sist.board.BoardDTO;
import kr.co.sist.dao.DbConn;

public class RestaurantDAO {
	
	private static RestaurantDAO rDAO;
	
	private RestaurantDAO() {
		
	}
	
	public static RestaurantDAO getInstance() {
		if(rDAO == null) {
			rDAO = new RestaurantDAO();
		}
		
		return rDAO;
	}

	public List<RestaurantDTO> selectAllRestaurant(String id) throws SQLException{
		List<RestaurantDTO> list = new ArrayList<RestaurantDTO>();
		
		
		DbConn dbCon = DbConn.getInstance("jdbc/dbcp");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			//1. JNDI 사용객체 생성
			//2. DataSource 얻기
			//3. Connection 얻기
			con = dbCon.getConn();
			//4. 쿼리문생성객체 얻기
			StringBuilder selectRestaurant = new StringBuilder();
			selectRestaurant
			.append("	select  rest_num, rest_name, menu, info, lat, lng, input_date from restaurant where id = ?	");
			
			pstmt = con.prepareStatement(selectRestaurant.toString());
			//5. 바인드 변수 값 설정
			int pstmtIdx=0;
			pstmt.setString(++pstmtIdx, id);
			
			
			RestaurantDTO rDTO = null;
			
			rs=pstmt.executeQuery();			
			//6. 조회결과 얻기	
			while(rs.next()) {
				rDTO = new RestaurantDTO();
				rDTO.setRest_num(rs.getInt("rest_num"));
				rDTO.setRest_name(rs.getString("rest_name"));
				rDTO.setMenu(rs.getString("menu"));
				rDTO.setInfo(rs.getString("info"));
				rDTO.setLat(rs.getDouble("lat"));
				rDTO.setLng(rs.getDouble("lng"));
				rDTO.setInput_date(rs.getDate("input_date"));
				list.add(rDTO);
			}
			
		}finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}
		
		
		return list;
		
		
	}
	
	public void insertRestaurant(RestaurantDTO rDTO) throws SQLException{
		
		DbConn dbCon=DbConn.getInstance("jdbc/dbcp");		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
		//1. JNDI사용객체 생성		
		//2. DataSrouce 얻기			
		//3. DataSource에서 Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			String insertBoard="insert into restaurant(REST_NUM, ID, REST_NAME, MENU, INFO, LAT, LNG ) "
					+ "values (seq_rest.nextval , 'kim','이가네 양꼬치','양꼬치', '양꼬치는 역시' , 37.50349447982111   ,127.05228942143049 );\r\n"
					+ " ";
			
		//5. 바인드 변수 값 설정
			pstmt=con.prepareStatement(insertBoard);
			pstmt.setString(1, bDTO.getTitle());
			pstmt.setString(2, bDTO.getContent());
			pstmt.setString(3, bDTO.getIp());
			pstmt.setString(4, bDTO.getId());
			
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeUpdate();
			
		}finally {
			//7. 연결 끊기
			dbCon.dbClose(null, pstmt, con);
		}
		
		
		
		
		
	}
	
	
	
}
