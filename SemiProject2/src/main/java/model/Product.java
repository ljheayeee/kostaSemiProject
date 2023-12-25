package model;


public class Product {
	private int num;
	private String name;
	private int quantity;
	private int price;
	private String img;
	private String content;
	private String category;
	private String s_email;
	private int count;
	
	
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getS_email() {
		return s_email;
	}
	public void setS_email(String s_email) {
		this.s_email = s_email;
	}
	public Product(int num, String name, int quantity, int price, String img, String content, String category,
			String s_email) {
		super();
		this.num = num;
		this.name = name;
		this.quantity = quantity;
		this.price = price;
		this.img = img;
		this.content = content;
		this.category = category;
		this.s_email = s_email;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int num, String name, int quantity, int price, String img, String content, String category,
			String s_email, int count) {
		super();
		this.num = num;
		this.name = name;
		this.quantity = quantity;
		this.price = price;
		this.img = img;
		this.content = content;
		this.category = category;
		this.s_email = s_email;
		this.count = count;
	}
	@Override
	public String toString() {
		return "Product [num=" + num + ", name=" + name + ", quantity=" + quantity + ", price=" + price + ", img=" + img
				+ ", content=" + content + ", category=" + category + ", s_email=" + s_email + ", count=" + count + "]";
	}
	
	
	
	

}

