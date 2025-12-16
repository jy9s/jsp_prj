package day1124;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class UseURLEncoder {
	
	public static void main(String[] args) throws UnsupportedEncodingException {
		String name="홍길동";
		System.out.println(name);
		
		String enName = URLEncoder.encode(name,"UTF-8");
		System.out.println(enName);
		//%ED%99...
		byte[] bytes8859 = enName.getBytes("8859_1");
		
		String deName = URLDecoder.decode(enName,"UTF-8");
		System.out.println(deName);
		
		String str = new String(URLDecoder.decode(enName,"8859_1").getBytes("8859_1"),"UTF-8");
		System.out.println(str);
		
	}//main
	
}//class
