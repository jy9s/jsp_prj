package day1119;

public class imgDTO {
	
	
	
	
	
	private String img, url;

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public imgDTO(String img, String url) {
		super();
		this.img = img;
		this.url = url;
	}

	public imgDTO() {
		super();
	}

	@Override
	public String toString() {
		return "imgDTO [img=" + img + ", url=" + url + "]";
	}
	
}
