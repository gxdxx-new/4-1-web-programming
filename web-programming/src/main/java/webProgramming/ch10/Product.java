package webProgramming.ch10;

// 상품정보를 제공하는 빈즈 클래스로 jsp에 데이터를 공급
public class Product {
	private String[] productList = {"item1", "item2", "item3", "item4", "item5"};
	private int num1 = 10;
	private int num2 = 20;
	
	public String[] getProductList() {
		return productList;
	}
	public int getNum1() {
		return num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}

}
