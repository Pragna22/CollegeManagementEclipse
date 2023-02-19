package gettersetter;

public class NoticeB {
	
	String uid;
	String email;
	String notice;
	public NoticeB(String uid,String email,String notice) {
		
		this.uid = uid;
		this.email=email;
		this.notice=notice;
		
	}
	
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
		
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
		
		public String getNotice() {
			return notice;
		}
		public void setNotice(String notice) {
			this.notice = notice;
		}
				

	}