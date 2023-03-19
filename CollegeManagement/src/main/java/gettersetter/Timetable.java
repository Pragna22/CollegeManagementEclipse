package gettersetter;

public class Timetable {
	String uid; 
	String ms;
	String mt;
	String tus;
	String tut;
	String ws;
	String wt;
	String ths;
	String tht;
	String fs;
	String ft;
	
	public 	Timetable(String uid, String ms, String mt,String tus, String tut,String ws, String wt,
			String ths, String tht,String fs, String ft) {
		//super();
		this.uid = uid;
		this.ms = ms;
		this.mt= mt;
		this.tus = tus;
		this.tut= tut;
		this.ws = ws;
		this.wt= wt;
		this.ths = ths;
		this.tht= tht;
		this.fs = fs;
		this.ft= ft;
	}
	public String getUid() {
		return uid;
	}
	public void setUid(String uid) {
		this.uid = uid;
	}
	
	
	public String getMs() {
		return ms;
	}
	public void setMs(String ms) {
		this.ms = ms;
	}
	public String getMt() {
		return mt;
	}
	public void setMt(String mt) {
		this.mt = mt;
	}
	
	public String getTus() {
		return tus;
	}
	public void setTus(String tus) {
		this.tus = tus;
	}
	public String getTut() {
		return tut;
	}
	public void setTut(String tut) {
		this.tut = tut;
	}
	
	public String getWs() {
		return ws;
	}
	public void setWs(String ws) {
		this.ws = ws;
	}
	public String getWt() {
		return wt;
	}
	public void setWt(String wt) {
		this.wt = wt;
	}
	
	public String getThs() {
		return ths;
	}
	public void setThs(String ths) {
		this.ths = ths;
	}
	public String getTht() {
		return tht;
	}
	public void setTht(String tht) {
		this.tht = tht;
	}
	
	public String getFs() {
		return fs;
	}
	public void setFs(String fs) {
		this.fs = fs;
	}
	public String getFt() {
		return ft;
	}
	public void setFt(String ft) {
		this.ft = ft;
	}
	public Timetable() {
		super();
	}


}