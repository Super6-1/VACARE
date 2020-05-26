package bean.record;

import java.util.Date;

public class recorddetails {
	private int User_id;
	private int Note_id;
	private int RecordDetails_id;
	private String name;
	private int dose;
	private Date date;
	private String batch;
	private int state;
	private String site;
	private String place;
	public int getUser_id() {
		return User_id;
	}
	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	public int getNote_id() {
		return Note_id;
	}
	public void setNote_id(int note_id) {
		Note_id = note_id;
	}
	public int getRecordDetails_id() {
		return RecordDetails_id;
	}
	public void setRecordDetails_id(int recordDetails_id) {
		RecordDetails_id = recordDetails_id;
	}
	public int getDose() {
		return dose;
	}
	public void setDose(int dose) {
		this.dose = dose;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getBatch() {
		return batch;
	}
	public void setBatch(String batch) {
		this.batch = batch;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public String getSite() {
		return site;
	}
	public void setSite(String site) {
		this.site = site;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	
	public recorddetails(int User_id, int Note_id, int RecordDetails_id, String name, int dose, Date date, String batch, int state, String site, String place) {
		this.User_id = User_id;
		this.Note_id = Note_id;
		this.RecordDetails_id = RecordDetails_id;
		this.name = name;
		this.batch = batch;
		this.dose = dose;
		this.state = state;
		this.date = date;
		this.site = site;
		this.place = place;
	}
}