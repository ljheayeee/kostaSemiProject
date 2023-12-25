/**
 * 
 */
package model;


public class Member{
	private String email;
	private String pw;
	private String name;
	private String postcode;
	private String roadAddress;
	private String detailAddress;
	private int type;
	
	
	public Member(String email, String pw, String name, String postcode, String roadAddress, String detailAddress,
			int type) {
		super();
		this.email = email;
		this.pw = pw;
		this.name = name;
		this.postcode = postcode;
		this.roadAddress = roadAddress;
		this.detailAddress = detailAddress;
		this.type = type;
	}
	
	
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getRoadAddress() {
		return roadAddress;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	
	
	@Override
	public String toString() {
		return "Member [email=" + email + ", pw=" + pw + ", name=" + name + ", postcode=" + postcode + ", roadAddress="
				+ roadAddress + ", detailAddress=" + detailAddress + ", type=" + type + "]";
	}
	
	
	
	
}
