package bean.record;

import java.util.Date;

public class note {
	private int User_id;
	private int Note_id;
	private String Name;
	private String Pic;
	private Date Date;
	private int Type;

	public note(int User_id, int Note_id, String Name, String Pic, Date Date, int Type) {
		this.User_id = User_id;
		this.Note_id = Note_id;
		this.Name = Name;
		this.Pic = Pic;
		this.Date = Date;
		this.Type = Type;
	}
	public int getNote_id() {
		return Note_id;
	}
	public void setNote_id(int note_id) {
		Note_id = note_id;
	}
	public int getUser_id() {
		return User_id;
	}
	public void setUser_id(int user_id) {
		User_id = user_id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPic() {
		return Pic;
	}
	public void setPic(String pic) {
		Pic = pic;
	}
	
	public Date getDate() {
		return Date;
	}
	public void setDate(Date date) {
		Date = date;
	}
	public int getType() {
		return Type;
	}
	public void setType(int type) {
		Type = type;
	}
	
}
