package bean;

public class vaccine {
	private String vaccine_id,V_Name,V_Time,V_Internal,V_Attention,V_Adaption,V_Reaction;
	
	public vaccine(String vaccine_id, String v_Name, String v_Time, String v_Internal, String v_Attention,
			String v_Adaption, String v_Reaction) {
		super();
		this.vaccine_id = vaccine_id;
		V_Name = v_Name;
		V_Time = v_Time;
		V_Internal = v_Internal;
		V_Attention = v_Attention;
		V_Adaption = v_Adaption;
		V_Reaction = v_Reaction;
	}

	public String getVaccine_id() {
		return vaccine_id;
	}

	public void setVaccine_id(String vaccine_id) {
		this.vaccine_id = vaccine_id;
	}

	public String getV_Name() {
		return V_Name;
	}

	public void setV_Name(String v_Name) {
		V_Name = v_Name;
	}

	public String getV_Time() {
		return V_Time;
	}

	public void setV_Time(String v_Time) {
		V_Time = v_Time;
	}

	public String getV_Internal() {
		return V_Internal;
	}

	public void setV_Internal(String v_Internal) {
		V_Internal = v_Internal;
	}

	public String getV_Attention() {
		return V_Attention;
	}

	public void setV_Attention(String v_Attention) {
		V_Attention = v_Attention;
	}

	public String getV_Adaption() {
		return V_Adaption;
	}

	public void setV_Adaption(String v_Adaption) {
		V_Adaption = v_Adaption;
	}

	public String getV_Reaction() {
		return V_Reaction;
	}

	public void setV_Reaction(String v_Reaction) {
		V_Reaction = v_Reaction;
	}
	
	

}
