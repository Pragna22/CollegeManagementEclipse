package gettersetter;

public class facdetails {
		String yrs;
		String qual;
		String email;
		String phn_no;
		String uid;
		public facdetails(String yrs, String qual, String email, String phn_no, String uid) {
			
			this.yrs = yrs;
			this.qual = qual;
			this.email = email;
			this.phn_no = phn_no;
			this.uid=uid;
		}
		public String getQual() {
			return qual;
		}
		public void setQual(String qual) {
			this.qual = qual;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getPhn() {
			return phn_no;
		}
		public void setPhn(String phn_no) {
			this.phn_no = phn_no;
		}
		public String getYrs() {
			return yrs;
		}
	
			public void setYrs(String yrs) {
			this.yrs = yrs;
		}
			
			public String getUid() {
				return uid;
			}
			public void setUid(String uid) {
				this.uid = uid;
			}

	}



