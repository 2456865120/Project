package nuc.ss.bean;

import java.io.Serializable;

public class SexCount implements Serializable{
	private String name;
	private Integer value;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getValue() {
		return value;
	}
	public void setValue(Integer value) {
		this.value = value;
	}
	
	public SexCount() {
		super();
	}
	public SexCount(String name, Integer value) {
		super();
		this.name = name;
		this.value = value;
	}
	
}
