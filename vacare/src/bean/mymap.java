package bean;



public class mymap {
	private String name;
	private String tel;
	private String time;
	private String loc;
	private String lat;
	private String lng;
	
	

	public mymap(String name,String location,String tel,String time) {
		this.name = name;
		this.tel = tel;
		this.time = time;
		this.loc = location;
		

		
	}

	public String get_name() {
		return name;
	}
	public String get_tel() {
		return tel;
	}
	public String get_time() {
		return time;
	}
	public String get_loc() {
		return loc;
	}
	public String get_lat() {
		return lat;
	}
	public String get_lng() {
		return lng;
	}
	
	
	
}