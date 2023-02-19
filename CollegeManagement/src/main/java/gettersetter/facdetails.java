package gettersetter;

public class facdetails {
		int yrs;
		String qual;
		String email;
		String phn_no;
		public int getYrs() {
			return yrs;
		}
		public facdetails(int yrs, String qual, String email, String phn_no) {
			
			this.yrs = yrs;
			this.qual = qual;
			this.email = email;
			this.phn_no = phn_no;
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
			public void setYrs(int yrs) {
			this.yrs = yrs;
		}
		
		

	}



