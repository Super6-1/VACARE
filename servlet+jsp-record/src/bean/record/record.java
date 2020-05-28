package bean.record;

import java.util.Date;

public class record {
	private int User_id;
	private int Note_id;
	private int Record_id;
	private String name;
	private Date date;
	private String text = null;
	private String pic1 = null;
	private String pic2 = null;
	private String pic3 = null;
	private String pic4 = null;
	
	public record(int User_id, int Note_id, int Record_id, String name, Date date, String text, String pic1, String pic2, String pic3, String pic4) {
		this.setUser_id(User_id);
		this.setNote_id(Note_id);
		this.setRecord_id(Record_id);
		this.setName(name);
		this.setDate(date);
		this.setText(text);
		this.setPic1(pic1);
		this.setPic2(pic2);
		this.setPic3(pic3);
		this.setPic4(pic4);
	}

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

	public int getRecord_id() {
		return Record_id;
	}

	public void setRecord_id(int record_id) {
		Record_id = record_id;
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

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getPic1() {
		return pic1;
	}

	public void setPic1(String pic1) {
		this.pic1 = pic1;
	}

	public String getPic2() {
		return pic2;
	}

	public void setPic2(String pic2) {
		this.pic2 = pic2;
	}

	public String getPic3() {
		return pic3;
	}

	public void setPic3(String pic3) {
		this.pic3 = pic3;
	}

	public String getPic4() {
		return pic4;
	}

	public void setPic4(String pic4) {
		this.pic4 = pic4;
	}
}
