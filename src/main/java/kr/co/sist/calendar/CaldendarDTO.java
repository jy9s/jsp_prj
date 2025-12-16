package kr.co.sist.calendar;

public class CaldendarDTO {
	private String paramYear, paramMonth;

	public CaldendarDTO() {
		super();
	}

	

	public CaldendarDTO(String paramYear, String paramMonth) {
		super();
		this.paramYear = paramYear;
		this.paramMonth = paramMonth;
	}



	public String getParamYear() {
		return paramYear;
	}



	public void setParamYear(String paramYear) {
		this.paramYear = paramYear;
	}



	public String getParamMonth() {
		return paramMonth;
	}



	public void setParamMonth(String paramMonth) {
		this.paramMonth = paramMonth;
	}



	@Override
	public String toString() {
		return "CalDTO [paramYear=" + paramYear + ", paramMonth=" + paramMonth + "]";
	}
	
	
	
	
}
