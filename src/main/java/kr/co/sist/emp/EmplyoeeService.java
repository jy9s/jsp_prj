package kr.co.sist.emp;

import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class EmplyoeeService {
	private static EmplyoeeService es;
	private EmplyoeeService() {
		
	}
	
	public static EmplyoeeService getInstance() {
		if(es==null) {
			es = new EmplyoeeService();
		}
		return es;
	}
	
	
	public List<DeptDTO> searchAllDept(){
		List<DeptDTO> list = null;
		
		EmployeeDAO empDAO = EmployeeDAO.getInsatnce();
		
		try {
			list = empDAO.selectAllDept();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	public String seacrhEmp(int deptno) {
		JSONObject jsonObj = new JSONObject();
		
		EmployeeDAO eDAO = EmployeeDAO.getInsatnce();
		List<EmpDTO> list = null;
		
		try {
			list = eDAO.selectEmp(deptno);
			JSONArray jsonArr = new JSONArray();
			JSONObject jsonTemp = null;
			SimpleDateFormat sdf= new SimpleDateFormat("yyyy-MM-dd");
			for(EmpDTO eDTO : list) {
				jsonTemp=new JSONObject(); //조회된 레코드 하나를 저장하기 위한 JSONObject;
				jsonTemp.put("empno", eDTO.getEmpno());
				jsonTemp.put("ename", eDTO.getEname());
				jsonTemp.put("job", eDTO.getJob());
				jsonTemp.put("sal", eDTO.getSal());
				//날짜를 JSOnObject으로 직접 넣으면 Error발생 > 문자열로 만들어서 넣음.				
				//jsonTemp.put("hiredate", eDTO.getHiredate());
				jsonTemp.put("hiredate", sdf.format(eDTO.getHiredate()));
				jsonTemp.put("hiredateStr", eDTO.getHirdateStr());
				//JSONObject을 JSONArray에 추가
				jsonArr.add(jsonTemp);				
			}
			//조회된 레코드를 모두 가지고 있는 JSONArray를 JSONObject에 추가
			jsonObj.put("empData", jsonArr);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		if(list==null) {
			list=new ArrayList<EmpDTO>();
		}
		
		//부가적인 정보를 JSONObject 추가
		jsonObj.put("pubDate", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		jsonObj.put("dataLength", list.size());
		jsonObj.put("resultFlag", !list.isEmpty());
		
		return jsonObj.toJSONString();
	}
	
	
}
