package entity;

public class direction {
	private int D_id;
	private String D_name,D_prov,D_from;
	
	public int get_D_id() {
		return D_id;
	}
	public void set_D_id(int D_id) {
		this.D_id = D_id;
	}
	
	
	public String get_D_name() {
		return D_name;
	}
	public void set_D_name(String D_name) {
		this.D_name = D_name;
	}
	
	
	public String get_D_prov() {
		return D_prov;
	}
	public void set_D_prov(String D_prov) {
		this.D_prov = D_prov;
	}
	
	public String get_D_from() {
		return D_from;
	}
	public void setD_from(String D_from) {
		this.D_from = D_from;
	}
	
	
	public direction(int D_id, String D_name, String D_prov, String D_from) {
		super();
		this.D_id = D_id;
		this.D_name = D_name;
		this.D_prov = D_prov;
		this.D_from = D_from;
	}
	
	public direction() {
		super();
	}

}
