package webProgramming.ch07;

public class LoginInfo {
	String id;
	String password;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean isvalid() {
		return id.equals("guest") && password.equals("1234");
	}

}
