package day1119;

import java.util.ArrayList;
import java.util.List;

public class dataDAO {
	public List<imgDTO> selectImg(){
		List<imgDTO> list = new ArrayList<imgDTO>();
		
		list.add(new imgDTO("daum.png","http://daum.net"));
		list.add(new imgDTO("google.png","http://google.com"));
		list.add(new imgDTO("naver.png","http://naver.com"));
		
		return list;
	}
}
