package gettersetter;

public class details {
	String fname;
	String mname;
	String address;
	String dept;
	String phn;
	String b_group;
	String email;
	String uid;

	public details() {
		super();
	}
	//String uid;
	public details( String fname, String mname, String address, String email,  String phn, String dept, String b_group,String uid) {
		this.fname = fname;
		this.mname = mname;
		this.address = address;
		this.email = email;
		this.phn=phn;
		this.dept = dept;
		this.b_group = b_group;
		this.uid=uid;
		//this.uid=uid;
		
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhn() {
		return phn;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	public void setPhn(String phn) {
		this.phn = phn;
	}

	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
		public String getBgroup() {
		return b_group;
	}
	public void setBgroup(String b_group) {
		this.b_group = b_group;
	}
	/*public String getUID() {
		return uid;
	}
	public void setUID(String uid) {
		this.uid = uid;
	}*/
}
