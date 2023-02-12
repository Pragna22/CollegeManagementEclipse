package gettersetter;

public class details {
	int sem;
	String croll;
	String email;
	String dept;
	int uroll;
	public int getSem() {
		return sem;
	}
	public details(int sem, String croll, String email, String dept, int uroll) {
		
		this.sem = sem;
		this.croll = croll;
		this.email = email;
		this.dept = dept;
		this.uroll = uroll;
	}
	public String getCroll() {
		return croll;
	}
	public void setCroll(String croll) {
		this.croll = croll;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public int getUroll() {
		return uroll;
	}
	public void setUroll(int uroll) {
		this.uroll = uroll;
	}
	public void setSem(int sem) {
		this.sem = sem;
	}
	
	

}
