package day1119;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class dataService {
	public List<imgDTO> searchImg(){
		List<imgDTO> list = null;
		dataDAO dDAO = new dataDAO();
		
		if(new Random().nextBoolean()) {
			list=dDAO.selectImg();
		}//end if
		
		if(list == null) {
			list=new ArrayList<imgDTO>();
		}//end if
		
		
		return list;
	}
}
