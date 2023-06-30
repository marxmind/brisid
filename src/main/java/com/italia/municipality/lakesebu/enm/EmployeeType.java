package com.italia.municipality.lakesebu.enm;

public enum EmployeeType {

	APPOINTED(1, "APPOINTED", "AP"),
	CONTRACTUAL(2, "CONTRACTUAL", "CT");
	
	
	private int id;
	private String name;
	private String code;
	
	public int getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	
	public String getCode() {
		return code;
	}
	
	private EmployeeType(int id, String name, String code) {
		this.id = id;
		this.name = name;
		this.code = code;
	}
	
	public static String nameValue(int id) {
		for(EmployeeType t : EmployeeType.values()) {
			if(t.getId()==id) {
				return t.getName();
			}
		}
		return EmployeeType.APPOINTED.getName();
	}
	public static int idValue(String name) {
		for(EmployeeType t : EmployeeType.values()) {
			if(t.getName().equalsIgnoreCase(name)) {
				return t.getId();
			}
		}
		return EmployeeType.APPOINTED.getId();
	}
	public static EmployeeType value(int id) {
		for(EmployeeType t : EmployeeType.values()) {
			if(t.getId()==id) {
				return t;
			}
		}
		return EmployeeType.APPOINTED;
	}
	public static EmployeeType value(String name) {
		for(EmployeeType t : EmployeeType.values()) {
			if(t.getName().equalsIgnoreCase(name)) {
				return t;
			}
		}
		return EmployeeType.APPOINTED;
	}
	
}