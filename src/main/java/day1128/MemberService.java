package day1128;

public class MemberService {
	
	public void joinMember(ParamDTO pDTO) {
		//회원 테이블 insert하는 쿼리실행하는 DAO method
		System.out.println("Service" + pDTO);
		//히스토리에 테이블에 inser쿼리 DAO method
	}//joinMember
	
}//class
