package kr.co.sist.user.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import day1128.ParamDTO;
import kr.co.sist.dao.DbConn;

public class WebMemberDAO {
	
	private static WebMemberDAO wmDAO;
	
	private WebMemberDAO() {
		
	}
	
	public static WebMemberDAO getInstance() {
		if(wmDAO==null) {
			wmDAO = new WebMemberDAO();
		}
		
		return wmDAO;
	}
	
	public boolean selectId(String id) throws SQLException {
		boolean resultFlag=false;
		
		DbConn dbCon=DbConn.getInstance("jdbc/dbcp");		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
		//1. JNDI사용객체 생성		
		//2. DataSrouce 얻기			
		//3. DataSource에서 Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			String selectId="select id from web_member where id=?";
		//5. 바인드 변수 값 설정
			pstmt=con.prepareStatement(selectId);
			pstmt.setString(1, id);
		//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			
			resultFlag=!rs.next(); //아이디가 존재 true - 사용불가 , 아이디가 없음 false - 사용가능
		}finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}
			
		
		return resultFlag;
		
	}
	
	/**
	 * 회원 정보를 추가
	 * @param pDTO
	 * @throws SQLException
	 */
	public void insertMember(ParamDTO pDTO) throws SQLException{
		DbConn db = DbConn.getInstance("jdbc/dbcp");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
		//1. JNDI사용객체 생성
		//2. DBCP에서 DataSoruce 얻기
		//3. DataSource에서 Connection 얻기
			con=db.getConn();		
		//4. 쿼리문 생성객체 얻기
			String insertMember="insert into web_member(id,password,name,email,birth,loc,ip,intro)	values(?,?,?,?,?,?,?,?) ";
			pstmt=con.prepareStatement(insertMember);
		//5. 바인드 변수 값 설정
			pstmt.setString(1, pDTO.getId());
			pstmt.setString(2, pDTO.getPass());
			pstmt.setString(3, pDTO.getName());
			pstmt.setString(4, pDTO.getEmail());
			pstmt.setString(5, pDTO.getBirth());
			pstmt.setString(6, pDTO.getLoc());
			pstmt.setString(7, pDTO.getIp());
			pstmt.setString(8, pDTO.getIntro());
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeUpdate();
		}finally {
		//7. 연결 끊기
			db.dbClose(null, pstmt, con);
		}
		
	}
	
	/**
	 * 회원이 선택한 언어 추가
	 * @param id
	 * @param lang
	 * @throws SQLException
	 */
	public void insertMemberLang(String id, String lang) throws SQLException{
		
		DbConn db=DbConn.getInstance("jdbc/dbcp");
		
		Connection con =null;
		PreparedStatement pstmt = null;
		
		try {
		//1. JNDI사용객체 생성
		//2. DBCP에서 DataSoruce 얻기
		//3. DataSource에서 Connection 얻기	
			con=db.getConn();
		//4. 쿼리문 생성객체 얻기
			String insertMemberLang="insert into web_member_lang(id,lang) valuew (?,?)";
			pstmt=con.prepareStatement(insertMemberLang);
		//5. 바인드 변수 값 설정
			pstmt.setString(1, id);
			pstmt.setString(2, lang);
			
		//6. 쿼리문 수행 후 결과 얻기
			pstmt.executeUpdate();
		}finally {
		//7. 연결 끊기
			db.dbClose(null, pstmt, con);
		}
		
	}
	
	/**
	 * 마이페이지에서 사용되는 회원의 정보
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public ParamDTO selectMember(String id) throws SQLException {
		
		ParamDTO pDTO = null;
		DbConn dbCon=DbConn.getInstance("jdbc/dbcp");		
		
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			//1. JNDI사용객체 생성		
			//2. DataSrouce 얻기			
			//3. DataSource에서 Connection 얻기
			con=dbCon.getConn();
			//4. 쿼리문 생성객체 얻기
			StringBuilder selectMember = new StringBuilder();
			selectMember
			.append("	select name, email, birth, input_date, ip, intro, profile , loc	")
			.append("	from web_member												")
			.append("	where id = ?												");
			
			
			//5. 바인드 변수 값 설정
			pstmt=con.prepareStatement(selectMember.toString());
			pstmt.setString(1, id);
			//6. 쿼리문 수행 후 결과 얻기
			rs=pstmt.executeQuery();
			if(rs.next()) {
				pDTO = new ParamDTO();
				pDTO.setName(rs.getString("name"));
				pDTO.setEmail(rs.getString("email"));
				pDTO.setBirth(rs.getString("birth"));				
				pDTO.setInputDate(rs.getDate("input_date"));
				pDTO.setIp(rs.getString("ip"));
				pDTO.setIntro(rs.getString("intro"));
				pDTO.setLoc(rs.getString("loc"));
				pDTO.setProfile(rs.getString("profile"));				
			}//end if
		}finally {
			//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}
		return pDTO;
	}//selectMemeber
	
	
	public int updateMember(ParamDTO pDTO) throws SQLException{
		int cnt=0;
		DbConn db = DbConn.getInstance("jdbc/dbcp");
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
		//1. JNDI사용객체 생성
		//2. DBCP에서 DataSoruce 얻기
		//3. DataSource에서 Connection 얻기
			con=db.getConn();		
		//4. 쿼리문 생성객체 얻기
			StringBuilder updateMember = new StringBuilder();
			updateMember
			.append("	update web_member	")
			.append("	set email=?, birth=?,	loc=?, intro=?, profile=?	")
			.append("	where id=?			");
			
			pstmt=con.prepareStatement(updateMember.toString());
		//5. 바인드 변수 값 설정
			pstmt.setString(1, pDTO.getEmail());
			pstmt.setString(2, pDTO.getBirth());
			pstmt.setString(3, pDTO.getLoc());
			pstmt.setString(4, pDTO.getIntro());
			pstmt.setString(5, pDTO.getProfile());
			pstmt.setString(6, pDTO.getId());
		//6. 쿼리문 수행 후 결과 얻기
			cnt=pstmt.executeUpdate();
		}finally {
		//7. 연결 끊기
			db.dbClose(null, pstmt, con);
		}
		
		return cnt;
		
	}
}
