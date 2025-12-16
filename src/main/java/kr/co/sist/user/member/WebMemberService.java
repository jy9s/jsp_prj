package kr.co.sist.user.member;

import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;

import day1128.ParamDTO;
import kr.co.sist.chipher.DataDecryption;
import kr.co.sist.chipher.DataEncryption;
import kr.co.sist.siteProperty.SiteProperty;

public class WebMemberService {
	
	private static WebMemberService wmService;
	
	private WebMemberService() {
	
	}
	
	public static WebMemberService getInstance() {
		if(wmService==null) {
			wmService = new WebMemberService();
		}
		return wmService;
	}
	
	
	public boolean searchId(String id) {
		boolean flag=false;
		
		WebMemberDAO wmDAO = WebMemberDAO.getInstance();
		
		try {
			flag=wmDAO.selectId(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return flag;
		
	}
	
	public boolean addMember(ParamDTO pDTO, String key) {
		
		boolean flag = false;
		
		WebMemberDAO wmDAO = WebMemberDAO.getInstance();
		
		//저장될 데이터의 중요도에 따라 일방향 해시, 암호화 처리.
		//null이나 ""는 일방향해시, 암호화를 하면 error발생.
		if(pDTO.getPass() != null && !pDTO.getPass().equals("")) {
			try {
				pDTO.setPass(DataEncryption.messageDigest("SHA-1", pDTO.getPass()));
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}//end catch			
		}//end if
		
		//String key="a123456789012345";
		DataEncryption de = new DataEncryption(key);
		
		if(pDTO.getName() != null && !pDTO.getName().equals("")) {
			try {
				pDTO.setName(de.encrypt(pDTO.getName()));
			} catch (Exception e) {
				e.printStackTrace();
			}//end catch			
		}//end if
		
		if(pDTO.getEmail() != null && !pDTO.getEmail().equals("")) {
			try {
				pDTO.setEmail(de.encrypt(pDTO.getName()));
			} catch (Exception e) {
				e.printStackTrace();
			}//end catch			
		}//end if
		
		
		
		
		
		try {
			//회원 정보 1개
			wmDAO.insertMember(pDTO);
			flag=true;
			//회원 언어 정보 n개
			String[] lang=pDTO.getLanguage();
			if(lang!=null) {
				for(String tempLang : lang) { //언어의 개수대로 반복을 수행 추가
					wmDAO.insertMemberLang(pDTO.getId(), tempLang);
				}//end for
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
		
	}//add member;
	
	public ParamDTO searchMember(String id) {
		ParamDTO pDTO = null;
		WebMemberDAO wmDAO = WebMemberDAO.getInstance();
		
		String key = SiteProperty.spVO.getKey();
		
		
		try {
			pDTO = wmDAO.selectMember(id);
			//이름과 이메일은 암호화 되어있다.
			if(pDTO!=null) {
				//이름과 이메일은 암호화 되어있다. => 복호화 필요
				DataDecryption dd = new DataDecryption(key);
				pDTO.setName(dd.decrypt(pDTO.getName()));
				pDTO.setEmail(dd.decrypt(pDTO.getEmail()));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return pDTO;
	}
	public boolean modifyMember(ParamDTO pDTO) {
		boolean flag =false;
		
		WebMemberDAO wmDAO = WebMemberDAO.getInstance();
		
		String key = SiteProperty.spVO.getKey();
		
		
		DataEncryption de = new DataEncryption(key);
		
		if(pDTO.getEmail() != null && !pDTO.getEmail().equals("")) {
			try {
				pDTO.setEmail(de.encrypt(pDTO.getName()));
			} catch (Exception e) {
				e.printStackTrace();
			}//end catch			
		}//end if
		
		
		try {
			flag = wmDAO.updateMember(pDTO)==1;
			
			
		} catch (SQLException e) {
			
		}
		
		
		return flag;
	}

}
