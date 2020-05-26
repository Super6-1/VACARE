package bean.record;

public class stdvac {
	private int User_id;
	private int Note_id;
	private int Sta_id;
	private String Name;
	private int Dose;
	private int Internal;
	private String Site;
	private String Remark;
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
	public int getSta_id() {
		return Sta_id;
	}
	public void setSta_id(int sta_id) {
		Sta_id = sta_id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String Name) {
		Name = Name;
	}
	public int getDose() {
		return Dose;
	}
	public void setDose(int Dose) {
		Dose = Dose;
	}
	public int getInternal() {
		return Internal;
	}
	public void setInternal(int Internal) {
		Internal = Internal;
	}
	public String getSite() {
		return Site;
	}
	public void setSite(String Site) {
		Site = Site;
	}
	public String getRemark() {
		return Remark;
	}
	public void setRemark(String Remark) {
		Remark = Remark;
	}
	
	public stdvac(int User_id, int Note_id, int Sta_id, String Name, int Dose, int Internal, String Site, String Remark) {
		this.User_id = User_id;
		this.Note_id = Note_id;
		this.Sta_id = Sta_id;
		this.Name = Name;
		this.Dose = Dose;
		this.Internal = Internal;
		this.Site = Site;
		this.Remark = Remark;
	}
}
